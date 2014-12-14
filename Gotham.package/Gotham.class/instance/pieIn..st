as yet unclassified
pieIn: a

	a roassal2
		title: #name "'Issues'";
		painting: [ :view :class |
			| b items |
				items := OrderedCollection new.
				
				items add: (GothamPieNode name: 'Methods' value: class percMethodStatus color: Color red).
				items add: (GothamPieNode name: 'IVars' value: class percIvarStatus color: Color blue).
				
				class percMethodStatus + class percIvarStatus in: [ :sum |
					sum < 100 ifTrue: [
						items add: (GothamPieNode name: '' value: 100 - sum color: Color gray) ] ].
			
				b := RTPieBuilder new.
				b view: view.
				b interaction popupText: [ :e | e name, String space, e amount asString, '%'].
				b shape current
					innerRadius: 70;
					externalRadius: 100;
					color: #color.
				b objects: items.
				
			b slice: #amount.
			
			b labelled.
			b build ];
		dynamicActions: [ :sth | {
			 
			GLMGenericAction new
				action: [ sth entity browse ];
				icon: GLMUIThemeExtraIcons glamorousBrowse;
				title: 'Browse';
				yourself } ]

	