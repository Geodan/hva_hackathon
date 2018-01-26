#!/usr/bin/env bash

if [[ $# -eq 0 ]] ; then
    echo "please supply the SensorThings host, for example: localhost:8080"
    exit 1
fi

HOST=$1


# CREATE SENSORS


curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"temperature sensor",
  "description":"temperature sensor",
  "encodingType":"application/pdf",
  "metadata":"https://www.sparkfun.com/datasheets/Sensors/Temperature/DHT22.pdf"
}' "$HOST/v1.0/Sensors"
	
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"Leaf wetness sensor",
  "description":"Leaf wetness sensor",
  "encodingType":"application/pdf",
  "metadata":"https://www.davisnet.com/product/leaf-wetness-sensor-vantage-pro-and-vantage-pro2/"
}' "$HOST/v1.0/Sensors"
	
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"Light sensor",
  "description":"Light sensor",
  "encodingType":"application/pdf",
  "metadata":"http://www.verdict-shop.com/index.php/par-licht-sensor-1.html"
}' "$HOST/v1.0/Sensors"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"Humidity sensor",
  "description":"Humidity sensor - measures humidity",
  "encodingType":"application/pdf",
  "metadata":"http://www.mouser.com/ds/2/682/Sensirion_Humidity_Sensors_SHT3x_Datasheet_digital-971521.pdf"
}' "$HOST/v1.0/Sensors"
	
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"Rain gauge",
  "description":"Rain gauge - measures rainfall",
  "encodingType":"application/pdf",
  "metadata":"http://www.mouser.com/ds/2/682/Sensirion_Humidity_Sensors_SHT3x_Datasheet_digital-971521.pdf"
}' "$HOST/v1.0/Sensors"
	
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"Wind vane",
  "description":"The wind vane indicates the direction that the wind is blowing.",
  "encodingType":"application/pdf",
  "metadata":"http://www.peetbros.com/shop/item.aspx?itemid=137"
}' "$HOST/v1.0/Sensors"
	
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"Wind gust sensor",
  "description":"wind gust sensor",
  "encodingType":"application/pdf",
  "metadata":"https://dyacon.com/dyacon-wind-sensor-now-detecting-wind-gust/"
}' "$HOST/v1.0/Sensors"
	
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"Wind speed sensor (Anemometer)",
  "description":"wind speed sensor",
  "encodingType":"application/pdf",
  "metadata":"https://www.adafruit.com/product/1733"
}' "$HOST/v1.0/Sensors"
	
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{      
  "name":"SMEC 300 Soil Moisture sensor",
  "description":"SMEC 300 Soil Moisture sensor",
  "encodingType":"application/pdf",
  "metadata":"http://www.specmeters.com/weather-monitoring/sensors-and-accessories/sensors/soil-moisture-sensors/smec300/"
} ' "$HOST/v1.0/Sensors"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{   
    "name": "Ultimate Parking Sensor 5000",
    "description": "Can do everything",
    "encodingType": "application/pdf",
    "metadata": "http://parking-sensors.hyt.com/doc/hyt323-04-WirelessDisplay.pdf"
} ' "$HOST/v1.0/Sensors"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
    "name": "Hall sensor",
    "description": "SensorUp Tempomatic 2000",
    "encodingType": "application/pdf",
    "metadata": "Calibration date:  Jan 1, 2014"
} ' "$HOST/v1.0/Sensors"

# CREATE OBSERVED PROPERTIES


curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"Leaf Wetness",
  "description":"Leaf Wetness description",
  "definition":"http://www.qudt.org/qudt/owl/1.0.0/quantity/Instances.html#Leaf Wetness"
}' "$HOST/v1.0/ObservedProperties"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"PAR Light",
  "description":"Photosynthetically active radiation, often abbreviated PAR, designates the spectral range (wave band) of solar radiation from 400 to 700 nanometers that photosynthetic organisms are able to use in the process of photosynthesis",
  "definition":"http://www.qudt.org/qudt/owl/1.0.0/quantity/Instances.html#PAR"
}' "$HOST/v1.0/ObservedProperties"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"Humidity",
  "description":"Humidity is the amount of water vapor present in the air. ",
  "definition":"http://www.qudt.org/qudt/owl/1.0.0/quantity/Instances.html#Humidity"
}' "$HOST/v1.0/ObservedProperties"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d ' {
  "name":"Temperature",
  "description":"Temperature (symbol T) is a physical quantity, measurement of hot or cold.",
  "definition":"http://www.qudt.org/qudt/owl/1.0.0/quantity/Instances.html#Temperature"
}' "$HOST/v1.0/ObservedProperties"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"Precipitation",
  "description":"Measure the amount of precipitation over a set period of time.",
  "definition":"https://en.wikipedia.org/wiki/Precipitation"
}' "$HOST/v1.0/ObservedProperties"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"Wind Direction",
  "description":"The direction from which the wind blows",
  "definition":"https://en.wikipedia.org/wiki/Wind_direction"
}' "$HOST/v1.0/ObservedProperties"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"Wind Gust",
  "description":"Wind Gust description",
  "definition":"https://graphical.weather.gov/definitions/defineWindGust.html"
}' "$HOST/v1.0/ObservedProperties"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d ' {
  "name":"Wind Speed",
  "description":"Wind Speed description",
  "definition":"http://www.qudt.org/qudt/owl/1.0.0/quantity/Instances.html#Wind Speed"
}' "$HOST/v1.0/ObservedProperties"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"Volumetric Water Content",
  "description":"Volumetric Water Content",
  "definition":"https://en.wikipedia.org/wiki/Water_content"
}' "$HOST/v1.0/ObservedProperties"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{  
  "name":"Electrical Conductivity",
  "description":"Electrical Conductivity",
  "definition":"https://en.wikipedia.org/wiki/Electrical_resistivity_and_conductivity"
}' "$HOST/v1.0/ObservedProperties"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"Open parking spots",
  "description": "Number of open parking spots",
  "definition": "http://www.qudt.org/qudt/owl/1.0.0/quantity/Instances.html#Parking"
}' "$HOST/v1.0/ObservedProperties"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
  "name":"parking open",
  "description": "is the parking currently open",
  "definition": "http://www.qudt.org/qudt/owl/1.0.0/quantity/Instances.html#Parking"
}' "$HOST/v1.0/ObservedProperties"

curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{
    "name": "open",
    "definition": "http://www.qudt.org/qudt/owl/1.0.0/quantity/Instances.html#open",
    "description": "Is the door open true or false"
}' "$HOST/v1.0/ObservedProperties"
	
# CREATE THINGS AND LOCATIONS


