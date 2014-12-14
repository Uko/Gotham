as yet unclassified
buildBrowser

	browser := GLMTabulator new.
	browser
		column: #city;
		column: #status.
	browser transmit to: #city; andShow: [ :a |
		a city
      title: 'Package';
      builder: self builder ].

	browser transmit
		from: #city;
		to: #status; andShow: [ :a | 
			a list
				display: [:packageName |
					packageName inspect ] ]. 