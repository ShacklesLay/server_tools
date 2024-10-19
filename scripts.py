import json
import os

def jload(path):
    with open(path, 'r') as f:
        data = json.load(f)
    return data

def jdump(data, path):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        data = json.dump(data, f, ensure_ascii=False, indent=4)
        
def jlload(path):
    jsonl_data_list = []
    with open(path, 'r') as f:
        for line in f:
            try:
                json_obj = json.loads(line)
                jsonl_data_list.append(json_obj)
            except json.JSONDecodeError as e:
                print(f"Error decoding JSON from line: {line}. Error: {e}")
    return jsonl_data_list

def jldump(data, path):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w', encoding='utf-8') as file:
        for item in data:
            # 将字典转换为JSON字符串，并写入文件
            json_str = json.dumps(item, ensure_ascii=False)
            file.write(json_str + '\n')
    
