#!/bin/bash
npm install
npm i --save @fortawesome/fontawesome-svg-core
npm CI=true test
npm run build
