# @param m easing method
# @param t current time
# @param i initial range
# @param e eventual range
# @param lim limit condition
module.exports = (m, t, i, e, lim = false) ->
	try
		t=(m (t-i[0])/(i[1]-i[0]))*(e[1]-e[0])+e[0]
		if !lim then t
		# Clamps regardless of position, only if value is surpassed
		else if t > e[1] then e[1] else if t < e[0] then e[0] else t
	catch err
		throw "#{err.name}: Only use easing curves defined in your library (~/lib)"