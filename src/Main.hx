class Main extends hxd.App {
	var parallax:Parallax;

	override function init() {
		createParallax();
	}

	static function main() {
		new Main();
	}

	override function update(dt:Float) {
		var speed:Int = -3; // Movement form gameBase
		parallax.update(dt, speed);
	}

	function createParallax() {
		hxd.Res.initEmbed();

		var backgrounds1:Array<Background> = new Array();
		var backgrounds2:Array<Background> = new Array();
		var backgrounds3:Array<Background> = new Array();

		var bc1 = new Background(new h2d.Bitmap(hxd.Res._1_Background.toTile(), s2d), 0.4);
		var bb1 = new Background(new h2d.Bitmap(hxd.Res._1_Background.toTile(), s2d), 0.4);
		var ba1 = new Background(new h2d.Bitmap(hxd.Res._1_Background.toTile(), s2d), 0.4);

		var bc2 = new Background(new h2d.Bitmap(hxd.Res._2_Superfar.toTile(), s2d), 0.5);
		var bb2 = new Background(new h2d.Bitmap(hxd.Res._2_Superfar.toTile(), s2d), 0.5);
		var ba2 = new Background(new h2d.Bitmap(hxd.Res._2_Superfar.toTile(), s2d), 0.5);

		var bc3 = new Background(new h2d.Bitmap(hxd.Res._3_Far.toTile(), s2d), 0.6);
		var bb3 = new Background(new h2d.Bitmap(hxd.Res._3_Far.toTile(), s2d), 0.6);
		var ba3 = new Background(new h2d.Bitmap(hxd.Res._3_Far.toTile(), s2d), 0.6);

		var bc4 = new Background(new h2d.Bitmap(hxd.Res._4_Far_light.toTile(), s2d), 0.6);
		var bb4 = new Background(new h2d.Bitmap(hxd.Res._4_Far_light.toTile(), s2d), 0.6);
		var ba4 = new Background(new h2d.Bitmap(hxd.Res._4_Far_light.toTile(), s2d), 0.6);

		var bc5 = new Background(new h2d.Bitmap(hxd.Res._5_Close.toTile(), s2d), 0.7);
		var bb5 = new Background(new h2d.Bitmap(hxd.Res._5_Close.toTile(), s2d), 0.7);
		var ba5 = new Background(new h2d.Bitmap(hxd.Res._5_Close.toTile(), s2d), 0.7);

		var bc6 = new Background(new h2d.Bitmap(hxd.Res._6_Close_light.toTile(), s2d), 0.7);
		var bb6 = new Background(new h2d.Bitmap(hxd.Res._6_Close_light.toTile(), s2d), 0.7);
		var ba6 = new Background(new h2d.Bitmap(hxd.Res._6_Close_light.toTile(), s2d), 0.7);

		var bc7 = new Background(new h2d.Bitmap(hxd.Res._7_Tileset.toTile(), s2d), 0.8);
		var bb7 = new Background(new h2d.Bitmap(hxd.Res._7_Tileset.toTile(), s2d), 0.8);
		var ba7 = new Background(new h2d.Bitmap(hxd.Res._7_Tileset.toTile(), s2d), 0.8);

		backgrounds1.push(ba1);
		backgrounds1.push(ba2);
		backgrounds1.push(ba3);
		backgrounds1.push(ba4);
		backgrounds1.push(ba5);
		backgrounds1.push(ba6);
		backgrounds1.push(ba7);
		backgrounds2.push(bb1);
		backgrounds2.push(bb2);
		backgrounds2.push(bb3);
		backgrounds2.push(bb4);
		backgrounds2.push(bb5);
		backgrounds2.push(bb6);
		backgrounds2.push(bb7);
		backgrounds3.push(bc1);
		backgrounds3.push(bc2);
		backgrounds3.push(bc3);
		backgrounds3.push(bc4);
		backgrounds3.push(bc5);
		backgrounds3.push(bc6);
		backgrounds3.push(bc7);

		parallax = new Parallax(s2d, 314, backgrounds1, backgrounds2, backgrounds3);
	}
}
