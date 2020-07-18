foreach($i in 1..20){
"https://r1---sn-fxnuapo3cg-bpbe.googlevideo.com/videoplayback?expire=1564629780&ei=tAZCXen-KYfewwSil77oCA&ip=138.97.64.245&id=o-AOYlHPURG8MQ8MwdQsww27GZm8W6CDelzBX5nxJA59zx&itag=140&source=youtube&requiressl=yes&mm=31%2C29&mn=sn-fxnuapo3cg-bpbe%2Csn-gpv7dn7d&ms=au%2Crdu&mv=m&mvi=0&pl=24&initcwndbps=668750&mime=audio%2Fmp4&gir=yes&clen=16488144&dur=1018.752&lmt=1564574451726463&mt=1564608103&fvip=3&keepalive=yes&c=WEB&txp=3411222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRAIga2Cq490RrGmAzqDnJFoTKBr59HAKyjjr2R2-gvuWjgcCIB6sGIDk2HE-L6penhhYUTz9TDVRNjczc-9odI2qnuTs&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AHylml4wRAIgFbLEdYyDiOJepqdgOnJoZVzfiEB-1p5YHDmngx0uK8MCIEBKHVP1GLwHWIJbTUNdMNR2ZTx3x58Y2e9xIz2k3aMH&alr=yes&cpn=LbqACFxErMkRffDE&cver=2.20190730.03.00"
}

$outdir = "c:"
$baseUrl = "http://someserver.com/asset/video/"
cd $outdir
$i = 50
do {
 $url = "$baseUrl/video_1464285826-2_$($i.ToString("00000")).ts"
 Write-Host "downloading file $($i.ToString("00000"))..." -nonewline
 try { Invoke-WebRequest $url -OutFile "$outdir\$($i.ToString("00000")).ts" -PassThru -ErrorAction Stop | Tee-Object -Variable request | Out-Null}
 catch{
 write-warning 'File not found or other error'
 
 break
 }
 write-host "[OK]"
 Start-Sleep -Seconds 2
 $i++
 }
until ($request.StatusCode -ne 200)