(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["profileDropdown"],{

/***/ "./app/javascript/packs/profileDropdown.js":
/*!*************************************************!*\
  !*** ./app/javascript/packs/profileDropdown.js ***!
  \*************************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _profileDropdown_blockButton__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../profileDropdown/blockButton */ \"./app/javascript/profileDropdown/blockButton.js\");\n\nwindow.InstantClick.on('change', function () {\n  Object(_profileDropdown_blockButton__WEBPACK_IMPORTED_MODULE_0__[\"default\"])();\n});\nObject(_profileDropdown_blockButton__WEBPACK_IMPORTED_MODULE_0__[\"default\"])();//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vLi9hcHAvamF2YXNjcmlwdC9wYWNrcy9wcm9maWxlRHJvcGRvd24uanM/OTllYyJdLCJuYW1lcyI6WyJ3aW5kb3ciLCJJbnN0YW50Q2xpY2siLCJvbiIsImluaXRCbG9jayJdLCJtYXBwaW5ncyI6IkFBQUE7QUFBQTtBQUFBO0FBRUFBLE1BQU0sQ0FBQ0MsWUFBUCxDQUFvQkMsRUFBcEIsQ0FBdUIsUUFBdkIsRUFBaUMsWUFBTTtBQUNyQ0MsOEVBQVM7QUFDVixDQUZEO0FBSUFBLDRFQUFTIiwiZmlsZSI6Ii4vYXBwL2phdmFzY3JpcHQvcGFja3MvcHJvZmlsZURyb3Bkb3duLmpzLmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IGluaXRCbG9jayBmcm9tICcuLi9wcm9maWxlRHJvcGRvd24vYmxvY2tCdXR0b24nO1xuXG53aW5kb3cuSW5zdGFudENsaWNrLm9uKCdjaGFuZ2UnLCAoKSA9PiB7XG4gIGluaXRCbG9jaygpO1xufSk7XG5cbmluaXRCbG9jaygpO1xuIl0sInNvdXJjZVJvb3QiOiIifQ==\n//# sourceURL=webpack-internal:///./app/javascript/packs/profileDropdown.js\n");

/***/ }),

