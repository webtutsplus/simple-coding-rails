(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["Chat~articleForm~articlePage~modCenter"],{

/***/ "./app/javascript/Snackbar/Snackbar.jsx":
/*!**********************************************!*\
  !*** ./app/javascript/Snackbar/Snackbar.jsx ***!
  \**********************************************/
/*! exports provided: addSnackbarItem, Snackbar */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"addSnackbarItem\", function() { return addSnackbarItem; });\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"Snackbar\", function() { return Snackbar; });\n/* harmony import */ var preact__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! preact */ \"./node_modules/preact/dist/preact.module.js\");\n/* harmony import */ var prop_types__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! prop-types */ \"./node_modules/prop-types/index.js\");\n/* harmony import */ var prop_types__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(prop_types__WEBPACK_IMPORTED_MODULE_1__);\n/* harmony import */ var _SnackbarItem__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./SnackbarItem */ \"./app/javascript/Snackbar/SnackbarItem.jsx\");\nfunction _typeof(obj) { \"@babel/helpers - typeof\"; if (typeof Symbol === \"function\" && typeof Symbol.iterator === \"symbol\") { _typeof = function _typeof(obj) { return typeof obj; }; } else { _typeof = function _typeof(obj) { return obj && typeof Symbol === \"function\" && obj.constructor === Symbol && obj !== Symbol.prototype ? \"symbol\" : typeof obj; }; } return _typeof(obj); }\n\nfunction _toConsumableArray(arr) { return _arrayWithoutHoles(arr) || _iterableToArray(arr) || _unsupportedIterableToArray(arr) || _nonIterableSpread(); }\n\nfunction _nonIterableSpread() { throw new TypeError(\"Invalid attempt to spread non-iterable instance.\\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.\"); }\n\nfunction _unsupportedIterableToArray(o, minLen) { if (!o) return; if (typeof o === \"string\") return _arrayLikeToArray(o, minLen); var n = Object.prototype.toString.call(o).slice(8, -1); if (n === \"Object\" && o.constructor) n = o.constructor.name; if (n === \"Map\" || n === \"Set\") return Array.from(o); if (n === \"Arguments\" || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return _arrayLikeToArray(o, minLen); }\n\nfunction _iterableToArray(iter) { if (typeof Symbol !== \"undefined\" && Symbol.iterator in Object(iter)) return Array.from(iter); }\n\nfunction _arrayWithoutHoles(arr) { if (Array.isArray(arr)) return _arrayLikeToArray(arr); }\n\nfunction _arrayLikeToArray(arr, len) { if (len == null || len > arr.length) len = arr.length; for (var i = 0, arr2 = new Array(len); i < len; i++) { arr2[i] = arr[i]; } return arr2; }\n\nfunction ownKeys(object, enumerableOnly) { var keys = Object.keys(object); if (Object.getOwnPropertySymbols) { var symbols = Object.getOwnPropertySymbols(object); if (enumerableOnly) symbols = symbols.filter(function (sym) { return Object.getOwnPropertyDescriptor(object, sym).enumerable; }); keys.push.apply(keys, symbols); } return keys; }\n\nfunction _objectSpread(target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i] != null ? arguments[i] : {}; if (i % 2) { ownKeys(Object(source), true).forEach(function (key) { _defineProperty(target, key, source[key]); }); } else if (Object.getOwnPropertyDescriptors) { Object.defineProperties(target, Object.getOwnPropertyDescriptors(source)); } else { ownKeys(Object(source)).forEach(function (key) { Object.defineProperty(target, key, Object.getOwnPropertyDescriptor(source, key)); }); } } return target; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }\n\nfunction _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }\n\nfunction _inherits(subClass, superClass) { if (typeof superClass !== \"function\" && superClass !== null) { throw new TypeError(\"Super expression must either be null or a function\"); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, writable: true, configurable: true } }); if (superClass) _setPrototypeOf(subClass, superClass); }\n\nfunction _setPrototypeOf(o, p) { _setPrototypeOf = Object.setPrototypeOf || function _setPrototypeOf(o, p) { o.__proto__ = p; return o; }; return _setPrototypeOf(o, p); }\n\nfunction _createSuper(Derived) { var hasNativeReflectConstruct = _isNativeReflectConstruct(); return function _createSuperInternal() { var Super = _getPrototypeOf(Derived), result; if (hasNativeReflectConstruct) { var NewTarget = _getPrototypeOf(this).constructor; result = Reflect.construct(Super, arguments, NewTarget); } else { result = Super.apply(this, arguments); } return _possibleConstructorReturn(this, result); }; }\n\nfunction _possibleConstructorReturn(self, call) { if (call && (_typeof(call) === \"object\" || typeof call === \"function\")) { return call; } return _assertThisInitialized(self); }\n\nfunction _assertThisInitialized(self) { if (self === void 0) { throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\"); } return self; }\n\nfunction _isNativeReflectConstruct() { if (typeof Reflect === \"undefined\" || !Reflect.construct) return false; if (Reflect.construct.sham) return false; if (typeof Proxy === \"function\") return true; try { Date.prototype.toString.call(Reflect.construct(Date, [], function () {})); return true; } catch (e) { return false; } }\n\nfunction _getPrototypeOf(o) { _getPrototypeOf = Object.setPrototypeOf ? Object.getPrototypeOf : function _getPrototypeOf(o) { return o.__proto__ || Object.getPrototypeOf(o); }; return _getPrototypeOf(o); }\n\nfunction _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }\n\n\n\n\nvar snackbarItems = [];\nfunction addSnackbarItem(snackbarItem) {\n  if (!Array.isArray(snackbarItem.actions)) {\n    snackbarItem.actions = []; // eslint-disable-line no-param-reassign\n  }\n\n  snackbarItems.push(snackbarItem);\n}\nvar Snackbar = /*#__PURE__*/function (_Component) {\n  _inherits(Snackbar, _Component);\n\n  var _super = _createSuper(Snackbar);\n\n  function Snackbar() {\n    var _this;\n\n    _classCallCheck(this, Snackbar);\n\n    for (var _len = arguments.length, args = new Array(_len), _key = 0; _key < _len; _key++) {\n      args[_key] = arguments[_key];\n    }\n\n    _this = _super.call.apply(_super, [this].concat(args));\n\n    _defineProperty(_assertThisInitialized(_this), \"state\", {\n      snacks: []\n    });\n\n    _defineProperty(_assertThisInitialized(_this), \"pollingId\", void 0);\n\n    _defineProperty(_assertThisInitialized(_this), \"paused\", false);\n\n    _defineProperty(_assertThisInitialized(_this), \"pauseLifespan\", void 0);\n\n    _defineProperty(_assertThisInitialized(_this), \"resumeLifespan\", void 0);\n\n    return _this;\n  }\n\n  _createClass(Snackbar, [{\n    key: \"componentDidMount\",\n    value: function componentDidMount() {\n      this.initializePolling();\n    }\n  }, {\n    key: \"componentDidUpdate\",\n    value: function componentDidUpdate() {\n      var _this2 = this;\n\n      if (!this.pauseLifespan) {\n        this.pauseLifespan = function (_event) {\n          _this2.paused = true;\n        };\n\n        this.resumeLifespan = function (event) {\n          event.stopPropagation();\n          _this2.paused = false;\n        };\n\n        this.element.addEventListener('mouseover', this.pauseLifespan);\n        this.element.addEventListener('mouseout', this.resumeLifespan, true);\n      }\n    }\n  }, {\n    key: \"componentWillUnmount\",\n    value: function componentWillUnmount() {\n      if (this.element) {\n        this.element.removeEventListener('mouseover', this.pauseLifespan);\n        this.element.addEventListener('mouseout', this.resumeLifespan);\n      }\n    }\n  }, {\n    key: \"initializePolling\",\n    value: function initializePolling() {\n      var _this3 = this;\n\n      var _this$props = this.props,\n          pollingTime = _this$props.pollingTime,\n          lifespan = _this$props.lifespan;\n      this.pollingId = setInterval(function () {\n        if (snackbarItems.length > 0) {\n          // Need to add the lifespan to snackbar items because each second that goes by, we\n          // decrease the lifespan until it is no more.\n          var newSnacks = snackbarItems.map(function (snackbarItem) {\n            return _objectSpread(_objectSpread({}, snackbarItem), {}, {\n              lifespan: lifespan\n            });\n          });\n          snackbarItems = [];\n\n          _this3.updateSnackbarItems(newSnacks); // Start the lifespan countdowns for each new snackbar item.\n\n\n          newSnacks.forEach(function (snack) {\n            // eslint-disable-next-line no-param-reassign\n            snack.lifespanTimeoutId = setTimeout(function () {\n              _this3.decreaseLifespan(snack);\n            }, 1000);\n\n            if (snack.addCloseButton) {\n              // Adds an optional close button if addDefaultACtion is true.\n              snack.actions.push({\n                text: 'Dismiss',\n                handler: function handler() {\n                  _this3.setState(function (prevState) {\n                    return {\n                      prevState: prevState,\n                      snacks: prevState.snacks.filter(function (potentialSnackToFilterOut) {\n                        return potentialSnackToFilterOut !== snack;\n                      })\n                    };\n                  });\n                }\n              });\n            }\n          });\n        }\n      }, pollingTime);\n    }\n  }, {\n    key: \"updateSnackbarItems\",\n    value: function updateSnackbarItems(newSnacks) {\n      this.setState(function (prevState) {\n        var updatedSnacks = [].concat(_toConsumableArray(prevState.snacks), _toConsumableArray(newSnacks));\n\n        if (updatedSnacks.length > 3) {\n          var snacksToBeDiscarded = updatedSnacks.slice(0, updatedSnacks.length - 3);\n          snacksToBeDiscarded.forEach(function (_ref) {\n            var lifespanTimeoutId = _ref.lifespanTimeoutId;\n            clearTimeout(lifespanTimeoutId);\n          });\n          updatedSnacks = updatedSnacks.slice(updatedSnacks.length - 3);\n        }\n\n        return _objectSpread(_objectSpread({}, prevState), {}, {\n          snacks: updatedSnacks\n        });\n      });\n    }\n  }, {\n    key: \"decreaseLifespan\",\n    value: function decreaseLifespan(snack) {\n      var _this4 = this;\n\n      /* eslint-disable  no-param-reassign */\n      if (!this.paused && snack.lifespan === 0) {\n        clearTimeout(snack.lifespanTimeoutId);\n        this.setState(function (prevState) {\n          var snacks = prevState.snacks.filter(function (currentSnack) {\n            return currentSnack !== snack;\n          });\n          return _objectSpread(_objectSpread({}, prevState), {}, {\n            snacks: snacks\n          });\n        });\n        return;\n      }\n\n      if (!this.paused) {\n        snack.lifespan -= 1;\n      }\n\n      snack.lifespanTimeoutId = setTimeout(function () {\n        _this4.decreaseLifespan(snack);\n      }, 1000);\n      /* eslint-enable  no-param-reassign */\n    }\n  }, {\n    key: \"render\",\n    value: function render() {\n      var _this5 = this;\n\n      var snacks = this.state.snacks;\n      return Object(preact__WEBPACK_IMPORTED_MODULE_0__[\"h\"])(\"div\", {\n        className: snacks.length > 0 ? 'crayons-snackbar' : 'hidden',\n        ref: function ref(element) {\n          _this5.element = element;\n        }\n      }, snacks.map(function (_ref2) {\n        var message = _ref2.message,\n            _ref2$actions = _ref2.actions,\n            actions = _ref2$actions === void 0 ? [] : _ref2$actions;\n        return Object(preact__WEBPACK_IMPORTED_MODULE_0__[\"h\"])(_SnackbarItem__WEBPACK_IMPORTED_MODULE_2__[\"SnackbarItem\"], {\n          message: message,\n          actions: actions\n        });\n      }));\n    }\n  }]);\n\n  return Snackbar;\n}(preact__WEBPACK_IMPORTED_MODULE_0__[\"Component\"]);\nSnackbar.defaultProps = {\n  lifespan: 5,\n  pollingTime: 300\n};\nSnackbar.displayName = 'Snackbar';\nSnackbar.propTypes = {\n  lifespan: prop_types__WEBPACK_IMPORTED_MODULE_1___default.a.number,\n  pollingTime: prop_types__WEBPACK_IMPORTED_MODULE_1___default.a.number\n};//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vLi9hcHAvamF2YXNjcmlwdC9TbmFja2Jhci9TbmFja2Jhci5qc3g/MWM2ZiJdLCJuYW1lcyI6WyJzbmFja2Jhckl0ZW1zIiwiYWRkU25hY2tiYXJJdGVtIiwic25hY2tiYXJJdGVtIiwiQXJyYXkiLCJpc0FycmF5IiwiYWN0aW9ucyIsInB1c2giLCJTbmFja2JhciIsInNuYWNrcyIsImluaXRpYWxpemVQb2xsaW5nIiwicGF1c2VMaWZlc3BhbiIsIl9ldmVudCIsInBhdXNlZCIsInJlc3VtZUxpZmVzcGFuIiwiZXZlbnQiLCJzdG9wUHJvcGFnYXRpb24iLCJlbGVtZW50IiwiYWRkRXZlbnRMaXN0ZW5lciIsInJlbW92ZUV2ZW50TGlzdGVuZXIiLCJwcm9wcyIsInBvbGxpbmdUaW1lIiwibGlmZXNwYW4iLCJwb2xsaW5nSWQiLCJzZXRJbnRlcnZhbCIsImxlbmd0aCIsIm5ld1NuYWNrcyIsIm1hcCIsInVwZGF0ZVNuYWNrYmFySXRlbXMiLCJmb3JFYWNoIiwic25hY2siLCJsaWZlc3BhblRpbWVvdXRJZCIsInNldFRpbWVvdXQiLCJkZWNyZWFzZUxpZmVzcGFuIiwiYWRkQ2xvc2VCdXR0b24iLCJ0ZXh0IiwiaGFuZGxlciIsInNldFN0YXRlIiwicHJldlN0YXRlIiwiZmlsdGVyIiwicG90ZW50aWFsU25hY2tUb0ZpbHRlck91dCIsInVwZGF0ZWRTbmFja3MiLCJzbmFja3NUb0JlRGlzY2FyZGVkIiwic2xpY2UiLCJjbGVhclRpbWVvdXQiLCJjdXJyZW50U25hY2siLCJzdGF0ZSIsIm1lc3NhZ2UiLCJDb21wb25lbnQiLCJkZWZhdWx0UHJvcHMiLCJkaXNwbGF5TmFtZSIsInByb3BUeXBlcyIsIlByb3BUeXBlcyIsIm51bWJlciJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFBQTtBQUNBO0FBQ0E7QUFFQSxJQUFJQSxhQUFhLEdBQUcsRUFBcEI7QUFFTyxTQUFTQyxlQUFU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QzBDLFdBQVQsR0FBdUIsVUFBdkI7QUFFQTFDLFFBQVEsQ0FBQzJDLFNBQVQsR0FBcUI7QUFDbkI3QixVQUFRLEVBQUU4QixpREFBUyxDQUFDQyxNQUREO0FBRW5CaEMsYUFBVyxFQUFFK0IsaURBQVMsQ0FBQ0M7QUFGSixDQUFyQiIsImZpbGUiOiIuL2FwcC9qYXZhc2NyaXB0L1NuYWNrYmFyL1NuYWNrYmFyLmpzeC5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IGgsIENvbXBvbmVudCB9IGZyb20gJ3ByZWFjdCc7XG5pbXBvcnQgUHJvcFR5cGVzIGZyb20gJ3Byb3AtdHlwZXMnO1xuaW1wb3J0IHsgU25hY2tiYXJJdGVtIH0gZnJvbSAnLi9TbmFja2Jhckl0ZW0nO1xuXG5sZXQgc25hY2tiYXJJdGVtcyA9IFtdO1xuXG5leHBvcnQgZnVuY3Rpb24gYWRkU25hY2tiYXJJdGVtKHNuYWNrYmFySXRlbSkge1xuICBpZiAoIUFycmF5LmlzQXJyYXkoc25hY2tiYXJJdGVtLmFjdGlvbnMpKSB7XG4gICAgc25hY2tiYXJJdGVtLmFjdGlvbnMgPSBbXTsgLy8gZXNsaW50LWRpc2FibGUtbGluZSBuby1wYXJhbS1yZWFzc2lnblxuICB9XG5cbiAgc25hY2tiYXJJdGVtcy5wdXNoKHNuYWNrYmFySXRlbSk7XG59XG5cbmV4cG9ydCBjbGFzcyBTbmFja2JhciBleHRlbmRzIENvbXBvbmVudCB7XG4gIHN0YXRlID0ge1xuICAgIHNuYWNrczogW10sXG4gIH07XG5cbiAgcG9sbGluZ0lkO1xuXG4gIHBhdXNlZCA9IGZhbHNlO1xuXG4gIHBhdXNlTGlmZXNwYW47XG5cbiAgcmVzdW1lTGlmZXNwYW47XG5cbiAgY29tcG9uZW50RGlkTW91bnQoKSB7XG4gICAgdGhpcy5pbml0aWFsaXplUG9sbGluZygpO1xuICB9XG5cbiAgY29tcG9uZW50RGlkVXBkYXRlKCkge1xuICAgIGlmICghdGhpcy5wYXVzZUxpZmVzcGFuKSB7XG4gICAgICB0aGlzLnBhdXNlTGlmZXNwYW4gPSAoX2V2ZW50KSA9PiB7XG4gICAgICAgIHRoaXMucGF1c2VkID0gdHJ1ZTtcbiAgICAgIH07XG5cbiAgICAgIHRoaXMucmVzdW1lTGlmZXNwYW4gPSAoZXZlbnQpID0+IHtcbiAgICAgICAgZXZlbnQuc3RvcFByb3BhZ2F0aW9uKCk7XG4gICAgICAgIHRoaXMucGF1c2VkID0gZmFsc2U7XG4gICAgICB9O1xuXG4gICAgICB0aGlzLmVsZW1lbnQuYWRkRXZlbnRMaXN0ZW5lcignbW91c2VvdmVyJywgdGhpcy5wYXVzZUxpZmVzcGFuKTtcbiAgICAgIHRoaXMuZWxlbWVudC5hZGRFdmVudExpc3RlbmVyKCdtb3VzZW91dCcsIHRoaXMucmVzdW1lTGlmZXNwYW4sIHRydWUpO1xuICAgIH1cbiAgfVxuXG4gIGNvbXBvbmVudFdpbGxVbm1vdW50KCkge1xuICAgIGlmICh0aGlzLmVsZW1lbnQpIHtcbiAgICAgIHRoaXMuZWxlbWVudC5yZW1vdmVFdmVudExpc3RlbmVyKCdtb3VzZW92ZXInLCB0aGlzLnBhdXNlTGlmZXNwYW4pO1xuICAgICAgdGhpcy5lbGVtZW50LmFkZEV2ZW50TGlzdGVuZXIoJ21vdXNlb3V0JywgdGhpcy5yZXN1bWVMaWZlc3Bhbik7XG4gICAgfVxuICB9XG5cbiAgaW5pdGlhbGl6ZVBvbGxpbmcoKSB7XG4gICAgY29uc3QgeyBwb2xsaW5nVGltZSwgbGlmZXNwYW4gfSA9IHRoaXMucHJvcHM7XG5cbiAgICB0aGlzLnBvbGxpbmdJZCA9IHNldEludGVydmFsKCgpID0+IHtcbiAgICAgIGlmIChzbmFja2Jhckl0ZW1zLmxlbmd0aCA+IDApIHtcbiAgICAgICAgLy8gTmVlZCB0byBhZGQgdGhlIGxpZmVzcGFuIHRvIHNuYWNrYmFyIGl0ZW1zIGJlY2F1c2UgZWFjaCBzZWNvbmQgdGhhdCBnb2VzIGJ5LCB3ZVxuICAgICAgICAvLyBkZWNyZWFzZSB0aGUgbGlmZXNwYW4gdW50aWwgaXQgaXMgbm8gbW9yZS5cbiAgICAgICAgY29uc3QgbmV3U25hY2tzID0gc25hY2tiYXJJdGVtcy5tYXAoKHNuYWNrYmFySXRlbSkgPT4gKHtcbiAgICAgICAgICAuLi5zbmFja2Jhckl0ZW0sXG4gICAgICAgICAgbGlmZXNwYW4sXG4gICAgICAgIH0pKTtcblxuICAgICAgICBzbmFja2Jhckl0ZW1zID0gW107XG5cbiAgICAgICAgdGhpcy51cGRhdGVTbmFja2Jhckl0ZW1zKG5ld1NuYWNrcyk7XG5cbiAgICAgICAgLy8gU3RhcnQgdGhlIGxpZmVzcGFuIGNvdW50ZG93bnMgZm9yIGVhY2ggbmV3IHNuYWNrYmFyIGl0ZW0uXG4gICAgICAgIG5ld1NuYWNrcy5mb3JFYWNoKChzbmFjaykgPT4ge1xuICAgICAgICAgIC8vIGVzbGludC1kaXNhYmxlLW5leHQtbGluZSBuby1wYXJhbS1yZWFzc2lnblxuICAgICAgICAgIHNuYWNrLmxpZmVzcGFuVGltZW91dElkID0gc2V0VGltZW91dCgoKSA9PiB7XG4gICAgICAgICAgICB0aGlzLmRlY3JlYXNlTGlmZXNwYW4oc25hY2spO1xuICAgICAgICAgIH0sIDEwMDApO1xuXG4gICAgICAgICAgaWYgKHNuYWNrLmFkZENsb3NlQnV0dG9uKSB7XG4gICAgICAgICAgICAvLyBBZGRzIGFuIG9wdGlvbmFsIGNsb3NlIGJ1dHRvbiBpZiBhZGREZWZhdWx0QUN0aW9uIGlzIHRydWUuXG4gICAgICAgICAgICBzbmFjay5hY3Rpb25zLnB1c2goe1xuICAgICAgICAgICAgICB0ZXh0OiAnRGlzbWlzcycsXG4gICAgICAgICAgICAgIGhhbmRsZXI6ICgpID0+IHtcbiAgICAgICAgICAgICAgICB0aGlzLnNldFN0YXRlKChwcmV2U3RhdGUpID0+IHtcbiAgICAgICAgICAgICAgICAgIHJldHVybiB7XG4gICAgICAgICAgICAgICAgICAgIHByZXZTdGF0ZSxcbiAgICAgICAgICAgICAgICAgICAgc25hY2tzOiBwcmV2U3RhdGUuc25hY2tzLmZpbHRlcihcbiAgICAgICAgICAgICAgICAgICAgICAocG90ZW50aWFsU25hY2tUb0ZpbHRlck91dCkgPT5cbiAgICAgICAgICAgICAgICAgICAgICAgIHBvdGVudGlhbFNuYWNrVG9GaWx0ZXJPdXQgIT09IHNuYWNrLFxuICAgICAgICAgICAgICAgICAgICApLFxuICAgICAgICAgICAgICAgICAgfTtcbiAgICAgICAgICAgICAgICB9KTtcbiAgICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIH0pO1xuICAgICAgICAgIH1cbiAgICAgICAgfSk7XG4gICAgICB9XG4gICAgfSwgcG9sbGluZ1RpbWUpO1xuICB9XG5cbiAgdXBkYXRlU25hY2tiYXJJdGVtcyhuZXdTbmFja3MpIHtcbiAgICB0aGlzLnNldFN0YXRlKChwcmV2U3RhdGUpID0+IHtcbiAgICAgIGxldCB1cGRhdGVkU25hY2tzID0gWy4uLnByZXZTdGF0ZS5zbmFja3MsIC4uLm5ld1NuYWNrc107XG5cbiAgICAgIGlmICh1cGRhdGVkU25hY2tzLmxlbmd0aCA+IDMpIHtcbiAgICAgICAgY29uc3Qgc25hY2tzVG9CZURpc2NhcmRlZCA9IHVwZGF0ZWRTbmFja3Muc2xpY2UoXG4gICAgICAgICAgMCxcbiAgICAgICAgICB1cGRhdGVkU25hY2tzLmxlbmd0aCAtIDMsXG4gICAgICAgICk7XG5cbiAgICAgICAgc25hY2tzVG9CZURpc2NhcmRlZC5mb3JFYWNoKCh7IGxpZmVzcGFuVGltZW91dElkIH0pID0+IHtcbiAgICAgICAgICBjbGVhclRpbWVvdXQobGlmZXNwYW5UaW1lb3V0SWQpO1xuICAgICAgICB9KTtcblxuICAgICAgICB1cGRhdGVkU25hY2tzID0gdXBkYXRlZFNuYWNrcy5zbGljZSh1cGRhdGVkU25hY2tzLmxlbmd0aCAtIDMpO1xuICAgICAgfVxuXG4gICAgICByZXR1cm4geyAuLi5wcmV2U3RhdGUsIHNuYWNrczogdXBkYXRlZFNuYWNrcyB9O1xuICAgIH0pO1xuICB9XG5cbiAgZGVjcmVhc2VMaWZlc3BhbihzbmFjaykge1xuICAgIC8qIGVzbGludC1kaXNhYmxlICBuby1wYXJhbS1yZWFzc2lnbiAqL1xuICAgIGlmICghdGhpcy5wYXVzZWQgJiYgc25hY2subGlmZXNwYW4gPT09IDApIHtcbiAgICAgIGNsZWFyVGltZW91dChzbmFjay5saWZlc3BhblRpbWVvdXRJZCk7XG5cbiAgICAgIHRoaXMuc2V0U3RhdGUoKHByZXZTdGF0ZSkgPT4ge1xuICAgICAgICBjb25zdCBzbmFja3MgPSBwcmV2U3RhdGUuc25hY2tzLmZpbHRlcihcbiAgICAgICAgICAoY3VycmVudFNuYWNrKSA9PiBjdXJyZW50U25hY2sgIT09IHNuYWNrLFxuICAgICAgICApO1xuXG4gICAgICAgIHJldHVybiB7XG4gICAgICAgICAgLi4ucHJldlN0YXRlLFxuICAgICAgICAgIHNuYWNrcyxcbiAgICAgICAgfTtcbiAgICAgIH0pO1xuXG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgaWYgKCF0aGlzLnBhdXNlZCkge1xuICAgICAgc25hY2subGlmZXNwYW4gLT0gMTtcbiAgICB9XG5cbiAgICBzbmFjay5saWZlc3BhblRpbWVvdXRJZCA9IHNldFRpbWVvdXQoKCkgPT4ge1xuICAgICAgdGhpcy5kZWNyZWFzZUxpZmVzcGFuKHNuYWNrKTtcbiAgICB9LCAxMDAwKTtcbiAgICAvKiBlc2xpbnQtZW5hYmxlICBuby1wYXJhbS1yZWFzc2lnbiAqL1xuICB9XG5cbiAgcmVuZGVyKCkge1xuICAgIGNvbnN0IHsgc25hY2tzIH0gPSB0aGlzLnN0YXRlO1xuXG4gICAgcmV0dXJuIChcbiAgICAgIDxkaXZcbiAgICAgICAgY2xhc3NOYW1lPXtzbmFja3MubGVuZ3RoID4gMCA/ICdjcmF5b25zLXNuYWNrYmFyJyA6ICdoaWRkZW4nfVxuICAgICAgICByZWY9eyhlbGVtZW50KSA9PiB7XG4gICAgICAgICAgdGhpcy5lbGVtZW50ID0gZWxlbWVudDtcbiAgICAgICAgfX1cbiAgICAgID5cbiAgICAgICAge3NuYWNrcy5tYXAoKHsgbWVzc2FnZSwgYWN0aW9ucyA9IFtdIH0pID0+IChcbiAgICAgICAgICA8U25hY2tiYXJJdGVtIG1lc3NhZ2U9e21lc3NhZ2V9IGFjdGlvbnM9e2FjdGlvbnN9IC8+XG4gICAgICAgICkpfVxuICAgICAgPC9kaXY+XG4gICAgKTtcbiAgfVxufVxuXG5TbmFja2Jhci5kZWZhdWx0UHJvcHMgPSB7XG4gIGxpZmVzcGFuOiA1LFxuICBwb2xsaW5nVGltZTogMzAwLFxufTtcblxuU25hY2tiYXIuZGlzcGxheU5hbWUgPSAnU25hY2tiYXInO1xuXG5TbmFja2Jhci5wcm9wVHlwZXMgPSB7XG4gIGxpZmVzcGFuOiBQcm9wVHlwZXMubnVtYmVyLFxuICBwb2xsaW5nVGltZTogUHJvcFR5cGVzLm51bWJlcixcbn07XG4iXSwic291cmNlUm9vdCI6IiJ9\n//# sourceURL=webpack-internal:///./app/javascript/Snackbar/Snackbar.jsx\n");

/***/ }),

