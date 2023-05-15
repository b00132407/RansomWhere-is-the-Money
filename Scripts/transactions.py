import datetime
import json
import os
import requests
import time

inputFilename = r'HSE.txt' #Change this for every group/input file of ransom addresses
outputDirectory = 'DatabaseOutputs'#folder for output files
outputFilename = 'HSEDB.txt'#change this to same name as input/output file for ransom transactions
apiEndpoint = 'https://blockchain.info/rawaddr/'

with open(inputFilename, 'r') as inputFile:
    walletAddresses = [line.strip() for line in inputFile]

outputPath = os.path.join(outputDirectory, outputFilename)#add to output folders

with open(outputPath, 'w') as outputFile:
    for walletAddress in walletAddresses:#loop through addresses
        response = requests.get(apiEndpoint + walletAddress)
        data = json.loads(response.text)
        transactions = data['txs']

        for tx in transactions:#loop thorugh transactions
            for output in tx['out']:#valid transactions
                if output['addr'] == walletAddress:#verify transactions
                    date = datetime.datetime.utcfromtimestamp(tx['time']) #convert Unix to UTC
                    amount = output['value']#value in satoshis
                    sourceWallets = []
                    for input in tx['inputs']:#source wallets
                        if 'prev_out' in input:
                            sourceWallets.append(input['prev_out']['addr'])
                    outputFile.write(f"('{sourceWallets}','{date}','{amount / 100000000}','{walletAddress}')") 
                    outputFile.write('\n')
        time.sleep(5)#delay to avoid IP ban    
        
print("done")