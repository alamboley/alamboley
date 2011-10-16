package alamboley.utils {

	/**
	 * @author Aymeric
	 */
	public class Regex {
		
		static public function isValidEmail(email:String):Boolean {
			
			var emailExpression:RegExp = /^[\w.-]+@\w[\w.-]+\.[\w.-]*[a-z][a-z]$/i;
		    return emailExpression.test(email);
		}

		static public function twitterFormatToHTMLText(text:String):String {

			var reg:RegExp = new RegExp('(http://[a-zA-Z0-9._/-]+)', "g");
			text = text.replace(reg, '<a target="blank" href="$1">$1</a>');

			reg = new RegExp('@([a-zA-Z0-9_]+)', "g");
			text = text.replace(reg, '<a target="blank" href="http://twitter.com/$1">@$1</a>');

			reg = new RegExp('\#([a-zA-Z0-9_-]+)', "g");
			text = text.replace(reg, ' <a target="blank" href="http://search.twitter.com/search?q=%23$1">#$1</a>');

			return text;
		}
	}
}
