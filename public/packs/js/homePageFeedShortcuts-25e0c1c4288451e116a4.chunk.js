(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["homePageFeedShortcuts"],{

/***/ "./app/javascript/packs/homePageFeedShortcuts.jsx":
/*!********************************************************!*\
  !*** ./app/javascript/packs/homePageFeedShortcuts.jsx ***!
  \********************************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var preact__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! preact */ \"./node_modules/preact/dist/preact.module.js\");\n/* harmony import */ var _shared_components_useListNavigation__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../shared/components/useListNavigation */ \"./app/javascript/shared/components/useListNavigation.js\");\n/* harmony import */ var _shared_components_useKeyboardShortcuts__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../shared/components/useKeyboardShortcuts */ \"./app/javascript/shared/components/useKeyboardShortcuts.js\");\n\n\n\ndocument.addEventListener('DOMContentLoaded', function () {\n  var root = document.getElementById('articles-list');\n  Object(preact__WEBPACK_IMPORTED_MODULE_0__[\"render\"])(Object(preact__WEBPACK_IMPORTED_MODULE_0__[\"h\"])(preact__WEBPACK_IMPORTED_MODULE_0__[\"Fragment\"], null, Object(preact__WEBPACK_IMPORTED_MODULE_0__[\"h\"])(_shared_components_useKeyboardShortcuts__WEBPACK_IMPORTED_MODULE_2__[\"KeyboardShortcuts\"], {\n    shortcuts: {\n      b: function b(event) {\n        var _event$target, _article$querySelecto;\n\n        var article = (_event$target = event.target) === null || _event$target === void 0 ? void 0 : _event$target.closest('.crayons-story');\n        if (!article) return;\n        (_article$querySelecto = article.querySelector('button[id^=article-save-button-]')) === null || _article$querySelecto === void 0 ? void 0 : _article$querySelecto.click();\n      }\n    }\n  }), Object(preact__WEBPACK_IMPORTED_MODULE_0__[\"h\"])(_shared_components_useListNavigation__WEBPACK_IMPORTED_MODULE_1__[\"ListNavigation\"], {\n    itemSelector: \".crayons-story\",\n    focusableSelector: \"a.crayons-story__hidden-navigation-link\",\n    waterfallItemContainerSelector: \"div.paged-stories,div.substories\"\n  })), root);\n});//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vLi9hcHAvamF2YXNjcmlwdC9wYWNrcy9ob21lUGFnZUZlZWRTaG9ydGN1dHMuanN4P2UxYjQiXSwibmFtZXMiOlsiZG9jdW1lbnQiLCJhZGRFdmVudExpc3RlbmVyIiwicm9vdCIsImdldEVsZW1lbnRCeUlkIiwicmVuZGVyIiwiYiIsImV2ZW50IiwiYXJ0aWNsZSIsInRhcmdldCIsImNsb3Nlc3QiLCJxdWVyeVNlbGVjdG9yIiwiY2xpY2siXSwibWFwcGluZ3MiOiJBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFDQTtBQUNBO0FBRUFBLFFBQVEsQ0FBQ0MsZ0JBQVQsQ0FBMEIsa0JBQTFCLEVBQThDLFlBQU07QUFDbEQsTUFBTUMsSUFBSSxHQUFHRixRQUFRLENBQUNHLGNBQVQsQ0FBd0IsZUFBeEIsQ0FBYjtBQUVBQyx1REFBTSxDQUNKLGlEQUFDLCtDQUFELFFBQ0UsaURBQUMseUZBQUQ7QUFDRSxhQUFTLEVBQUU7QUFDVEMsT0FBQyxFQUFFLFdBQUNDLEtBQUQsRUFBVztBQUFBOztBQUNaLFlBQU1DLE9BQU8sb0JBQUdELEtBQUssQ0FBQ0UsTUFBVCxrREFBRyxjQUFjQyxPQUFkLENBQXNCLGdCQUF0QixDQUFoQjtBQUVBLFlBQUksQ0FBQ0YsT0FBTCxFQUFjO0FBRWQsaUNBQUFBLE9BQU8sQ0FBQ0csYUFBUixDQUFzQixrQ0FBdEIsaUZBQTJEQyxLQUEzRDtBQUNEO0FBUFE7QUFEYixJQURGLEVBWUUsaURBQUMsbUZBQUQ7QUFDRSxnQkFBWSxFQUFDLGdCQURmO0FBRUUscUJBQWlCLEVBQUMseUNBRnBCO0FBR0Usa0NBQThCLEVBQUM7QUFIakMsSUFaRixDQURJLEVBbUJKVCxJQW5CSSxDQUFOO0FBcUJELENBeEJEIiwiZmlsZSI6Ii4vYXBwL2phdmFzY3JpcHQvcGFja3MvaG9tZVBhZ2VGZWVkU2hvcnRjdXRzLmpzeC5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IGgsIHJlbmRlciwgRnJhZ21lbnQgfSBmcm9tICdwcmVhY3QnO1xuaW1wb3J0IHsgTGlzdE5hdmlnYXRpb24gfSBmcm9tICcuLi9zaGFyZWQvY29tcG9uZW50cy91c2VMaXN0TmF2aWdhdGlvbic7XG5pbXBvcnQgeyBLZXlib2FyZFNob3J0Y3V0cyB9IGZyb20gJy4uL3NoYXJlZC9jb21wb25lbnRzL3VzZUtleWJvYXJkU2hvcnRjdXRzJztcblxuZG9jdW1lbnQuYWRkRXZlbnRMaXN0ZW5lcignRE9NQ29udGVudExvYWRlZCcsICgpID0+IHtcbiAgY29uc3Qgcm9vdCA9IGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKCdhcnRpY2xlcy1saXN0Jyk7XG5cbiAgcmVuZGVyKFxuICAgIDxGcmFnbWVudD5cbiAgICAgIDxLZXlib2FyZFNob3J0Y3V0c1xuICAgICAgICBzaG9ydGN1dHM9e3tcbiAgICAgICAgICBiOiAoZXZlbnQpID0+IHtcbiAgICAgICAgICAgIGNvbnN0IGFydGljbGUgPSBldmVudC50YXJnZXQ/LmNsb3Nlc3QoJy5jcmF5b25zLXN0b3J5Jyk7XG5cbiAgICAgICAgICAgIGlmICghYXJ0aWNsZSkgcmV0dXJuO1xuXG4gICAgICAgICAgICBhcnRpY2xlLnF1ZXJ5U2VsZWN0b3IoJ2J1dHRvbltpZF49YXJ0aWNsZS1zYXZlLWJ1dHRvbi1dJyk/LmNsaWNrKCk7XG4gICAgICAgICAgfSxcbiAgICAgICAgfX1cbiAgICAgIC8+XG4gICAgICA8TGlzdE5hdmlnYXRpb25cbiAgICAgICAgaXRlbVNlbGVjdG9yPVwiLmNyYXlvbnMtc3RvcnlcIlxuICAgICAgICBmb2N1c2FibGVTZWxlY3Rvcj1cImEuY3JheW9ucy1zdG9yeV9faGlkZGVuLW5hdmlnYXRpb24tbGlua1wiXG4gICAgICAgIHdhdGVyZmFsbEl0ZW1Db250YWluZXJTZWxlY3Rvcj1cImRpdi5wYWdlZC1zdG9yaWVzLGRpdi5zdWJzdG9yaWVzXCJcbiAgICAgIC8+XG4gICAgPC9GcmFnbWVudD4sXG4gICAgcm9vdCxcbiAgKTtcbn0pO1xuIl0sInNvdXJjZVJvb3QiOiIifQ==\n//# sourceURL=webpack-internal:///./app/javascript/packs/homePageFeedShortcuts.jsx\n");

/***/ }),

