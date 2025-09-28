// Type alias for JSON objects
typedef Json = Map<String, dynamic>;

// Abstract class defining a contract for converting objects to JSON
abstract class JsonConvertable<T> {
  Json toJson(); // Must be implemented by subclasses
}

// Abstract class defining a contract for returning child objects
abstract class Parent {
  getChildsList(); // Must be implemented by subclasses
}

// Named objects have a name, can convert to JSON, and may have children
abstract class Named implements JsonConvertable, Parent {
  final String name; // Name of the object

  const Named({
    required final this.name,
  });
}

// Base class for celestial objects like stars, planets, moons, and galaxies
abstract class CelestialObject implements Named {
  @override
  final String name; // Object's name
  final double mass; // Mass of the object
  final double radius; // Radius of the object

  const CelestialObject({
    required final this.name,
    required final this.mass,
    required final this.radius,
  });
}

// Represents a galaxy containing star systems
class Galaxy extends CelestialObject {
  final String color; // Galaxy color
  final List<StarSystem> starSystems; // List of star systems

  const Galaxy({
    required final String name,
    required final double mass,
    required final double radius,
    required final this.color,
    required final this.starSystems,
  }) : super(mass: mass, name: name, radius: radius);

  // Creates a Galaxy object from JSON
  @override
  factory Galaxy.fromJson(Json json) {
    return Galaxy(
      name: json['name'],
      mass: json['mass'],
      radius: json['radius'],
      color: json['color'],
      starSystems: (json['star-systems'] as List)
          .map((rawStarSystem) => StarSystem.fromJson(rawStarSystem))
          .toList(),
    );
  }

  // Converts Galaxy object to JSON
  @override
  Json toJson() => {
        'name': name,
        'mass': mass,
        'radius': radius,
        'color': color,
        'star-systems':
            starSystems.map((starSystem) => starSystem.toJson()).toList(),
      };

  // Returns the list of child star systems
  @override
  List<StarSystem> getChildsList() => starSystems;
}

// Represents a star system containing a star and planets
class StarSystem implements Named {
  @override
  final String name; // Name of the system
  final Star star; // Central star
  final List<Planet> planets; // List of planets

  const StarSystem({
    required final this.name,
    required final this.star,
    required final this.planets,
  });

  // Creates a StarSystem from JSON
  factory StarSystem.fromJson(Json json) {
    List<Planet> planets = [];
    for (var currentRaw in json['planets']) {
      Planet current = Planet.fromJson(currentRaw);
      planets.add(current);
    }
    return StarSystem(
      name: json["name"],
      star: Star.fromJson(json["star"]),
      planets: planets,
    );
  }

  // Converts StarSystem to JSON
  @override
  Json toJson() => {
        "name": name,
        "star": star.toJson(),
        "planets": planets.map((planet) => planet.toJson()).toList(),
      };

  // Returns planets as children
  @override
  List<Planet> getChildsList() => planets;
}

// Represents a star
class Star extends CelestialObject {
  final double luminescence; // Brightness of the star

  const Star({
    required final String name,
    required final double mass,
    required final double radius,
    required final this.luminescence,
  }) : super(mass: mass, name: name, radius: radius);

  // Creates Star from JSON
  @override
  factory Star.fromJson(Json json) => Star(
        name: json['name'],
        mass: json['mass'],
        radius: json['radius'],
        luminescence: json['luminescence'],
      );

  // Converts Star to JSON
  @override
  Json toJson() => {
        'name': name,
        'mass': mass,
        'radius': radius,
        'luminescence': luminescence,
      };

  // Stars have no child objects
  @override
  getChildsList() => Exception("No Child");
}

// Represents a planet
class Planet extends CelestialObject {
  final bool isPopulated; // Whether planet has life
  final List<Moon> moons; // Moons orbiting the planet

  const Planet({
    required final String name,
    required final double mass,
    required final double radius,
    required final this.isPopulated,
    required final this.moons,
  }) : super(mass: mass, name: name, radius: radius);

  // Creates Planet from JSON
  @override
  factory Planet.fromJson(Json json) {
    List<Moon> moons = [];
    for (var moon in json['moons']) {
      Moon current = Moon.fromJson(moon);
      moons.add(current);
    }
    return Planet(
      name: json['name'],
      mass: json['mass'],
      radius: json['radius'],
      isPopulated: json['isPopulated'],
      moons: moons,
    );
  }

  // Converts Planet to JSON
  @override
  Json toJson() => {
        'name': name,
        'mass': mass,
        'radius': radius,
        'isPopulated': isPopulated,
        'moons': moons.map((moon) => moon.toJson()).toList(),
      };

  // Returns moons as children
  @override
  List<Moon> getChildsList() => moons;
}

// Represents a moon
class Moon extends CelestialObject {
  const Moon({
    required final String name,
    required final double mass,
    required final double radius,
  }) : super(mass: mass, name: name, radius: radius);

  // Creates Moon from JSON
  factory Moon.fromJson(Json json) => Moon(
        name: json['name'],
        mass: json['mass'],
        radius: json['radius'],
      );

  // Converts Moon to JSON
  @override
  Json toJson() => {
        'name': name,
        'mass': mass,
        'radius': radius,
      };

  // Moons have no children
  @override
  getChildsList() => Exception("No Child");
}