# ----------------------------------------
# Create ArenA Weather Station Thing(1) Location(1)
# ----------------------------------------
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json"  -d '{
  "name": "arena_weather_1",
  "description": "Weatherstation Arena",
  "properties": {
	"type": "weather",
	"equipmentID": "270008637",
	"updateInterval": "60"
  },
  "Locations": [
	{
	  "name": "Amsterdam ArenA",
	  "description": "Center of Amsterdam ArenA",
	  "encodingType": "application/vnd.geo+json",
	  "location": {
		"type": "Point",
		"coordinates": [
		  4.941964,
		  52.314371
		]
	  }
	}
  ],
  "Datastreams": [
	{
	  "name": "arena_weather_1_leaf_wetness",
	  "unitOfMeasurement": {
		"name": "Wetness",
		"symbol": "",
		"definition": "http://unitsofmeasure.org/ucum.html#para-50"
	  },
	  "description": "Leaf Wetness - range from 0 (completely dry) to 15 (saturated)",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 1
	  },
	  "Sensor": {
		"@iot.id": 2
	  }
	},
	{
	  "name": "arena_weather_1_par_light",
	  "unitOfMeasurement": {
		"name": "PAR",
		"symbol": "µmol/m²/sec",
		"definition": "http://www.qudt.org/qudt/owl/1.0.0/unit/Instances.html#PAR"
	  },
	  "description": "PAR Light from ArenA weather station",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 2
	  },
	  "Sensor": {
		"@iot.id": 3
	  }
	},
	{
	  "name": "arena_weather_1_humidity",
	  "unitOfMeasurement": {
		"name": "Humidity",
		"symbol": "%",
		"definition": "http://www.qudt.org/qudt/owl/1.0.0/unit/Instances.html#Humidity"
	  },
	  "description": "Humidity from ArenA weather station",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 3
	  },
	  "Sensor": {
		"@iot.id": 4
	  }
	},
	{
	  "name": "arena_weather_1_temperature",
	  "unitOfMeasurement": {
		"name": "Degrees Celsius",
		"symbol": "°C",
		"definition": "http://www.qudt.org/qudt/owl/1.0.0/unit/Instances.html#DegreeCelsius"
	  },
	  "description": "Temperature from ArenA weather station",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 4
	  },
	  "Sensor": {
		"@iot.id": 1
	  }
	},
	{
	  "name": "arena_weather_1_rainfall",
	  "unitOfMeasurement": {
		"name": "Millimeter",
		"symbol": "mm",
		"definition": "http://www.qudt.org/qudt/owl/1.0.0/unit/Instances.html#Millimeter"
	  },
	  "description": "Rainfall from ArenA weather station",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 5
	  },
	  "Sensor": {
		"@iot.id": 5
	  }
	},
	{
	  "name": "arena_weather_1_wind_direction",
	  "unitOfMeasurement": {
		"name": "Degrees",
		"symbol": "°",
		"definition": "http://www.qudt.org/qudt/owl/1.0.0/unit/Instances.html#Degrees"
	  },
	  "description": "Wind Direction from ArenA weather station",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 6
	  },
	  "Sensor": {
		"@iot.id": 6
	  }
	},
	{
	  "name": "arena_weather_1_wind_gust",
	  "unitOfMeasurement": {
		"name": "Kilometres per hour",
		"symbol": "km/hr",
		"definition": "http://www.qudt.org/qudt/owl/1.0.0/unit/Instances.html#kmhr"
	  },
	  "description": "Wind Gust from ArenA weather station",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 7
	  },
	  "Sensor": {
		"@iot.id": 7
	  }
	},
	{
	  "name": "arena_weather_1_wind_speed",
	  "unitOfMeasurement": {
		"name": "Kilometres per hour",
		"symbol": "km/hr",
		"definition": "http://www.qudt.org/qudt/owl/1.0.0/unit/Instances.html#kmhr"
	  },
	  "description": "Wind Speed from ArenA weather station",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 8
	  },
	  "Sensor": {
		"@iot.id": 8
	  }
	}
  ]
}' "$HOST/v1.0/Things"

# ----------------------------------------
# Create Bodemsensor 4cm Things(2) Locations(2)
# ----------------------------------------
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json"  -d '{
  "name": "arena_soil_1",
  "description": "Bodemsensor 04cm",
  "properties": {
	"type": "soil",
	"equipmentID": "0059AC0000173371",
	"updateInterval": "60"
  },
  "Locations": [
	{
	  "name": "Amsterdam ArenA",
	  "description": "Amsterdam ArenA",
	  "encodingType": "application/vnd.geo+json",
	  "location": {
		"type": "Point",
		"coordinates": [
		  4.941964,
		  52.314371
		]
	  }
	}
  ],
  "Datastreams": [
	{
	  "name": "arena_soil_1_temperature",
	  "unitOfMeasurement": {
		"name": "Degrees Celsius",
		"symbol": "°C",
		"definition": "http://www.qudt.org/qudt/owl/1.0.0/unit/Instances.html#DegreeCelsius"
	  },
	  "description": "Temperature from ArenA bodem sensor 04cm - Port A",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 4
	  },
	  "Sensor": {
		"@iot.id": 1
	  }
	},
	{
	  "name": "arena_soil_1_water",
	  "unitOfMeasurement": {
		"name": "Volumetric Water Content",
		"symbol": "% VWC",
		"definition": "https://en.wikipedia.org/wiki/Water_content"
	  },
	  "description": "Volumetric water content (%) 04cm - Port B",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 9
	  },
	  "Sensor": {
		"@iot.id": 9
	  }
	},
	{
	  "name": "arena_soil_1_temperature",
	  "unitOfMeasurement": {
		"name": "Degrees Celsius",
		"symbol": "°C",
		"definition": "http://www.qudt.org/qudt/owl/1.0.0/unit/Instances.html#DegreeCelsius"
	  },
	  "description": "Temperature from ArenA bodem sensor - 04cm - port C",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 4
	  },
	  "Sensor": {
		"@iot.id": 1
	  }
	},
	{
	  "name": "arena_soil_1_ec",
	  "unitOfMeasurement": {
		"name": "Electrical Conductivity (EC)",
		"symbol": "mS/cm",
		"definition": "https://en.wikipedia.org/wiki/Electrical_resistivity_and_conductivity"
	  },
	  "description": "Electrical Conductivity from ArenA bodem sensor - 04cm - port D",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 10
	  },
	  "Sensor": {
		"@iot.id": 9
	  }
	}
  ]
}' "$HOST/v1.0/Things"

