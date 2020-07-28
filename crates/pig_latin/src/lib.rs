#[macro_use]
extern crate helix;

ruby! {
    class PigLatin {
        def translate(text: String) -> String {
        	let mut result = String::new();

        	for word in text.split_whitespace() {
        		match word.chars().next() {
        			Some(c) => {
        				match c {
        					'a' | 'e' | 'i' | 'o' | 'u' => { result.push_str(&(word.to_owned() + "yay ")); }
        					_ => { 
        						let mut new_word = word[1..].to_owned();
        						new_word.push(c);
        						new_word.push_str("ay");
        						result.push_str(&(new_word + " ")); 
        					}
        				}
        			},
        			None => {}
        		}
        	}
        	// for i in 0..words.len
        	/* match text.as_str()[0].to_lowercase() {
        		'a' | 'e' | 'i' | 'o' | 'u' => text.clone() + "yay",
        		_ => &text[1..].clone() + &text[0] + "ay";
        	} */

        	result
        }
    }
}
