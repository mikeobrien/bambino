define(['app', 'widget'], function(app, Widget) {
    describe('app', function() {
        it('should render view', function() {
            view = new app.WidgetView({ model: new Widget({ name: 'bob' }) });
            expect(view.render().$el.html()).toBe('<span>bob</span>');
        });
        describe('FooWidget', function() {
            it('should set full name', function() {
                widget = new app.FooWidget()
                widget.setName('bob', 'cobb');
                expect(widget.get('name')).toBe('bob cobb');
            });
        });
        describe('assertion', function() {
            it('should fail', function() {
                expect(1).toBe(2);
            });
            it('should throw exception', function() {
                throw 'something bad happened!!';
            });
        });
    });
});