# ----------------------------------------
# Create Bodemsensor 4cm Noord-OOST Things(3) Locations(3)
# ----------------------------------------
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json"  -d '{
  "name": "arena_soil_2",
  "description": "Bodemsensor 04cm Noord-Oost",
  "properties": {
	"type": "soil",
	"equipmentID": "0059AC0000173340",
	"updateInterval": "60"
  },
  "Locations": [
	{
	  "name": "Amsterdam ArenA - Noord-Oost",
	  "description": "Amsterdam ArenA - Noord-Oost",
	  "encodingType": "application/vnd.geo+json",
	  "location": {
		"type": "Point",
		"coordinates": [
		  4.941964,
		  52.314371
		]
	  }
	}
  ],
  "Datastreams": [
	{
	  "name": "arena_soil_2_temperature",
	  "unitOfMeasurement": {
		"name": "Degrees Celsius",
		"symbol": "°C",
		"definition": "http://www.qudt.org/qudt/owl/1.0.0/unit/Instances.html#DegreeCelsius"
	  },
	  "description": "Temperature from ArenA bodem sensor 4cm - Port A",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 4
	  },
	  "Sensor": {
		"@iot.id": 1
	  }
	},
	{
	  "name": "arena_soil_2_water",
	  "unitOfMeasurement": {
		"name": "Volumetric Water Content",
		"symbol": "% VWC",
		"definition": "https://en.wikipedia.org/wiki/Water_content"
	  },
	  "description": "Volumetric water content (%) 4cm - Port B",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 9
	  },
	  "Sensor": {
		"@iot.id": 9
	  }
	},
	{
	  "name": "arena_soil_2_ec",
	  "unitOfMeasurement": {
		"name": "Electrical Conductivity (EC)",
		"symbol": "mS/cm",
		"definition": "https://en.wikipedia.org/wiki/Electrical_resistivity_and_conductivity"
	  },
	  "description": "Electrical Conductivity from ArenA bodem sensor - 4cm - port D",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 10
	  },
	  "Sensor": {
		"@iot.id": 9
	  }
	}
  ]
}' "$HOST/v1.0/Things"

# ----------------------------------------
# Create Bodemsensor 4cm Zuid-West Things(4) Locations(4)
# ----------------------------------------
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json"  -d '{
  "name": "arena_soil_3",
  "description": "Bodemsensor 04cm Zuid-West",
  "properties": {
	"type": "soil",
	"equipmentID": "0059AC000017F1E0",
	"updateInterval": "60"
  },
  "Locations": [
	{
	  "name": "Amsterdam ArenA Zuid-West",
	  "description": "Amsterdam ArenA Zuid-West",
	  "encodingType": "application/vnd.geo+json",
	  "location": {
		"type": "Point",
		"coordinates": [
		  4.941964,
		  52.314371
		]
	  }
	}
  ],
  "Datastreams": [
	{
	  "name": "arena_soil_3_temperature",
	  "unitOfMeasurement": {
		"name": "Degrees Celsius",
		"symbol": "°C",
		"definition": "http://www.qudt.org/qudt/owl/1.0.0/unit/Instances.html#DegreeCelsius"
	  },
	  "description": "Temperature from ArenA bodem sensor 4cm - Port A",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 4
	  },
	  "Sensor": {
		"@iot.id": 1
	  }
	},
	{
	  "name": "arena_soil_3_water",
	  "unitOfMeasurement": {
		"name": "Volumetric Water Content",
		"symbol": "% VWC",
		"definition": "https://en.wikipedia.org/wiki/Water_content"
	  },
	  "description": "Volumetric water content (%) 4cm - Port B",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 9
	  },
	  "Sensor": {
		"@iot.id": 9
	  }
	},
	{
	  "name": "arena_soil_3_ec",
	  "unitOfMeasurement": {
		"name": "Electrical Conductivity (EC)",
		"symbol": "mS/cm",
		"definition": "https://en.wikipedia.org/wiki/Electrical_resistivity_and_conductivity"
	  },
	  "description": "Electrical Conductivity from ArenA bodem sensor - 4cm - port D",
	  "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
	  "ObservedProperty": {
		"@iot.id": 10
	  },
	  "Sensor": {
		"@iot.id": 9
	  }
	}
  ]
}' "$HOST/v1.0/Things"

