as yet unclassified
builder

	| builder packages |

	packages := self packages.

	builder := CCBuilder new description: 'Platforms and stacked boxes'.
	builder shapeBuilder platform color: Color veryLightGray.
	builder packingLayout.
	builder
		nodes: (packages)
		forEach: [ :p |
			| cn |
			cn := CCColorNormalizer new
				low: Color gray;
				high: Color red;
				transformation: [ :c | c status min: 1 ];
				population: p definedClasses;
				yourself.
			
			builder shapeBuilder box
				color: cn;
				height: [ :c | c status * 5 ]";
				width: #linesOfCode;
				depth: #linesOfCode".
			builder packingLayout.
			builder nodes: p definedClasses ].
		
	^ builder top