/***/ "./app/javascript/Snackbar/SnackbarItem.jsx":
/*!**************************************************!*\
  !*** ./app/javascript/Snackbar/SnackbarItem.jsx ***!
  \**************************************************/
/*! exports provided: snackbarItemProps, SnackbarItem */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"snackbarItemProps\", function() { return snackbarItemProps; });\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"SnackbarItem\", function() { return SnackbarItem; });\n/* harmony import */ var preact__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! preact */ \"./node_modules/preact/dist/preact.module.js\");\n/* harmony import */ var prop_types__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! prop-types */ \"./node_modules/prop-types/index.js\");\n/* harmony import */ var prop_types__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(prop_types__WEBPACK_IMPORTED_MODULE_1__);\n/* harmony import */ var _common_prop_types__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../common-prop-types */ \"./app/javascript/common-prop-types/index.js\");\n/* harmony import */ var _crayons__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @crayons */ \"./app/javascript/crayons/index.js\");\n\n\n\n\nvar snackbarItemProps = {\n  children: _common_prop_types__WEBPACK_IMPORTED_MODULE_2__[\"defaultChildrenPropTypes\"].isRequired,\n  actions: prop_types__WEBPACK_IMPORTED_MODULE_1___default.a.arrayOf(prop_types__WEBPACK_IMPORTED_MODULE_1___default.a.shape({\n    message: prop_types__WEBPACK_IMPORTED_MODULE_1___default.a.string.isRequired,\n    handler: prop_types__WEBPACK_IMPORTED_MODULE_1___default.a.func.isRequired,\n    lifespan: prop_types__WEBPACK_IMPORTED_MODULE_1___default.a.number.isRequired\n  }))\n};\nvar SnackbarItem = function SnackbarItem(_ref) {\n  var message = _ref.message,\n      _ref$actions = _ref.actions,\n      actions = _ref$actions === void 0 ? [] : _ref$actions;\n  return Object(preact__WEBPACK_IMPORTED_MODULE_0__[\"h\"])(\"div\", {\n    className: \"crayons-snackbar__item flex\"\n  }, Object(preact__WEBPACK_IMPORTED_MODULE_0__[\"h\"])(\"div\", {\n    className: \"crayons-snackbar__body\",\n    role: \"alert\"\n  }, message), Object(preact__WEBPACK_IMPORTED_MODULE_0__[\"h\"])(\"div\", {\n    className: \"crayons-snackbar__actions\"\n  }, actions.map(function (_ref2) {\n    var text = _ref2.text,\n        handler = _ref2.handler;\n    return Object(preact__WEBPACK_IMPORTED_MODULE_0__[\"h\"])(_crayons__WEBPACK_IMPORTED_MODULE_3__[\"Button\"], {\n      variant: \"ghost-success\",\n      inverted: true,\n      onClick: handler,\n      key: text\n    }, text);\n  })));\n};\nSnackbarItem.displayName = 'SnackbarItem';\nSnackbarItem.propTypes = snackbarItemProps.isRequired;//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vLi9hcHAvamF2YXNjcmlwdC9TbmFja2Jhci9TbmFja2Jhckl0ZW0uanN4PzY1MjYiXSwibmFtZXMiOlsic25hY2tiYXJJdGVtUHJvcHMiLCJjaGlsZHJlbiIsImRlZmF1bHRDaGlsZHJlblByb3BUeXBlcyIsImlzUmVxdWlyZWQiLCJhY3Rpb25zIiwiUHJvcFR5cGVzIiwiYXJyYXlPZiIsInNoYXBlIiwibWVzc2FnZSIsInN0cmluZyIsImhhbmRsZXIiLCJmdW5jIiwibGlmZXNwYW4iLCJudW1iZXIiLCJTbmFja2Jhckl0ZW0iLCJtYXAiLCJ0ZXh0IiwiZGlzcGxheU5hbWUiLCJwcm9wVHlwZXMiXSwibWFwcGluZ3MiOiJBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUNBO0FBQ0E7QUFDQTtBQUVPLElBQU1BLGlCQUFpQixHQUFHO0FBQy9CQyxVQUFRLEVBQUVDLDJFQUF3QixDQUFDQyxVQURKO0FBRS9CQyxTQUFPLEVBQUVDLGlEQUFTLENBQUNDLE9BQVYsQ0FDUEQsaURBQVMsQ0FBQ0UsS0FBVixDQUFnQjtBQUNkQyxXQUFPLEVBQUVILGlEQUFTLENBQUNJLE1BQVYsQ0FBaUJOLFVBRFo7QUFFZE8sV0FBTyxFQUFFTCxpREFBUyxDQUFDTSxJQUFWLENBQWVSLFVBRlY7QUFHZFMsWUFBUSxFQUFFUCxpREFBUyxDQUFDUSxNQUFWLENBQWlCVjtBQUhiLEdBQWhCLENBRE87QUFGc0IsQ0FBMUI7QUFXQSxJQUFNVyxZQUFZLEdBQUcsU0FBZkEsWUFBZTtBQUFBLE1BQUdOLE9BQUgsUUFBR0EsT0FBSDtBQUFBLDBCQUFZSixPQUFaO0FBQUEsTUFBWUEsT0FBWiw2QkFBc0IsRUFBdEI7QUFBQSxTQUMxQjtBQUFLLGFBQVMsRUFBQztBQUFmLEtBQ0U7QUFBSyxhQUFTLEVBQUMsd0JBQWY7QUFBd0MsUUFBSSxFQUFDO0FBQTdDLEtBQ0dJLE9BREgsQ0FERixFQUlFO0FBQUssYUFBUyxFQUFDO0FBQWYsS0FDR0osT0FBTyxDQUFDVyxHQUFSLENBQVk7QUFBQSxRQUFHQyxJQUFILFNBQUdBLElBQUg7QUFBQSxRQUFTTixPQUFULFNBQVNBLE9BQVQ7QUFBQSxXQUNYLGlEQUFDLCtDQUFEO0FBQVEsYUFBTyxFQUFDLGVBQWhCO0FBQWdDLGNBQVEsTUFBeEM7QUFBeUMsYUFBTyxFQUFFQSxPQUFsRDtBQUEyRCxTQUFHLEVBQUVNO0FBQWhFLE9BQ0dBLElBREgsQ0FEVztBQUFBLEdBQVosQ0FESCxDQUpGLENBRDBCO0FBQUEsQ0FBckI7QUFlUEYsWUFBWSxDQUFDRyxXQUFiLEdBQTJCLGNBQTNCO0FBRUFILFlBQVksQ0FBQ0ksU0FBYixHQUF5QmxCLGlCQUFpQixDQUFDRyxVQUEzQyIsImZpbGUiOiIuL2FwcC9qYXZhc2NyaXB0L1NuYWNrYmFyL1NuYWNrYmFySXRlbS5qc3guanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBoIH0gZnJvbSAncHJlYWN0JztcbmltcG9ydCBQcm9wVHlwZXMgZnJvbSAncHJvcC10eXBlcyc7XG5pbXBvcnQgeyBkZWZhdWx0Q2hpbGRyZW5Qcm9wVHlwZXMgfSBmcm9tICcuLi9jb21tb24tcHJvcC10eXBlcyc7XG5pbXBvcnQgeyBCdXR0b24gfSBmcm9tICdAY3JheW9ucyc7XG5cbmV4cG9ydCBjb25zdCBzbmFja2Jhckl0ZW1Qcm9wcyA9IHtcbiAgY2hpbGRyZW46IGRlZmF1bHRDaGlsZHJlblByb3BUeXBlcy5pc1JlcXVpcmVkLFxuICBhY3Rpb25zOiBQcm9wVHlwZXMuYXJyYXlPZihcbiAgICBQcm9wVHlwZXMuc2hhcGUoe1xuICAgICAgbWVzc2FnZTogUHJvcFR5cGVzLnN0cmluZy5pc1JlcXVpcmVkLFxuICAgICAgaGFuZGxlcjogUHJvcFR5cGVzLmZ1bmMuaXNSZXF1aXJlZCxcbiAgICAgIGxpZmVzcGFuOiBQcm9wVHlwZXMubnVtYmVyLmlzUmVxdWlyZWQsXG4gICAgfSksXG4gICksXG59O1xuXG5leHBvcnQgY29uc3QgU25hY2tiYXJJdGVtID0gKHsgbWVzc2FnZSwgYWN0aW9ucyA9IFtdIH0pID0+IChcbiAgPGRpdiBjbGFzc05hbWU9XCJjcmF5b25zLXNuYWNrYmFyX19pdGVtIGZsZXhcIj5cbiAgICA8ZGl2IGNsYXNzTmFtZT1cImNyYXlvbnMtc25hY2tiYXJfX2JvZHlcIiByb2xlPVwiYWxlcnRcIj5cbiAgICAgIHttZXNzYWdlfVxuICAgIDwvZGl2PlxuICAgIDxkaXYgY2xhc3NOYW1lPVwiY3JheW9ucy1zbmFja2Jhcl9fYWN0aW9uc1wiPlxuICAgICAge2FjdGlvbnMubWFwKCh7IHRleHQsIGhhbmRsZXIgfSkgPT4gKFxuICAgICAgICA8QnV0dG9uIHZhcmlhbnQ9XCJnaG9zdC1zdWNjZXNzXCIgaW52ZXJ0ZWQgb25DbGljaz17aGFuZGxlcn0ga2V5PXt0ZXh0fT5cbiAgICAgICAgICB7dGV4dH1cbiAgICAgICAgPC9CdXR0b24+XG4gICAgICApKX1cbiAgICA8L2Rpdj5cbiAgPC9kaXY+XG4pO1xuXG5TbmFja2Jhckl0ZW0uZGlzcGxheU5hbWUgPSAnU25hY2tiYXJJdGVtJztcblxuU25hY2tiYXJJdGVtLnByb3BUeXBlcyA9IHNuYWNrYmFySXRlbVByb3BzLmlzUmVxdWlyZWQ7XG4iXSwic291cmNlUm9vdCI6IiJ9\n//# sourceURL=webpack-internal:///./app/javascript/Snackbar/SnackbarItem.jsx\n");

