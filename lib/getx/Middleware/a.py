from langdetect import detect

text = "This is an example text in English."

language = detect(text)

print(language)
