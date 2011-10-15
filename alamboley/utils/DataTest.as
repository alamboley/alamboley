package alamboley.utils {

	/**
	 * @author Aymeric
	 */
	public class DataTest {

		static public function isSubclass(a:Class, b:Class):Boolean {
			//by skyboy
			if (int(!a) | int(!b)) return false;
			return (a == b || a.prototype instanceof b);
		}
	}
}
