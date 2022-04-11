import json

with open('./data/questions.json', 'r+') as f:
    questions = json.load(f)
    out = open('./out/questions-bulk-0.json', 'w')
    for idx, q in enumerate(questions):
        index = {
            "index": {
                "_index": "jeopardy",
                "_id": idx + 1
            }
        }
        if q['value']:
            q['value'] = q['value'].replace('$', '').replace(',', '')
        else:
            q['value'] = '0'
        json.dump(index, out)
        out.write('\n')
        json.dump(q, out)
        out.write('\n')
        if idx > 0 and idx % 15000 == 0:
            out = open(f'./out/questions-bulk-{idx // 15000}.json', 'w')

