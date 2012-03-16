define(['widget'], function(Widget) {
    describe('Administration Widget', function() {
        it('should set full name', function() {
            widget = new Widget()
            widget.setName('bob', 'cobb');
            expect(widget.get('name')).toBe('bob cobb');
        });
    });
});
