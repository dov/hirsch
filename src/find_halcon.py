import pathlib
from pathlib import Path
# Try to find HALCON 13
HalconBaseDir = '/usr/local/halcon13'
_possible_halcon_locations = ('/usr/local/halcon13/',
                              '/opt/halcon13/',
                              '/usr/local/halcon/',
                              '/opt/halcon/',
                              '/space/halcon13/')
HalconIncludeDirectory = None
for location in _possible_halcon_locations:
    if Path(location).is_dir():
        HalconBaseDir = location
assert HalconBaseDir is not None, 'Could not find HALCON 13!'
print 'Using HALCON from ', HalconIncludeDirectory
