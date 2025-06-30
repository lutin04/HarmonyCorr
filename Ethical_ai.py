from transformers import pipeline

classifier = pipeline("zero-shot-classification", model="facebook/bart-large-mnli")

def detect_bias(text):
    labels = ["positive", "neutral", "negative"]
    result = classifier(text, candidate_labels=labels)
    print("\n🔍 Résultat d'analyse éthique :")
    for r in result["labels"]:
        print(f"{r} ➜ score : {round(result['scores'][result['labels'].index(r)]*100, 2)}%")

if __name__ == "__main__":
    example = input("Texte à analyser : ")
    detect_bias(example)