# ----------------------------------------
# Create Parking 1 Things(5) Locations(5)
# ----------------------------------------
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json"  -d '{
    "name": "parking_zo_p01_arena",
    "description": "Parking Amsterdam - ZO-P01 ArenA",
    "properties": {
        "id": "901000077_parkinglocation",
        "type": "parking",
        "source": "http://opd.it-t.nl/data/parkingdata/v1/amsterdam/dynamic/901000077_parkinglocation.json",
        "pr": false,
        "parkingSpots": 285,
        "maxDayRate ": 24.50,
        "heightClearance ": 2.25,
        "driveOut24h ": true,
        "chargingStations": 0,
        "phone": "",
        "info": "",
        "rate": {
          "mo": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1.00 }
            ],
          "tu": [ 
                { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1.00 }
            ],
          "we": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1.00 }
            ],
          "th": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1.00 }
            ],
          "fr": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1.00 }
            ],
          "sa": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1.00 }
            ],
          "su": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1.00 }
            ],
          "payPerInterval": true
        },
        "openingHours": {
          "mo": [
            { "start": "00:00", "end": "23:59" }
          ],
          "tu": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "we": 
          [
          { "start": "00:00", "end": "23:59" }
          ],
          "th": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "fr": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "sa": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "su": 
          [
            { "start": "00:00", "end": "23:59" }
          ]
        }
    },
    "Locations": [{
        "name": "Burgemeester Stramanweg 130",
        "description": "Parking at Burgemeester Stramanweg 130, Amsterdam",
        "encodingType": "application/vnd.geo+json",
        "location": {
            "type": "Point",
            "coordinates": [4.9399303, 52.3135859]
        }
    }],
    "Datastreams": [{
        "name": "parking_zo_p01_arena_spots",
        "unitOfMeasurement": {
            "name": "Count",
            "symbol": "",
            "definition": ""
        },
        "description": "Parking ZO-P01 ArenA Amsterdam, open spots",
        "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
        "ObservedProperty": {
            "@iot.id": 11
        },
        "Sensor": {
            "@iot.id": 10
        }
    },
    {
        "name": "parking_zo_p01_arena_open",
        "unitOfMeasurement": {
            "name": "is open",
            "symbol": "",
            "definition": ""
        },
        "description": "Parking ZO-P01 ArenA Amsterdam, is open",
        "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_TruthObservation",
        "ObservedProperty": {
            "@iot.id": 12
        },
        "Sensor": {
            "@iot.id": 10
        }
    }]
}' "$HOST/v1.0/Things"