/***/ "./app/javascript/profileDropdown/blockButton.js":
/*!*******************************************************!*\
  !*** ./app/javascript/profileDropdown/blockButton.js ***!
  \*******************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"default\", function() { return initBlock; });\n/* eslint-disable no-alert */\nfunction initBlock() {\n  var blockButton = document.getElementById('user-profile-dropdownmenu-block-button');\n\n  if (!blockButton) {\n    // button not always present when this is called\n    return;\n  }\n\n  var profileUserId = blockButton.dataset.profileUserId;\n\n  function unblock() {\n    fetch(\"/user_blocks/\".concat(profileUserId), {\n      method: 'DELETE',\n      headers: {\n        Accept: 'application/json',\n        'X-CSRF-Token': window.csrfToken,\n        'Content-Type': 'application/json'\n      },\n      body: JSON.stringify({\n        user_block: {\n          blocked_id: profileUserId\n        }\n      })\n    }).then(function (response) {\n      return response.json();\n    }).then(function (response) {\n      if (response.result === 'unblocked') {\n        blockButton.innerText = 'Block';\n        /* eslint-disable-next-line no-use-before-define */\n\n        blockButton.addEventListener('click', block, {\n          once: true\n        });\n      } else if (response.status === 422) {\n        window.alert(\"Something went wrong: \".concat(response.error, \" -- Please refresh the page to try again.\"));\n      }\n    })[\"catch\"](function (e) {\n      window.alert(\"Something went wrong: \".concat(e, \". -- Please refresh the page to try again.\"));\n    });\n  }\n\n  function block() {\n    var confirmBlock = window.confirm(\"Are you sure you want to block this person? This will:\\n      - prevent them from commenting on your posts\\n      - block all notifications from them\\n      - prevent them from messaging you via DEV Connect\");\n\n    if (confirmBlock) {\n      fetch(\"/user_blocks\", {\n        method: 'POST',\n        headers: {\n          Accept: 'application/json',\n          'X-CSRF-Token': window.csrfToken,\n          'Content-Type': 'application/json'\n        },\n        body: JSON.stringify({\n          user_block: {\n            blocked_id: profileUserId\n          }\n        })\n      }).then(function (response) {\n        return response.json();\n      }).then(function (response) {\n        if (response.result === 'blocked') {\n          blockButton.innerText = 'Unblock';\n          blockButton.addEventListener('click', unblock, {\n            once: true\n          });\n        } else if (response.status === 422) {\n          window.alert(\"Something went wrong: \".concat(response.error, \". -- Please refresh the page to try again.\"));\n        }\n      })[\"catch\"](function (e) {\n        window.alert(\"Something went wrong: \".concat(e, \". -- Please refresh the page to try again.\"));\n      });\n    } else {\n      blockButton.addEventListener('click', block, {\n        once: true\n      });\n    }\n  } // userData() is a global function\n\n  /* eslint-disable-next-line no-undef */\n\n\n  var user = userData();\n\n  if (!user) {\n    return;\n  }\n\n  if (user.id === parseInt(profileUserId, 10)) {\n    blockButton.style.display = 'none';\n  } else {\n    fetch(\"/user_blocks/\".concat(profileUserId)).then(function (response) {\n      return response.json();\n    }).then(function (response) {\n      if (response.result === 'blocking') {\n        blockButton.innerText = 'Unblock';\n        blockButton.addEventListener('click', unblock, {\n          once: true\n        });\n      } else {\n        blockButton.addEventListener('click', block, {\n          once: true\n        });\n      }\n    });\n  }\n}\n/* eslint-enable no-alert *///# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vLi9hcHAvamF2YXNjcmlwdC9wcm9maWxlRHJvcGRvd24vYmxvY2tCdXR0b24uanM/YTI1MiJdLCJuYW1lcyI6WyJpbml0QmxvY2siLCJibG9ja0J1dHRvbiIsImRvY3VtZW50IiwiZ2V0RWxlbWVudEJ5SWQiLCJwcm9maWxlVXNlcklkIiwiZGF0YXNldCIsInVuYmxvY2siLCJmZXRjaCIsIm1ldGhvZCIsImhlYWRlcnMiLCJBY2NlcHQiLCJ3aW5kb3ciLCJjc3JmVG9rZW4iLCJib2R5IiwiSlNPTiIsInN0cmluZ2lmeSIsInVzZXJfYmxvY2siLCJibG9ja2VkX2lkIiwidGhlbiIsInJlc3BvbnNlIiwianNvbiIsInJlc3VsdCIsImlubmVyVGV4dCIsImFkZEV2ZW50TGlzdGVuZXIiLCJibG9jayIsIm9uY2UiLCJzdGF0dXMiLCJhbGVydCIsImVycm9yIiwiZSIsImNvbmZpcm1CbG9jayIsImNvbmZpcm0iLCJ1c2VyIiwidXNlckRhdGEiLCJpZCIsInBhcnNlSW50Iiwic3R5bGUiLCJkaXNwbGF5Il0sIm1hcHBpbmdzIjoiQUFBQTtBQUFBO0FBQUE7QUFFZSxTQUFTQSxTQUFULEdBQXFCO0FBQ2xDLE1BQU1DLFdBQVcsR0FBR0MsUUFBUSxDQUFDQyxjQUFULENBQ2xCLHdDQURrQixDQUFwQjs7QUFHQSxNQUFJLENBQUNGLFdBQUwsRUFBa0I7QUFDaEI7QUFDQTtBQUNEOztBQVBpQyxNQVExQkcsYUFSMEIsR0FRUkgsV0FBVyxDQUFDSSxPQVJKLENBUTFCRCxhQVIwQjs7QUFVbEMsV0FBU0UsT0FBVCxHQUFtQjtBQUNqQkMsU0FBSyx3QkFBaUJILGFBQWpCLEdBQWtDO0FBQ3JDSSxZQUFNLEVBQUUsUUFENkI7QUFFckNDLGFBQU8sRUFBRTtBQUNQQyxjQUFNLEVBQUUsa0JBREQ7QUFFUCx3QkFBZ0JDLE1BQU0sQ0FBQ0MsU0FGaEI7QUFHUCx3QkFBZ0I7QUFIVCxPQUY0QjtBQU9yQ0MsVUFBSSxFQUFFQyxJQUFJLENBQUNDLFNBQUwsQ0FBZTtBQUNuQkMsa0JBQVUsRUFBRTtBQUNWQyxvQkFBVSxFQUFFYjtBQURGO0FBRE8sT0FBZjtBQVArQixLQUFsQyxDQUFMLENBYUdjLElBYkgsQ0FhUSxVQUFDQyxRQUFEO0FBQUEsYUFBY0EsUUFBUSxDQUFDQyxJQUFULEVBQWQ7QUFBQSxLQWJSLEVBY0dGLElBZEgsQ0FjUSxVQUFDQyxRQUFELEVBQWM7QUFDbEIsVUFBSUEsUUFBUSxDQUFDRSxNQUFULEtBQW9CLFdBQXhCLEVBQXFDO0FBQ25DcEIsbUJBQVcsQ0FBQ3FCLFNBQVosR0FBd0IsT0FBeEI7QUFDQTs7QUFDQXJCLG1CQUFXLENBQUNzQixnQkFBWixDQUE2QixPQUE3QixFQUFzQ0MsS0FBdEMsRUFBNkM7QUFBRUMsY0FBSSxFQUFFO0FBQVIsU0FBN0M7QUFDRCxPQUpELE1BSU8sSUFBSU4sUUFBUSxDQUFDTyxNQUFULEtBQW9CLEdBQXhCLEVBQTZCO0FBQ2xDZixjQUFNLENBQUNnQixLQUFQLGlDQUMyQlIsUUFBUSxDQUFDUyxLQURwQztBQUdEO0FBQ0YsS0F4QkgsV0F5QlMsVUFBQ0MsQ0FBRCxFQUFPO0FBQ1psQixZQUFNLENBQUNnQixLQUFQLGlDQUMyQkUsQ0FEM0I7QUFHRCxLQTdCSDtBQThCRDs7QUFFRCxXQUFTTCxLQUFULEdBQWlCO0FBQ2YsUUFBTU0sWUFBWSxHQUFHbkIsTUFBTSxDQUFDb0IsT0FBUCxrTkFBckI7O0FBTUEsUUFBSUQsWUFBSixFQUFrQjtBQUNoQnZCLFdBQUssaUJBQWlCO0FBQ3BCQyxjQUFNLEVBQUUsTUFEWTtBQUVwQkMsZUFBTyxFQUFFO0FBQ1BDLGdCQUFNLEVBQUUsa0JBREQ7QUFFUCwwQkFBZ0JDLE1BQU0sQ0FBQ0MsU0FGaEI7QUFHUCwwQkFBZ0I7QUFIVCxTQUZXO0FBT3BCQyxZQUFJLEVBQUVDLElBQUksQ0FBQ0MsU0FBTCxDQUFlO0FBQ25CQyxvQkFBVSxFQUFFO0FBQ1ZDLHNCQUFVLEVBQUViO0FBREY7QUFETyxTQUFmO0FBUGMsT0FBakIsQ0FBTCxDQWFHYyxJQWJILENBYVEsVUFBQ0MsUUFBRDtBQUFBLGVBQWNBLFFBQVEsQ0FBQ0MsSUFBVCxFQUFkO0FBQUEsT0FiUixFQWNHRixJQWRILENBY1EsVUFBQ0MsUUFBRCxFQUFjO0FBQ2xCLFlBQUlBLFFBQVEsQ0FBQ0UsTUFBVCxLQUFvQixTQUF4QixFQUFtQztBQUNqQ3BCLHFCQUFXLENBQUNxQixTQUFaLEdBQXdCLFNBQXhCO0FBQ0FyQixxQkFBVyxDQUFDc0IsZ0JBQVosQ0FBNkIsT0FBN0IsRUFBc0NqQixPQUF0QyxFQUErQztBQUFFbUIsZ0JBQUksRUFBRTtBQUFSLFdBQS9DO0FBQ0QsU0FIRCxNQUdPLElBQUlOLFFBQVEsQ0FBQ08sTUFBVCxLQUFvQixHQUF4QixFQUE2QjtBQUNsQ2YsZ0JBQU0sQ0FBQ2dCLEtBQVAsaUNBQzJCUixRQUFRLENBQUNTLEtBRHBDO0FBR0Q7QUFDRixPQXZCSCxXQXdCUyxVQUFDQyxDQUFELEVBQU87QUFDWmxCLGNBQU0sQ0FBQ2dCLEtBQVAsaUNBQzJCRSxDQUQzQjtBQUdELE9BNUJIO0FBNkJELEtBOUJELE1BOEJPO0FBQ0w1QixpQkFBVyxDQUFDc0IsZ0JBQVosQ0FBNkIsT0FBN0IsRUFBc0NDLEtBQXRDLEVBQTZDO0FBQUVDLFlBQUksRUFBRTtBQUFSLE9BQTdDO0FBQ0Q7QUFDRixHQW5GaUMsQ0FxRmxDOztBQUNBOzs7QUFDQSxNQUFNTyxJQUFJLEdBQUdDLFFBQVEsRUFBckI7O0FBQ0EsTUFBSSxDQUFDRCxJQUFMLEVBQVc7QUFDVDtBQUNEOztBQUVELE1BQUlBLElBQUksQ0FBQ0UsRUFBTCxLQUFZQyxRQUFRLENBQUMvQixhQUFELEVBQWdCLEVBQWhCLENBQXhCLEVBQTZDO0FBQzNDSCxlQUFXLENBQUNtQyxLQUFaLENBQWtCQyxPQUFsQixHQUE0QixNQUE1QjtBQUNELEdBRkQsTUFFTztBQUNMOUIsU0FBSyx3QkFBaUJILGFBQWpCLEVBQUwsQ0FDR2MsSUFESCxDQUNRLFVBQUNDLFFBQUQ7QUFBQSxhQUFjQSxRQUFRLENBQUNDLElBQVQsRUFBZDtBQUFBLEtBRFIsRUFFR0YsSUFGSCxDQUVRLFVBQUNDLFFBQUQsRUFBYztBQUNsQixVQUFJQSxRQUFRLENBQUNFLE1BQVQsS0FBb0IsVUFBeEIsRUFBb0M7QUFDbENwQixtQkFBVyxDQUFDcUIsU0FBWixHQUF3QixTQUF4QjtBQUNBckIsbUJBQVcsQ0FBQ3NCLGdCQUFaLENBQTZCLE9BQTdCLEVBQXNDakIsT0FBdEMsRUFBK0M7QUFBRW1CLGNBQUksRUFBRTtBQUFSLFNBQS9DO0FBQ0QsT0FIRCxNQUdPO0FBQ0x4QixtQkFBVyxDQUFDc0IsZ0JBQVosQ0FBNkIsT0FBN0IsRUFBc0NDLEtBQXRDLEVBQTZDO0FBQUVDLGNBQUksRUFBRTtBQUFSLFNBQTdDO0FBQ0Q7QUFDRixLQVRIO0FBVUQ7QUFDRjtBQUVEIiwiZmlsZSI6Ii4vYXBwL2phdmFzY3JpcHQvcHJvZmlsZURyb3Bkb3duL2Jsb2NrQnV0dG9uLmpzLmpzIiwic291cmNlc0NvbnRlbnQiOlsiLyogZXNsaW50LWRpc2FibGUgbm8tYWxlcnQgKi9cblxuZXhwb3J0IGRlZmF1bHQgZnVuY3Rpb24gaW5pdEJsb2NrKCkge1xuICBjb25zdCBibG9ja0J1dHRvbiA9IGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKFxuICAgICd1c2VyLXByb2ZpbGUtZHJvcGRvd25tZW51LWJsb2NrLWJ1dHRvbicsXG4gICk7XG4gIGlmICghYmxvY2tCdXR0b24pIHtcbiAgICAvLyBidXR0b24gbm90IGFsd2F5cyBwcmVzZW50IHdoZW4gdGhpcyBpcyBjYWxsZWRcbiAgICByZXR1cm47XG4gIH1cbiAgY29uc3QgeyBwcm9maWxlVXNlcklkIH0gPSBibG9ja0J1dHRvbi5kYXRhc2V0O1xuXG4gIGZ1bmN0aW9uIHVuYmxvY2soKSB7XG4gICAgZmV0Y2goYC91c2VyX2Jsb2Nrcy8ke3Byb2ZpbGVVc2VySWR9YCwge1xuICAgICAgbWV0aG9kOiAnREVMRVRFJyxcbiAgICAgIGhlYWRlcnM6IHtcbiAgICAgICAgQWNjZXB0OiAnYXBwbGljYXRpb24vanNvbicsXG4gICAgICAgICdYLUNTUkYtVG9rZW4nOiB3aW5kb3cuY3NyZlRva2VuLFxuICAgICAgICAnQ29udGVudC1UeXBlJzogJ2FwcGxpY2F0aW9uL2pzb24nLFxuICAgICAgfSxcbiAgICAgIGJvZHk6IEpTT04uc3RyaW5naWZ5KHtcbiAgICAgICAgdXNlcl9ibG9jazoge1xuICAgICAgICAgIGJsb2NrZWRfaWQ6IHByb2ZpbGVVc2VySWQsXG4gICAgICAgIH0sXG4gICAgICB9KSxcbiAgICB9KVxuICAgICAgLnRoZW4oKHJlc3BvbnNlKSA9PiByZXNwb25zZS5qc29uKCkpXG4gICAgICAudGhlbigocmVzcG9uc2UpID0+IHtcbiAgICAgICAgaWYgKHJlc3BvbnNlLnJlc3VsdCA9PT0gJ3VuYmxvY2tlZCcpIHtcbiAgICAgICAgICBibG9ja0J1dHRvbi5pbm5lclRleHQgPSAnQmxvY2snO1xuICAgICAgICAgIC8qIGVzbGludC1kaXNhYmxlLW5leHQtbGluZSBuby11c2UtYmVmb3JlLWRlZmluZSAqL1xuICAgICAgICAgIGJsb2NrQnV0dG9uLmFkZEV2ZW50TGlzdGVuZXIoJ2NsaWNrJywgYmxvY2ssIHsgb25jZTogdHJ1ZSB9KTtcbiAgICAgICAgfSBlbHNlIGlmIChyZXNwb25zZS5zdGF0dXMgPT09IDQyMikge1xuICAgICAgICAgIHdpbmRvdy5hbGVydChcbiAgICAgICAgICAgIGBTb21ldGhpbmcgd2VudCB3cm9uZzogJHtyZXNwb25zZS5lcnJvcn0gLS0gUGxlYXNlIHJlZnJlc2ggdGhlIHBhZ2UgdG8gdHJ5IGFnYWluLmAsXG4gICAgICAgICAgKTtcbiAgICAgICAgfVxuICAgICAgfSlcbiAgICAgIC5jYXRjaCgoZSkgPT4ge1xuICAgICAgICB3aW5kb3cuYWxlcnQoXG4gICAgICAgICAgYFNvbWV0aGluZyB3ZW50IHdyb25nOiAke2V9LiAtLSBQbGVhc2UgcmVmcmVzaCB0aGUgcGFnZSB0byB0cnkgYWdhaW4uYCxcbiAgICAgICAgKTtcbiAgICAgIH0pO1xuICB9XG5cbiAgZnVuY3Rpb24gYmxvY2soKSB7XG4gICAgY29uc3QgY29uZmlybUJsb2NrID0gd2luZG93LmNvbmZpcm0oXG4gICAgICBgQXJlIHlvdSBzdXJlIHlvdSB3YW50IHRvIGJsb2NrIHRoaXMgcGVyc29uPyBUaGlzIHdpbGw6XG4gICAgICAtIHByZXZlbnQgdGhlbSBmcm9tIGNvbW1lbnRpbmcgb24geW91ciBwb3N0c1xuICAgICAgLSBibG9jayBhbGwgbm90aWZpY2F0aW9ucyBmcm9tIHRoZW1cbiAgICAgIC0gcHJldmVudCB0aGVtIGZyb20gbWVzc2FnaW5nIHlvdSB2aWEgREVWIENvbm5lY3RgLFxuICAgICk7XG4gICAgaWYgKGNvbmZpcm1CbG9jaykge1xuICAgICAgZmV0Y2goYC91c2VyX2Jsb2Nrc2AsIHtcbiAgICAgICAgbWV0aG9kOiAnUE9TVCcsXG4gICAgICAgIGhlYWRlcnM6IHtcbiAgICAgICAgICBBY2NlcHQ6ICdhcHBsaWNhdGlvbi9qc29uJyxcbiAgICAgICAgICAnWC1DU1JGLVRva2VuJzogd2luZG93LmNzcmZUb2tlbixcbiAgICAgICAgICAnQ29udGVudC1UeXBlJzogJ2FwcGxpY2F0aW9uL2pzb24nLFxuICAgICAgICB9LFxuICAgICAgICBib2R5OiBKU09OLnN0cmluZ2lmeSh7XG4gICAgICAgICAgdXNlcl9ibG9jazoge1xuICAgICAgICAgICAgYmxvY2tlZF9pZDogcHJvZmlsZVVzZXJJZCxcbiAgICAgICAgICB9LFxuICAgICAgICB9KSxcbiAgICAgIH0pXG4gICAgICAgIC50aGVuKChyZXNwb25zZSkgPT4gcmVzcG9uc2UuanNvbigpKVxuICAgICAgICAudGhlbigocmVzcG9uc2UpID0+IHtcbiAgICAgICAgICBpZiAocmVzcG9uc2UucmVzdWx0ID09PSAnYmxvY2tlZCcpIHtcbiAgICAgICAgICAgIGJsb2NrQnV0dG9uLmlubmVyVGV4dCA9ICdVbmJsb2NrJztcbiAgICAgICAgICAgIGJsb2NrQnV0dG9uLmFkZEV2ZW50TGlzdGVuZXIoJ2NsaWNrJywgdW5ibG9jaywgeyBvbmNlOiB0cnVlIH0pO1xuICAgICAgICAgIH0gZWxzZSBpZiAocmVzcG9uc2Uuc3RhdHVzID09PSA0MjIpIHtcbiAgICAgICAgICAgIHdpbmRvdy5hbGVydChcbiAgICAgICAgICAgICAgYFNvbWV0aGluZyB3ZW50IHdyb25nOiAke3Jlc3BvbnNlLmVycm9yfS4gLS0gUGxlYXNlIHJlZnJlc2ggdGhlIHBhZ2UgdG8gdHJ5IGFnYWluLmAsXG4gICAgICAgICAgICApO1xuICAgICAgICAgIH1cbiAgICAgICAgfSlcbiAgICAgICAgLmNhdGNoKChlKSA9PiB7XG4gICAgICAgICAgd2luZG93LmFsZXJ0KFxuICAgICAgICAgICAgYFNvbWV0aGluZyB3ZW50IHdyb25nOiAke2V9LiAtLSBQbGVhc2UgcmVmcmVzaCB0aGUgcGFnZSB0byB0cnkgYWdhaW4uYCxcbiAgICAgICAgICApO1xuICAgICAgICB9KTtcbiAgICB9IGVsc2Uge1xuICAgICAgYmxvY2tCdXR0b24uYWRkRXZlbnRMaXN0ZW5lcignY2xpY2snLCBibG9jaywgeyBvbmNlOiB0cnVlIH0pO1xuICAgIH1cbiAgfVxuXG4gIC8vIHVzZXJEYXRhKCkgaXMgYSBnbG9iYWwgZnVuY3Rpb25cbiAgLyogZXNsaW50LWRpc2FibGUtbmV4dC1saW5lIG5vLXVuZGVmICovXG4gIGNvbnN0IHVzZXIgPSB1c2VyRGF0YSgpO1xuICBpZiAoIXVzZXIpIHtcbiAgICByZXR1cm47XG4gIH1cblxuICBpZiAodXNlci5pZCA9PT0gcGFyc2VJbnQocHJvZmlsZVVzZXJJZCwgMTApKSB7XG4gICAgYmxvY2tCdXR0b24uc3R5bGUuZGlzcGxheSA9ICdub25lJztcbiAgfSBlbHNlIHtcbiAgICBmZXRjaChgL3VzZXJfYmxvY2tzLyR7cHJvZmlsZVVzZXJJZH1gKVxuICAgICAgLnRoZW4oKHJlc3BvbnNlKSA9PiByZXNwb25zZS5qc29uKCkpXG4gICAgICAudGhlbigocmVzcG9uc2UpID0+IHtcbiAgICAgICAgaWYgKHJlc3BvbnNlLnJlc3VsdCA9PT0gJ2Jsb2NraW5nJykge1xuICAgICAgICAgIGJsb2NrQnV0dG9uLmlubmVyVGV4dCA9ICdVbmJsb2NrJztcbiAgICAgICAgICBibG9ja0J1dHRvbi5hZGRFdmVudExpc3RlbmVyKCdjbGljaycsIHVuYmxvY2ssIHsgb25jZTogdHJ1ZSB9KTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICBibG9ja0J1dHRvbi5hZGRFdmVudExpc3RlbmVyKCdjbGljaycsIGJsb2NrLCB7IG9uY2U6IHRydWUgfSk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICB9XG59XG5cbi8qIGVzbGludC1lbmFibGUgbm8tYWxlcnQgKi9cbiJdLCJzb3VyY2VSb290IjoiIn0=\n//# sourceURL=webpack-internal:///./app/javascript/profileDropdown/blockButton.js\n");

/***/ })

},[["./app/javascript/packs/profileDropdown.js","runtime~profileDropdown"]]]);