/***/ "./node_modules/preact/devtools/dist/devtools.module.js":
/*!**************************************************************!*\
  !*** ./node_modules/preact/devtools/dist/devtools.module.js ***!
  \**************************************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var preact__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! preact */ \"./node_modules/preact/dist/preact.module.js\");\n\"undefined\"!=typeof window&&window.__PREACT_DEVTOOLS__&&window.__PREACT_DEVTOOLS__.attachPreact(\"10.5.11\",preact__WEBPACK_IMPORTED_MODULE_0__[\"options\"],{Fragment:preact__WEBPACK_IMPORTED_MODULE_0__[\"Fragment\"],Component:preact__WEBPACK_IMPORTED_MODULE_0__[\"Component\"]});\n//# sourceMappingURL=devtools.module.js.map\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vLi9ub2RlX21vZHVsZXMvcHJlYWN0L2RldnRvb2xzL2Rpc3QvZGV2dG9vbHMubW9kdWxlLmpzP2JkZDAiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7QUFBQTtBQUE4RCwwR0FBMEcsOENBQUMsRUFBRSxTQUFTLCtDQUFDLFdBQVcsZ0RBQUMsQ0FBQztBQUNsTSIsImZpbGUiOiIuL25vZGVfbW9kdWxlcy9wcmVhY3QvZGV2dG9vbHMvZGlzdC9kZXZ0b29scy5tb2R1bGUuanMuanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnR7b3B0aW9ucyBhcyBuLEZyYWdtZW50IGFzIG8sQ29tcG9uZW50IGFzIGV9ZnJvbVwicHJlYWN0XCI7XCJ1bmRlZmluZWRcIiE9dHlwZW9mIHdpbmRvdyYmd2luZG93Ll9fUFJFQUNUX0RFVlRPT0xTX18mJndpbmRvdy5fX1BSRUFDVF9ERVZUT09MU19fLmF0dGFjaFByZWFjdChcIjEwLjUuMTFcIixuLHtGcmFnbWVudDpvLENvbXBvbmVudDplfSk7XG4vLyMgc291cmNlTWFwcGluZ1VSTD1kZXZ0b29scy5tb2R1bGUuanMubWFwXG4iXSwic291cmNlUm9vdCI6IiJ9\n//# sourceURL=webpack-internal:///./node_modules/preact/devtools/dist/devtools.module.js\n");

/***/ }),

/***/ 7:
/*!******************************************************************************!*\
  !*** multi preact/devtools ./app/javascript/packs/homePageFeedShortcuts.jsx ***!
  \******************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(/*! preact/devtools */"./node_modules/preact/devtools/dist/devtools.module.js");
module.exports = __webpack_require__(/*! /Users/nmadhab/hobby/forem/app/javascript/packs/homePageFeedShortcuts.jsx */"./app/javascript/packs/homePageFeedShortcuts.jsx");


/***/ })

},[[7,"runtime~homePageFeedShortcuts",0,1,4]]]);