# ----------------------------------------
# Create Parking 2 Things(6) Locations(6)
# ----------------------------------------
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json"  -d '{
    "name": "parking_zo_p02_arena_terrein",
    "description": "Parking Amsterdam - ZO-P02 Arena terrein",
    "properties": {
        "id": "900000123_parkinglocation",
        "type": "parking",
        "source": "http://opd.it-t.nl/data/parkingdata/v1/amsterdam/dynamic/900000123_parkinglocation.json",
        "pr": false,
        "parkingSpots": 1200,
        "maxDayRate ": 10.00,
        "heightClearance ": -1,
        "driveOut24h ": true,
        "chargingStations": 0,
        "phone": "",
        "info": "",
        "rate": {
          "mo": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 1, "cost": 10.00 }
            ],
          "tu": [ 
                { "range": { "start": "00:00", "end": "23:59" }, "interval": 1, "cost": 10.00 }
            ],
          "we": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 1, "cost": 10.00 }
            ],
          "th": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 1, "cost": 10.00 }
            ],
          "fr": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 1, "cost": 10.00 }
            ],
          "sa": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 1, "cost": 10.00 }
            ],
          "su": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 1, "cost": 10.00 }
            ],
          "payPerInterval": true
        },
        "openingHours": {
          "mo": [
            { "start": "07:00", "end": "23:59" }
          ],
          "tu": 
          [
            { "start": "07:00", "end": "23:59" }
          ],
          "we": 
          [
          { "start": "07:00", "end": "23:59" }
          ],
          "th": 
          [
            { "start": "07:00", "end": "23:59" }
          ],
          "fr": 
          [
            { "start": "07:00", "end": "23:59" }
          ],
          "sa": 
          [
            { "start": "07:00", "end": "23:59" }
          ],
          "su": 
          [
            { "start": "07:00", "end": "23:59" }
          ]
        }
    },
    "Locations": [{
        "name": "Borchlandweg 1",
        "description": "Parking at Borchlandweg 1, Amsterdam",
        "encodingType": "application/vnd.geo+json",
        "location": {
            "type": "Point",
            "coordinates": [4.9305687, 52.3162056]
        }
    }],
    "Datastreams": [{
        "name": "parking_zo_p02_arena_terrein_spots",
        "unitOfMeasurement": {
            "name": "Count",
            "symbol": "",
            "definition": ""
        },
        "description": "Parking ZO-P02 Arena terrein Amsterdam, open spots",
        "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
        "ObservedProperty": {
            "@iot.id": 11
        },
        "Sensor": {
            "@iot.id": 10
        }
    },
    {
        "name": "parking_zo_p02_arena_terrein_open",
        "unitOfMeasurement": {
            "name": "is open",
            "symbol": "",
            "definition": ""
        },
        "description": "Parking ZO-P02 Arena terrein Amsterdam, is open",
        "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_TruthObservation",
        "ObservedProperty": {
            "@iot.id": 12
        },
        "Sensor": {
            "@iot.id": 10
        }
    }]
}' "$HOST/v1.0/Things"

# ----------------------------------------
# Create Parking 3 Things(7) Locations(7)
# ----------------------------------------
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json"  -d '{
    "name": "parking_zo_p03_mikado",
    "description": "Parking Amsterdam - ZO-P03 Mikado",
    "properties": {
        "id": "900000079_parkinglocation",
        "type": "parking",
        "source": "http://opd.it-t.nl/data/parkingdata/v1/amsterdam/dynamic/900000079_parkinglocation.json",
        "pr": false,
        "parkingSpots": 306,
        "maxDayRate ": 24.50,
        "heightClearance ": 1.90,
        "driveOut24h ": true,
        "chargingStations": 0,
        "phone": "",
        "info": "Concerten en voetbalwedstrijden: €12,00",
        "rate": {
          "mo": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "tu": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "we": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "th": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "fr": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "sa": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "su": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "payPerInterval": true
        },
        "openingHours": {
          "mo": [
            { "start": "00:00", "end": "23:59" }
          ],
          "tu": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "we": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "th": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "fr": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "sa": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "su": 
          [
            { "start": "00:00", "end": "23:59" }
          ]
        }
    },
    "Locations": [{
        "name": "De Entree 228",
        "description": "Parking at De Entree 228, Amsterdam",
        "encodingType": "application/vnd.geo+json",
        "location": {
            "type": "Point",
            "coordinates": [4.941327, 52.310307]
        }
    }],
    "Datastreams": [{
        "name": "parking_zo_p03_mikado_spots",
        "unitOfMeasurement": {
            "name": "Count",
            "symbol": "",
            "definition": ""
        },
        "description": "Parking ZO-P03 Mikado Amsterdam, open spots",
        "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
        "ObservedProperty": {
            "@iot.id": 11
        },
        "Sensor": {
            "@iot.id": 10
        }
    },
    {
        "name": "parking_zo_p03_mikado_open",
        "unitOfMeasurement": {
            "name": "is open",
            "symbol": "",
            "definition": ""
        },
        "description": "Parking ZO-P03 Mikado Amsterdam, is open",
        "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_TruthObservation",
        "ObservedProperty": {
            "@iot.id": 12
        },
        "Sensor": {
            "@iot.id": 10
        }
    }]
}' "$HOST/v1.0/Things"

