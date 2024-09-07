import sys
import pandas as pd
import json

def convert_excel_to_json(excel_path, json_path):
    # 读取Excel文件
    df = pd.read_excel(excel_path)

    # 将DataFrame转换为字典列表
    data = df.to_dict(orient='records')

    # 使用json.dump写入格式化的JSON数据到文件
    with open(json_path, 'w') as file:
        json.dump(data, file, indent=4)  # indent参数设置为4，表示使用4个空格缩进

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python xlsx_to_json.py <excel_path>")
        sys.exit(1)

    # 获取命令行参数
    excel_path = sys.argv[1]
    json_path = excel_path.split('.')[0]+'.json'

    # 调用函数
    convert_excel_to_json(excel_path, json_path)
    print("Conversion completed successfully!")
