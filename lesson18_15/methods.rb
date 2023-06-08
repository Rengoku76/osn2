require "net/http"
def word_exist?(word)
    uri = "http://ru.wiktionary.org/wiki/" + URI.encode_www_form_component(word)
    wiktionary_page = Net::HTTP.get(URI.parse(uri)).force_encoding("UTF-8")
    if wiktionary_page =~ /текст на данной странице отсутствует/
        return false
    else
        return true
    end
end
def random_regexp_string
    patterns = ["скат","ес","крик","ед"]
    pattern = patterns.sample
    letter = pattern.split('').sample
    return pattern.gsub(letter, '.')
end