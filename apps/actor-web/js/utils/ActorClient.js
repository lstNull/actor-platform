var DialogActionCreators = require('../actions/DialogActionCreators.react');

var setDialogs = function(dialogs) {
    DialogActionCreators.setDialogs(dialogs);
};

var ActorClient = {
  isLoggedIn: function() {
    return(window.messenger.isLoggedIn());
  },

  bindDialogs: function() {
    window.messenger.bindDialogs(setDialogs);
  },

  unbindDialogs: function() {
    window.messenger.unbindDialogs(setDialogs);
  }
};

module.exports = ActorClient;