# ----------------------------------------
# Create Parking 4 Things(8) Locations(8)
# ----------------------------------------
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json"  -d '{
    "name": "parking_zo_p04_villa_arena",
    "description": "Parking Amsterdam - ZO-P04 Villa ArenA",
    "properties": {
        "id": "900000080_parkinglocation",
        "type": "parking",
        "source": "http://opd.it-t.nl/data/parkingdata/v1/amsterdam/dynamic/900000080_parkinglocation.json",
        "pr": false,
        "parkingSpots": 432,
        "maxDayRate ": 24.50,
        "heightClearance ": 1.90,
        "driveOut24h ": true,
        "chargingStations": -1,
        "phone": "020 563 2970",
        "info": "Concerten en voetbalwedstrijden: €12,00",
        "rate": {
          "mo": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "tu": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "we": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "th": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "fr": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "sa": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "su": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "payPerInterval": true
        },
        "openingHours": {
          "mo": [
            { "start": "13:00", "end": "17:30" }
          ],
          "tu": 
          [
            { "start": "10:00", "end": "17:30" }
          ],
          "we": 
          [
            { "start": "10:00", "end": "17:30" }
          ],
          "th": 
          [
            { "start": "10:00", "end": "21:00" }
          ],
          "fr": 
          [
            { "start": "10:00", "end": "17:30" }
          ],
          "sa": 
          [
            { "start": "10:00", "end": "17:30" }
          ],
          "su": 
          [
            { "start": "11:00", "end": "17:00" }
          ]
        }
    },
    "Locations": [{
        "name": "De Entree 7",
        "description": "Parking at De Entree 7, Amsterdam",
        "encodingType": "application/vnd.geo+json",
        "location": {
            "type": "Point",
            "coordinates": [4.938963, 52.311858]
        }
    }],
    "Datastreams": [{
        "name": "parking_zo_p04_villa_arena_spots",
        "unitOfMeasurement": {
            "name": "Count",
            "symbol": "",
            "definition": ""
        },
        "description": "Parking ZO-P04 Villa ArenA Amsterdam, open spots",
        "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
        "ObservedProperty": {
            "@iot.id": 11
        },
        "Sensor": {
            "@iot.id": 10
        }
    },
    {
        "name": "parking_zo_p04_villa_arena_open",
        "unitOfMeasurement": {
            "name": "is open",
            "symbol": "",
            "definition": ""
        },
        "description": "Parking ZO-P04 Villa ArenA Amsterdam, is open",
        "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_TruthObservation",
        "ObservedProperty": {
            "@iot.id": 12
        },
        "Sensor": {
            "@iot.id": 10
        }
    }]
}' "$HOST/v1.0/Things"

# ----------------------------------------
# Create Parking 5 Things(9) Locations(9)
# ----------------------------------------
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json"  -d '{
    "name": "parking_zo_p05_villa_arena",
    "description": "Parking Amsterdam - ZO-P05 Villa ArenA",
    "properties": {
        "id": "900000081_parkinglocation",
        "type": "parking",
        "source": "http://opd.it-t.nl/data/parkingdata/v1/amsterdam/dynamic/900000081_parkinglocation.json",
        "pr": false,
        "parkingSpots": 149,
        "maxDayRate ": 24.50,
        "heightClearance ": 2.00,
        "driveOut24h ": true,
        "chargingStations": -1,
        "phone": "",
        "info": "Concerten en voetbalwedstrijden: €12,00",
        "rate": {
          "mo": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "tu": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "we": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "th": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "fr": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "sa": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "su": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "payPerInterval": true
        },
        "openingHours": {
          "mo": [
            { "start": "00:00", "end": "23:59" }
          ],
          "tu": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "we": 
          [
          { "start": "00:00", "end": "23:59" }
          ],
          "th": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "fr": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "sa": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "su": 
          [
            { "start": "00:00", "end": "23:59" }
          ]
        }
    },
    "Locations": [{
        "name": "De Entree 7",
        "description": "Parking at De Entree 7, Amsterdam",
        "encodingType": "application/vnd.geo+json",
        "location": {
            "type": "Point",
            "coordinates": [4.9414976, 52.3115355]
        }
    }],
    "Datastreams": [{
        "name": "parking_zo_p04_villa_arena_spots",
        "unitOfMeasurement": {
            "name": "Count",
            "symbol": "",
            "definition": ""
        },
        "description": "Parking ZO-P05 Villa ArenA Amsterdam, open spots",
        "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
        "ObservedProperty": {
            "@iot.id": 11
        },
        "Sensor": {
            "@iot.id": 10
        }
    },
    {
        "name": "parking_zo_p04_villa_arena_open",
        "unitOfMeasurement": {
            "name": "is open",
            "symbol": "",
            "definition": ""
        },
        "description": "Parking ZO-P05 Villa ArenA Amsterdam, is open",
        "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_TruthObservation",
        "ObservedProperty": {
            "@iot.id": 12
        },
        "Sensor": {
            "@iot.id": 10
        }
    }]
}' "$HOST/v1.0/Things"

