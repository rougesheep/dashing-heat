class Dashing.Heat extends Dashing.Widget

	constructor: ->
		super

	onData: (data) ->
		return if not @value
		percent = @value

		backgroundClass = switch
			when percent < 50 then 'bad'
			when percent < 70 then 'medium'
			when percent <= 99 then 'good'
			when percent = 100 then 'perfect'
			else 'erm'

		lastClass = @lastClass

		if lastClass != backgroundClass
    		$(@node).toggleClass("#{lastClass} #{backgroundClass}")
    		@lastClass = backgroundClass

    ready: ->
    	@onData(null)