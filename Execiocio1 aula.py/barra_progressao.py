import time    
def progress_bar(duration):
    for i in range(101):
        progress = '#' * i
        empty_space = '' * (100 - i)
        bar = '[' + progress + empty_space + ']'
        percent = str(i) + '%'
        print('\r' + bar + percent, end='')
        time.sleep(duration/100)
        

    print('\nConcluído!') 

print(progress_bar(5))