# ----------------------------------------
# Create Parking 6 Things(10) Locations(10)
# ----------------------------------------
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json"  -d '{
    "name": "parking_zo_p06_pathe_hmh",
    "description": "Parking Amsterdam - ZO-P06 Pathe/HMH",
    "properties": {
        "id": "900000082_parkinglocation",
        "type": "parking",
        "source": "http://opd.it-t.nl/data/parkingdata/v1/amsterdam/dynamic/900000082_parkinglocation.json",
        "pr": false,
        "parkingSpots": 390,
        "maxDayRate ": 24.50,
        "heightClearance ": 2.00,
        "driveOut24h ": true,
        "chargingStations": 0,
        "phone": "",
        "info": "Concerten en voetbalwedstrijden: €12,00",
        "rate": {
          "mo": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "tu": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "we": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "th": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "fr": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "sa": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "su": [ 
              { "range": { "start": "00:00", "end": "23:59" }, "interval": 25, "cost": 1 }
            ],
          "payPerInterval": true
        },
        "openingHours": {
          "mo": [
            { "start": "00:00", "end": "23:59" }
          ],
          "tu": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "we": 
          [
          { "start": "00:00", "end": "23:59" }
          ],
          "th": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "fr": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "sa": 
          [
            { "start": "00:00", "end": "23:59" }
          ],
          "su": 
          [
            { "start": "00:00", "end": "23:59" }
          ]
        }
    },
    "Locations": [{
        "name": "De Corridor 15",
        "description": "Parking at De Corridor 15, Amsterdam",
        "encodingType": "application/vnd.geo+json",
        "location": {
            "type": "Point",
            "coordinates": [4.9451657, 52.3114704]
        }
    }],
    "Datastreams": [{
        "name": "parking_zo_p06_pathe_hmh_spots",
        "unitOfMeasurement": {
            "name": "Count",
            "symbol": "",
            "definition": ""
        },
        "description": "Parking ZO-P06 Pathe/HMH Amsterdam, open spots",
        "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
        "ObservedProperty": {
            "@iot.id": 11
        },
        "Sensor": {
            "@iot.id": 10
        }
    },
    {
        "name": "parking_zo_p06_pathe_hmh_open",
        "unitOfMeasurement": {
            "name": "is open",
            "symbol": "",
            "definition": ""
        },
        "description": "Parking ZO-P06 Pathe/HMH Amsterdam, is open",
        "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_TruthObservation",
        "ObservedProperty": {
            "@iot.id": 12
        },
        "Sensor": {
            "@iot.id": 10
        }
    }]
}' "$HOST/v1.0/Things"

# ----------------------------------------
# Create deur Things 11 Locations 12
# ----------------------------------------
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json"  -d '{
    "name": "wemos D1 mini",
    "description": "Wemos board versie D1 mini",
    "Locations": [{
        "name": "maakt niet uit",
        "description": "geen beschrijving",
        "encodingType": "application/vnd.geo+json",
        "location": {
            "type": "Point",
            "coordinates": [-117.123,
            54.123]
        }
    }],
    "Datastreams": [{
        "name": "deur status",
        "unitOfMeasurement": {
            "name": "open",
            "symbol": "",
            "definition": "http://www.qudt.org/qudt/owl/1.0.0/unit/Instances.html#open"
        },
        "description": "deur status open",
        "observationType": "http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement",
        "ObservedProperty": {
            "@iot.id": 13
        },
        "Sensor": {
            "@iot.id": 11
        }
    }]
}' "$HOST/v1.0/Things"