/***/ }),

/***/ "./app/javascript/Snackbar/index.js":
/*!******************************************!*\
  !*** ./app/javascript/Snackbar/index.js ***!
  \******************************************/
/*! exports provided: addSnackbarItem, Snackbar, snackbarItemProps, SnackbarItem */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _Snackbar__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Snackbar */ \"./app/javascript/Snackbar/Snackbar.jsx\");\n/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, \"addSnackbarItem\", function() { return _Snackbar__WEBPACK_IMPORTED_MODULE_0__[\"addSnackbarItem\"]; });\n\n/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, \"Snackbar\", function() { return _Snackbar__WEBPACK_IMPORTED_MODULE_0__[\"Snackbar\"]; });\n\n/* harmony import */ var _SnackbarItem__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./SnackbarItem */ \"./app/javascript/Snackbar/SnackbarItem.jsx\");\n/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, \"snackbarItemProps\", function() { return _SnackbarItem__WEBPACK_IMPORTED_MODULE_1__[\"snackbarItemProps\"]; });\n\n/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, \"SnackbarItem\", function() { return _SnackbarItem__WEBPACK_IMPORTED_MODULE_1__[\"SnackbarItem\"]; });\n\n\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vLi9hcHAvamF2YXNjcmlwdC9TbmFja2Jhci9pbmRleC5qcz84ZTU1Il0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQSIsImZpbGUiOiIuL2FwcC9qYXZhc2NyaXB0L1NuYWNrYmFyL2luZGV4LmpzLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0ICogZnJvbSAnLi9TbmFja2Jhcic7XG5leHBvcnQgKiBmcm9tICcuL1NuYWNrYmFySXRlbSc7XG4iXSwic291cmNlUm9vdCI6IiJ9\n//# sourceURL=webpack-internal:///./app/javascript/Snackbar/index.js\n");

/***/ })

}]);