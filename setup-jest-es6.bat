@echo off

REM Prompt for the project name
set /p project_name=Enter the project name: 

REM Create project directory
mkdir %project_name%
cd %project_name%

REM Initialize npm
echo Initializing npm...
call npm init -y

REM Install Jest and Babel
echo Installing Jest and Babel...
call npm install --save-dev jest @babel/core @babel/preset-env babel-jest

REM Create Babel configuration
echo Creating .babelrc...
echo { "presets": ["@babel/preset-env"] } > .babelrc

REM Create Jest configuration
echo Creating jest.config.js...
echo module.exports = { "testEnvironment": "node", "transform": { "^.+\\.jsx?$": "babel-jest" } } > jest.config.js

REM Update package.json scripts
echo Updating package.json scripts...
echo { "scripts": { "test": "jest" } } > package.json

REM Create src directory
echo Creating src directory...
call mkdir src

REM Create main.js file
echo Creating main.js...
type nul > src/main.js

REM Create __tests__ directory
echo Creating __tests__ directory...
call mkdir __tests__

REM Create main.test.js file
echo Creating main.test.js...
type nul > __tests__/main.test.js


REM Displaying the content of created files
echo Displaying the content of .babelrc...
type .babelrc
echo.
echo Displaying the content of jest.config.js...
type jest.config.js
echo.
echo Displaying the content of package.json...
type package.json
echo.
echo Displaying the content of src\main.js...
type src\main.js
echo.
echo Displaying the content of __tests__\main.test.js...
type __tests__\main.test.js

