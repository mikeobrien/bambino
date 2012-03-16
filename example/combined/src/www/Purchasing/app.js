define(['underscore', 'backbone', 'widget', 'text!widget-template.html'], function(_, Backbone, Widget, template) {
    WidgetView = Backbone.View.extend({
        render: function() {
            this.$el.html(_.template(template, {name: 'bob'}))
            return this;
        }
    });
    return {
        WidgetView: WidgetView,
        FooWidget: Widget.extend(),
        start: function() {
            console.log('App starting...');
        }
    }
});