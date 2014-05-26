hookwidth = 66;		// witdh of hook
hookthick = 4;		// thickness of part
hooktop = 44;		// length of top we hang on
hooklatch = 100;		// length of overhang latch (twice as long on hanger side)
hookfront = 60;
hookback = 50;
hooktip = 25;

rotate ([90,0,0]) union () 
{
	cube ([hooktop,hookwidth,hookthick]);
	rotate ([0,90,0]) cube ([hookback,hookwidth,hookthick]);
	rotate ([0,90,0]) 
		{
			translate ([-hookthick,0,hooktop]) 
				{
					union ()
						{
							cube ([hookfront + hookthick,hookwidth,hookthick]);
							translate ([hookfront + hookthick,0,hookthick]) rotate ([0,-100,0]) cube ([hooklatch,hookwidth,hookthick]);
							translate ([hookfront - (sin(10) * hooklatch) + hookthick,0,hookthick + hooklatch]) rotate ([0,-180,0]) cube ([hooktip,hookwidth,hookthick]);
							translate ([hookfront,0,hookthick]) rotate ([-90,0,0]) cylinder (h = hookwidth, r = (hookthick / 2) + 2, $fn = 100);
						}
				}
		}
}
