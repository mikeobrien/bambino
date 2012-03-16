define(['backbone'], function(Backbone) {
    return Backbone.Model.extend({
        setName: function(first, last) {
            this.set({name: first + ' ' + last});
        }
    });
});
