#!/bin/bash
npm install
npm i --save @fortawesome/fontawesome-svg-core
CI=true npm test
npm run build
