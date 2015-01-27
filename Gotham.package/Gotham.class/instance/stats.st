as yet unclassified
stats 
	| classes |
	classes := self packages flatCollect: #definedClasses.
	
	(classes collect: #status) in: [ :statuses |
		^ 'Average node problems: ',
		(statuses average * 100) rounded asString,
		'% | Tottal node problems: ',
		(statuses sum * 100) rounded asStringWithCommas, '%' ]