import subprocess as sb
import sys

def get_command(rID):
    cmd = ["curl", "-sw", "-H", "\"Host:uspdigital.usp.br\nConnection:keep-alive\nContent-Length:280\nOrigin:https://uspdigital.usp.br\nUser-Agent:Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Mobile Safari/537.36\nContent-Type:text/plain\nAccept:*/*\nReferer:https://uspdigital.usp.br/rucard/Jsp/cardapioSAS.jsp\nAccept-Encoding:gzip, deflate, br\nAccept-Language:pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4,fr;q=0.2\nRequest Payload:\"", "-X", "POST", "-d","callCount=1\nwindowName=1\nnextReverseAjaxIndex=0\nc0-scriptName=CardapioControleDWR\nc0-methodName=obterCardapioRestUSP\nc0-id=0\nc0-param0=string:{}\nbatchId=1\ninstanceId=0\npage=%2Frucard%2FJsp%2FcardapioSAS.jsp%3Fcodrtn%3D0\nscriptSessionId=".format(rID), "https://uspdigital.usp.br/rucard/dwr/call/plaincall/CardapioControleDWR.obterCardapioRestUSP.dwr"]
    return cmd

def main():
    c = sys.argv[1]
    cdp = get_command(c)	# 6- Central, 7- Prefeitura, 8- Física, 9- Química
    cdp = sb.check_output(cdp)
    print(cdp)

main()
