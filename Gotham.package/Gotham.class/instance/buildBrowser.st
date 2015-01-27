as yet unclassified
buildBrowser

	browser := GLMTabulator new.
	
	browser title: 'System Quality Browser'.
	
	browser
		row: [ :r | r
			column: #city;
			column: #status ];
		row: #stats size: 60.
		
	browser transmit to: #city; andShow: [ :a |
		a city
      title: 'Packages';
      builder: self builder ].

	browser transmit to: #stats; andShow: [ :a |
		a text
      title: 'Statistics';
      display: self stats ].

	browser transmit
		from: #city;
		to: #status; andShow: [ :a | 
			self pieIn: a ]. 