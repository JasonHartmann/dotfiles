g co pac
gl
g rebase feature/ERXD-30610-hyvee-mpa-ir
gl
g show HEAD
ssh webadm@ptload3
ssh webadm@ptload4
ssh webadm@ptload3
gs
gl
g reset HEAD~1
gs
g diff
g co -- Source/com/techrx/model/service/cps/rx/RxUpdateProcessor.java .idea/inspectionProfiles/EnterpriseRx.xml 
g diff
c
g diff
g co -- Source/com/techrx/model/service/workflow/common/RxTransferServicePersistorImpl.java
g diff
g co -- dev/client/log4j.properties
g diff
g co -- dev/domains/local/properties/sym_enterpriserx.ks dev/domains/local/properties/sym_keystore.config dev/domains/local/properties/sym_keystore.config 
gs
g diff
g co -- Source/com/techrx/util/JWTUtil.java
g diff
g co -- projects/erx-benchmarking/src/main/java/com/techrx/test/pac/scripts/bin/dsWriter.sh projects/erx-benchmarking/src/main/java/com/techrx/test/pac/scripts/bin/pac.env 
g diff
gs
g co -- projects/erx-benchmarking/src/main/java/com/techrx/test/pac/scripts/config/dataset.properties projects/erx-benchmarking/src/main/java/com/techrx/test/pac/scripts/config/launch.properties projects/erx-client/package-lock.json
gs
g diff
c
gc 'ERXD-32032 - PAC updates for Intelligent Router'
yeet
git push --set-upstream origin pac
gs
gc wip
g rebase -i HEAD~2
yeet -f
ant compileSrc start-jboss
export ERX_DB_VOLUME=erx-db-shieldm
dc up
cd /data/erx
ant compileSrc start-jboss
ssh root@ptconsumers.enterpriserx.ndchealth.com
ssh root@ptadmin01.enterpriserx.ndchealth.com
tail -F dev/client/logs/client.log 
~/deploy.sh 
ant start-jboss
cd ..
ls -la
ls -ltr
g clone ssh://git@bitbucket.mckesson.com:7999/mpsenv/ptlab.git
cd ptlab/
cd consumers/
ls -al
vi CfEligibilityConsumer.yaml
ls -la
ssh ptadmin01
ssh webadm@ptadmin01
cd /data/erx
cd projects/
./gradlew erx-benchmarking:bootJar
./gradlew erx-benchmarking:jar
ls -al erx-benchmarking/build/libs/
scp erx-benchmarking/build/libs/erx-benchmarking.jar webadm@ptload3:
cd ../lib
scp signalr-6.0.0-preview.7.21378.6.jar gson-2.8.7.jar okhttp-3.12.13.jar rxjava-3.0.13.jar reactive-streams-1.0.3.jar okio-2.4.0.wso2v1.jar kotlin-stdlib-1.5.30-M1.jar webadm@ptload3:/usr/local/benchmarking/lib
ls signalr/
cd signalr/
scp * webadm@ptload3:/usr/local/benchmarking/lib
ssh ptadmin01
ssh webadm@ptadmin01
cd ../..
gs
g co -- projects/erx-web/src/main/java/com/mck/mps/erx/rest/RestApplicationSecurityProvider.java
ant client
ant start-jboss
dc rm
dc up
ssh chuckles-admin.enterpriserx.ndchealth.com
tput reset
ssh webadm@ptload3
cd /data/erx
ant client
gs
ant client
ant compileSrc client
ant client
ant compileSrc client
gs
g stash
gs
g restore .
gs
g restore dev/client/autoupdate.properties
gs
rm dev/client/autoupdate.properties
g co 11.2.0.2-1642011667
gs
rm -fr projects/erx-batch/logs/
g resolve-dependencies compileSrc
ant resolve-dependencies compileSrc
ant fast
ant 
ant client
ant custom package database distribute
ant pack database distribute
ant compileSrc client
g stash pop
gs
g stash pop -f
g reset HEAD --hard
g stash pop 
ant compileSrc client
8
ant compileSrc client
gs
ant compileSrc client
vi dev/client/logs/client.log 
ant compileSrc client
ant custom package pack database distribute
ant compileSrc client
fg
ps -fe | grep Launcher
kill -9 430777
ant compileSrc client
gs
g co -- .idea
g co -- dev/client/log4j.properties
g co -- build/dev.xml
g diff
g co -- Source/com/techrx/app/trexone/ui/TRexLauncher.java
gs
tput reset
g diff
g a
gs
gl
gs
g co -- .idea
g a
gs
g diff HEAD
gs
gc 'ERXD-33270 JWT Login/Logout Cookie issues 
- It was sometimes possible for ERX to remove a cookie from its internal cookie store but Java could silently fail to deliver the event to the Observer due to a thread synchronization issue.  
Fix: The threading issue will be fixed and all events should then propagate.


On occasions when the remove event was properly posted, there was a chance that JxBrowser would fail to remove the cookie when all fields on the cookie were not an exact match for the one in the Chrome Cookie store. This usually happened due to a difference in the cookie domain when sometimes Chrome would prepend a “.” (period) to its cookie domain.
Fix: Instead of relying on JxBrowser’s CookieStore.delete() method, we will enumerate all Chrome Cookies and manually remove those that match on:
- Case-insensitive name match
- Partial domain match (“mckesson.com” would match “.mckesson.com” or “enterpriserx.ndchealth.com” would match  “.entrx-inet2.enterpriserx.ndchealth.com“).  Removal should be guaranteed because we will be calling CookieStore.delete() with an object that was retrieved from the store and will be a perfect match to remove.'
npm install -g npm@8.3.2
sudo npm install -g npm@8.3.2
cd projects/erx-client/
npm install
cd ../..
gc 'ERXD-33270 JWT Login/Logout Cookie issues 
- It was sometimes possible for ERX to remove a cookie from its internal cookie store but Java could silently fail to deliver the event to the Observer due to a thread synchronization issue.  
Fix: The threading issue will be fixed and all events should then propagate.


On occasions when the remove event was properly posted, there was a chance that JxBrowser would fail to remove the cookie when all fields on the cookie were not an exact match for the one in the Chrome Cookie store. This usually happened due to a difference in the cookie domain when sometimes Chrome would prepend a “.” (period) to its cookie domain.
Fix: Instead of relying on JxBrowser’s CookieStore.delete() method, we will enumerate all Chrome Cookies and manually remove those that match on:
- Case-insensitive name match
- Partial domain match (“mckesson.com” would match “.mckesson.com” or “enterpriserx.ndchealth.com” would match  “.entrx-inet2.enterpriserx.ndchealth.com“).  Removal should be guaranteed because we will be calling CookieStore.delete() with an object that was retrieved from the store and will be a perfect match to remove.'
gl
g reset HEAD~1
gc 'ERXD-33270 JWT Login/Logout Cookie issues 
- It was sometimes possible for ERX to remove a cookie from its internal cookie store but Java could silently fail to deliver the event to the Observer due to a thread synchronization issue.  
Fix: The threading issue will be fixed and all events should then propagate.
- On occasions when the remove event was properly posted, there was a chance that JxBrowser would fail to remove the cookie when all fields on the cookie were not an exact match for the one in the Chrome Cookie store. This usually happened due to a difference in the cookie domain when sometimes Chrome would prepend a “.” (period) to its cookie domain.
Fix: Instead of relying on JxBrowser’s CookieStore.delete() method, we will enumerate all Chrome Cookies and manually remove those that match on:
- Case-insensitive name match
- Partial domain match (“mckesson.com” would match “.mckesson.com” or “enterpriserx.ndchealth.com” would match  “.entrx-inet2.enterpriserx.ndchealth.com“).  Removal should be guaranteed because we will be calling CookieStore.delete() with an object that was retrieved from the store and will be a perfect match to remove.'
gl
gc 'ERXD-33270 JWT Login/Logout Cookie issues 
- The threading issue will be fixed and all events should then propagate.
- Instead of relying on JxBrowser’s CookieStore.delete() method, we will enumerate all Chrome Cookies and manually remove those that match on a Case-insensitive name match + Partial domain match'
gl
g reset HEAD~1
gc 'ERXD-33270 JWT Login/Logout Cookie issues 
- The threading issue will be fixed and all events should then propagate.
- Instead of relying on JxBrowser’s CookieStore.delete() method, we will enumerate all Chrome Cookies and manually remove those that match on a Case-insensitive name match + Partial domain match'
gl
g reset HEAD~1
gc 'ERXD-33270 JWT Login/Logout Cookie issues 
- Fixed threading issue and all events should now propagate.
- Instead of relying on JxBrowser’s CookieStore.delete() method, enumerate all Chrome Cookies and manually remove those that match on a Case-insensitive name match + Partial domain match'
ant resolve-dependencies
ant compileSrc client
gs
g update-index --assume-unchanged .idea/*
g update-index --assume-unchanged .idea/*.xml
g update-index --assume-unchanged .idea/compiler.xml 
g update-index --assume-unchanged .idea/misc.xml 
g update-index --assume-unchanged .idea/modules
g update-index --assume-unchanged .idea/modules.xml 
gs
g update-index --assume-unchanged erx.iml 
g update-index --assume-unchanged build/dev.xml 
g diff
c
gs
gl
g co HEAD~1
g stash
g co HEAD~1
g co -
g stash pop
g reset HEAD~1
gs
g co -- projects/erx-client/package-lock.json
c
ant compileSrc client
gs
rm dev/client/C\:\\ERX\\QA25\\DT/
rm -fr dev/client/C\:\\ERX\\QA25\\DT/
gs
g diff
g co -- Source/com/techrx/app/trexone/ui/TRexLauncher.java
gs
gc 'ERXD-33270 JWT Login/Logout Cookie issues 
- Fixed threading issue and all events should now propagate.
- Instead of relying on JxBrowser’s CookieStore.delete() method, enumerate all Chrome Cookies and manually remove those that match on a Case-insensitive name match + Partial domain match'
yeet
g co -b ERXD-33270
yeet
git push --set-upstream origin ERXD-33270
gs
g diff
gl
gc wip
g rebase -i HEAD~2
gl
yeet -f
c
ant compileSrc client
ssh webadm@ptadmin01
sudo vi /etc/hosts
ssh webadm@ptadmin01
sudo vi /etc/hosts
cd ../ptlab/consumers/
ls -al
vi ClientNotifyConsumer.yaml 
cd ../../erx
ant client
ps -fe | grep java
ps -fe | grep Launcher
cd
vi ~/oracle/network/admin/tnsnames.ora 
sqlplus jhartmann@txhyvp01\
sqlplus jhartmann@txhyvp01
sudo lsof -i :631
auth
postvpn
cd
postvpn
ip route
ssh erxbackup01
ssh erxbackup01.enterpriserx.ndchealth.com
cd
WINEPREFIX='/home/jhartmann/prefix32' WINEARCH='win32' wine explorer
cd ../..
WINEPREFIX='/home/jhartmann/prefix32' WINEARCH='win32' wine explorer
ant client
auth
fixvpn
cd /data/authorization-server/
./gradlew bootRun -Dprofiles.active=uat
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://dev-core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=client_credentials"| echo "Bearer" `jq -r ".access_token"`
cd salesforce-login/
vi api-key.json 
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://dev-core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
cd salesforce-login/
cat api-key.json 
mv api-key.json api-key.json.dev
vi api-key.json
auth
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://uat-core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
curl -vvv -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://uat-core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
vi api-key.json
cat *
curl -vvv -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://uat-core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
mv api-key.json api-key.json.uat
cp api-key.json.dev api-key.json
curl -vvv -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://dev-core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
az aks command invoke kubectl
az aks command invoke help
az aks command invoke --help
az aks command invoke -n core-authorization-server -g rg-aks-eastus-prod ls
az aks command invoke -n core-authorization-server -g rg-aks-eastus-prod -c ls
az login
az aks command invoke -n core-authorization-server -g rg-aks-eastus-prod -c ls
az aks command invoke --help
az aks command invoke -n core-authorization-server -g rg-aks-eastus-prod -c ls --subscription 88da2d67-b5be-4c9e-b806-c76944d931cb
az aks get-credentials -n core-authorization-server -g rg-aks-eastus-prod
az aks get-credentials -n core-authorization-server -g rg-aks-eastus-prod --subscription 88da2d67-b5be-4c9e-b806-c76944d931cb
az aks get-credentials -n aks-eastus-prod -g rg-aks-eastus-prod --subscription 88da2d67-b5be-4c9e-b806-c76944d931cb
kubectl
kubectl logs --help
kubectl logs core-authorization-server-0
kubectl logs c7bdb13e-2d5d-475f-b56c-d1a4dc7cd0c8
kubectl logs core-authorization-server-6b545dbb65
kubectl logs --help
kubectl --help
kubectl get-pods --namespace=core-uat
kubectl get pods --namespace=core-uat
kubectl logs core-authorization-server-0 --namespace core-uat
cd
ssh crashdown-admin.enterpriserx.ndchealth.com
curl 'https://login.microsoftonline.com/da67ef1b-ca59-4db2-9a8c-aa8d94617a16/oauth2/v2.0/authorize?client_id=1a65021a-8892-499f-9ef4-7f479a517f48&scope=urn%3A%2F%2Fmps-core-registry-uat%2Fmps-api-registry%20openid%20profile%20offline_access&redirect_uri=https%3A%2F%2Fmps-core-registry-uat.azurewebsites.net%2F&client-request-id=2cb99d12-20e2-45c9-a4b7-fef5e61cf703&response_mode=fragment&response_type=code&x-client-SKU=msal.js.browser&x-client-VER=2.21.0&x-client-OS=&x-client-CPU=&client_info=1&code_challenge=VvCoxLbV12JE87hY_cQxMdBXTNcFBRWN9DqdItVttTo&code_challenge_method=S256&nonce=a238486a-04fa-470b-ab7c-c3b7fb2f7dc6&state=eyJpZCI6IjM0MjVlMDhmLTdkMzUtNDAyOC1hNzg3LWFkMzU0YTU2M2YwZCIsIm1ldGEiOnsiaW50ZXJhY3Rpb25UeXBlIjoicmVkaXJlY3QifX0%3D'   -H 'Connection: keep-alive'   -H 'Pragma: no-cache'   -H 'Cache-Control: no-cache'   -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="96", "Google Chrome";v="96"'   -H 'sec-ch-ua-mobile: ?0'   -H 'sec-ch-ua-platform: "Linux"'   -H 'Upgrade-Insecure-Requests: 1'   -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36'   -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9'   -H 'Sec-Fetch-Site: cross-site'   -H 'Sec-Fetch-Mode: navigate'   -H 'Sec-Fetch-Dest: document'   -H 'Referer: https://mps-core-registry-uat.azurewebsites.net/'   -H 'Accept-Language: en-US,en;q=0.9'   -H 'Cookie: esctx=AQABAAAAAAD--DLA3VO7QrddgJg7WevrxLN1LJ_HXDNb27h_TdlcOYsv9brtait7Uy-lJG1r6Ccl8Y4U7-gfHNZI2SXxE7TMhSfRrWiXX0hwlhz53SUgX15OGJKxeP-Lrwg_Z_QGTIRAMuBj7Fye7GDHQv5bZj4ABgvOz1PHaKKHEqgM3wTAAO8vb-eB6-tZdJP6TcweWtkgAA; x-ms-gateway-slice=estsfd; stsservicecookie=estsfd; brcap=0; ESTSAUTHLIGHT=+23d09579-9ec3-4e40-949d-5c11129460db; ESTSSC=00; clrc={%2219045%22%3a[%22tPiviqtz%22%2c%22GiTRHW2K%22%2c%22htXDjmF6%22]}; CCState=RWhJS0VDVlF6MVErVys5TW90TnNvZFdyTEdZPQ==; ESTSAUTHPERSISTENT=0.ARMAG-9n2lnKsk2ajKqNlGF6Fh0EcCuYj6xPuE3Pc5Bhg28TAJI.AgABAAQAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P_iujxAbR3bn-ywXEVPBzfGBmaKDX5aDHNz7wPPpvAblpBNKLGQ3bIkT9-aLtkiHRIHtMNTOtYBuafin_MyoDxrLW4GBAoABf27EI0Kjp5-5OIhBNbl1Yni5rE1el1QfcfVr_oEKIJXSDb-h0AxMxhHRNbZo9MlxT7kxOz82r1-r9Z-BUS2RsFffGgJL2-OaDQjFwqCHUmEDOOCEWC9bmfgo_zrIOsde_Tv5PpzHXCLSJL1LjCJzbiLgDUSX9QXo7UPiB5EP_Aq3SRS1g-QCnoNdFDY34CqJCSb2oLo4Y6X_VJb85HE2Fkky8lDkqBecDgVgH0bIUFYZGJMpLuE2ZOAVLPBWn39JHfATnzTlZwzDFC3woARifh6tZ0GbBhENdJXzg11oObt-vyU1ezCRIt8YjzEJuuZ5yNFQ-_3Lmoa66_fMwd1KKi5u7CbLM-m2fBeq6lI9iXwHuGlQg_p41qH9kHlJ7l4sMeED9A5ikcxNM0u2WFKVv8VshDMXH2_emRHcXYT54QFGXv61o7ct49dGsCtoUFACPfMPx3TIg; ESTSAUTH=0.ARMAG-9n2lnKsk2ajKqNlGF6Fh0EcCuYj6xPuE3Pc5Bhg28TAJI.AgABAAQAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P8mzLu77Q1vaM6MIb3yFzrb5p221x2Jh97zWFKpH8tL_AgF9jJYtqdfL13btG_XaZmcq7qP4TFpyc5scKJDUmVNIzFJCcHeGBkFRqI5kijPlzMPE4cy5vr2bSCi69gwkhWECL3UcYw2DiZcZOktde36P-lyR3CfNKptGxk-sOO2C4YQSMAbp5bOLkMKHbp7kuAOpmqH7eeb9eDbLofsZH3wQAPEGmy1To-QB71FxsnAnW6VvlORvH-98LXV7FLrKeXdTlLxq2gmeDu4V47biHQU30vCfwXt7HhIad4TSEXjxbRmK-aPQuTQTj4yFk5MDQ1oL_TyxNGtjQPPMuh3479csCFs5Ft8Z9swgOCxAr_Yl3617S9pPAGxC5Fg1dHwhY8voELExnWg2I4pHQaNFyd2upCFQoeyNuj3ZNtK2Sm_yc9t4T0T4bJ6XtzWlVAodcil9pNLeKW7SXL8jotzAEdIL7LMfDHLaOQ3QyWQ5n71tM8uj2GRHlXVW4GUszOO1YYAay8kHWsvJeIghddAoWMdT-DreuS7UUMea0mq8WzP2oVrosjwmaMzRcSzMt_F3GTBUpZEWahK4Lgyr-njCl7wJ8S6t-D-Or9wYS4-kbZU59sZ6QsW1o16CBgoTr0qME3KdX8tGgBKMNrmpwV0jcm-M9yyKItWi1aR1VU0RLh2AJ0Ogy0uvS0IGdGmLimmpQk7frlJnTiLvAWTZZfq71IW6kc; ch=OTOLaHqq1cKrPppjpEkr7Yf2nAR_IfRoRxxhsKcPjjo; SignInStateCookie=CAgABAAIAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P9f8oTA7ePX2CqVVnQv40S5blO_eJFXfBCEyeLg32Zpc9hlPvdiK3lDqW0TOapHtw7LCM3DKstQkMAC2HnWG8vc9m1vvj46FdknxJdiGDjcn1qsnoUM8nqdb3nbPFTio10NXJVCDcqAANzDuuKJHEYFx2aYRAeuANrzuOS8cfcU0bStfz8tP3uOhAvzrFs5BxfEr06xzEfuTE01gAXdDKJb2y1NC4SKH5AUcNZCSlhkBZ7SSk5KNJIQMcdf4OYwBGanJOpd9L-9rzanaZpUbENjSnKjdEEQschLFTPF5suhZLD8K-pJxfS7uLduLQKETavRfffKb6gGTPKmqq_X7YUKWKjExJYAQ7iOlIcqUBzkZtNmHEA253RFSBeIg5q7BMJ-xZZQgvLVyFQ6BqiX1o0; buid=0.ARMAG-9n2lnKsk2ajKqNlGF6Fh0EcCuYj6xPuE3Pc5Bhg28TAJI.AQABAAEAAAD--DLA3VO7QrddgJg7WevrCBCk-JjNWigZP9U4cZ789NmQQ0R1YTTMWnwKPS1bkgWJ6uh3a1-dCQoyQAlphRb7iGQgeJ3H2Ns1XBVDwC3jueTvxsXlu0SEsMLviRRO0LC6TVmAjoP5YbpkIl8B9JGE1cTL3CVllVbz7cRP_gsf6enWTCCxgZffMw2FD5cpUWEgAA; fpc=AidsiMtjZLBEnYwFsD2nfb9aUTeaAQAAAIXJpdkOAAAAZQoY2gEAAACUyaXZDgAAAJaDqoIBAAAAp8ml2Q4AAAA'   --compressed
curl 'https://login.microsoftonline.com/da67ef1b-ca59-4db2-9a8c-aa8d94617a16/oauth2/v2.0/authorize?client_id=1a65021a-8892-499f-9ef4-7f479a517f48&scope=urn%3A%2F%2Fmps-core-registry-uat%2Fmps-api-registry%20openid%20profile%20offline_access&redirect_uri=https%3A%2F%2Fmps-core-registry-uat.azurewebsites.net%2F&client-request-id=3cb99d12-20e2-45c9-a4b7-fef5e61cf703&response_mode=fragment&response_type=code&x-client-SKU=msal.js.browser&x-client-VER=2.21.0&x-client-OS=&x-client-CPU=&client_info=1&code_challenge=VvCoxLbV12JE87hY_cQxMdBXTNcFBRWN9DqdItVttTo&code_challenge_method=S256&nonce=a238486a-04fa-470b-ab7c-c3b7fb2f7dc6&state=eyJpZCI6IjM0MjVlMDhmLTdkMzUtNDAyOC1hNzg3LWFkMzU0YTU2M2YwZCIsIm1ldGEiOnsiaW50ZXJhY3Rpb25UeXBlIjoicmVkaXJlY3QifX0%3D'   -H 'Connection: keep-alive'   -H 'Pragma: no-cache'   -H 'Cache-Control: no-cache'   -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="96", "Google Chrome";v="96"'   -H 'sec-ch-ua-mobile: ?0'   -H 'sec-ch-ua-platform: "Linux"'   -H 'Upgrade-Insecure-Requests: 1'   -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36'   -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9'   -H 'Sec-Fetch-Site: cross-site'   -H 'Sec-Fetch-Mode: navigate'   -H 'Sec-Fetch-Dest: document'   -H 'Referer: https://mps-core-registry-uat.azurewebsites.net/'   -H 'Accept-Language: en-US,en;q=0.9'   -H 'Cookie: esctx=AQABAAAAAAD--DLA3VO7QrddgJg7WevrxLN1LJ_HXDNb27h_TdlcOYsv9brtait7Uy-lJG1r6Ccl8Y4U7-gfHNZI2SXxE7TMhSfRrWiXX0hwlhz53SUgX15OGJKxeP-Lrwg_Z_QGTIRAMuBj7Fye7GDHQv5bZj4ABgvOz1PHaKKHEqgM3wTAAO8vb-eB6-tZdJP6TcweWtkgAA; x-ms-gateway-slice=estsfd; stsservicecookie=estsfd; brcap=0; ESTSAUTHLIGHT=+23d09579-9ec3-4e40-949d-5c11129460db; ESTSSC=00; clrc={%2219045%22%3a[%22tPiviqtz%22%2c%22GiTRHW2K%22%2c%22htXDjmF6%22]}; CCState=RWhJS0VDVlF6MVErVys5TW90TnNvZFdyTEdZPQ==; ESTSAUTHPERSISTENT=0.ARMAG-9n2lnKsk2ajKqNlGF6Fh0EcCuYj6xPuE3Pc5Bhg28TAJI.AgABAAQAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P_iujxAbR3bn-ywXEVPBzfGBmaKDX5aDHNz7wPPpvAblpBNKLGQ3bIkT9-aLtkiHRIHtMNTOtYBuafin_MyoDxrLW4GBAoABf27EI0Kjp5-5OIhBNbl1Yni5rE1el1QfcfVr_oEKIJXSDb-h0AxMxhHRNbZo9MlxT7kxOz82r1-r9Z-BUS2RsFffGgJL2-OaDQjFwqCHUmEDOOCEWC9bmfgo_zrIOsde_Tv5PpzHXCLSJL1LjCJzbiLgDUSX9QXo7UPiB5EP_Aq3SRS1g-QCnoNdFDY34CqJCSb2oLo4Y6X_VJb85HE2Fkky8lDkqBecDgVgH0bIUFYZGJMpLuE2ZOAVLPBWn39JHfATnzTlZwzDFC3woARifh6tZ0GbBhENdJXzg11oObt-vyU1ezCRIt8YjzEJuuZ5yNFQ-_3Lmoa66_fMwd1KKi5u7CbLM-m2fBeq6lI9iXwHuGlQg_p41qH9kHlJ7l4sMeED9A5ikcxNM0u2WFKVv8VshDMXH2_emRHcXYT54QFGXv61o7ct49dGsCtoUFACPfMPx3TIg; ESTSAUTH=0.ARMAG-9n2lnKsk2ajKqNlGF6Fh0EcCuYj6xPuE3Pc5Bhg28TAJI.AgABAAQAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P8mzLu77Q1vaM6MIb3yFzrb5p221x2Jh97zWFKpH8tL_AgF9jJYtqdfL13btG_XaZmcq7qP4TFpyc5scKJDUmVNIzFJCcHeGBkFRqI5kijPlzMPE4cy5vr2bSCi69gwkhWECL3UcYw2DiZcZOktde36P-lyR3CfNKptGxk-sOO2C4YQSMAbp5bOLkMKHbp7kuAOpmqH7eeb9eDbLofsZH3wQAPEGmy1To-QB71FxsnAnW6VvlORvH-98LXV7FLrKeXdTlLxq2gmeDu4V47biHQU30vCfwXt7HhIad4TSEXjxbRmK-aPQuTQTj4yFk5MDQ1oL_TyxNGtjQPPMuh3479csCFs5Ft8Z9swgOCxAr_Yl3617S9pPAGxC5Fg1dHwhY8voELExnWg2I4pHQaNFyd2upCFQoeyNuj3ZNtK2Sm_yc9t4T0T4bJ6XtzWlVAodcil9pNLeKW7SXL8jotzAEdIL7LMfDHLaOQ3QyWQ5n71tM8uj2GRHlXVW4GUszOO1YYAay8kHWsvJeIghddAoWMdT-DreuS7UUMea0mq8WzP2oVrosjwmaMzRcSzMt_F3GTBUpZEWahK4Lgyr-njCl7wJ8S6t-D-Or9wYS4-kbZU59sZ6QsW1o16CBgoTr0qME3KdX8tGgBKMNrmpwV0jcm-M9yyKItWi1aR1VU0RLh2AJ0Ogy0uvS0IGdGmLimmpQk7frlJnTiLvAWTZZfq71IW6kc; ch=OTOLaHqq1cKrPppjpEkr7Yf2nAR_IfRoRxxhsKcPjjo; SignInStateCookie=CAgABAAIAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P9f8oTA7ePX2CqVVnQv40S5blO_eJFXfBCEyeLg32Zpc9hlPvdiK3lDqW0TOapHtw7LCM3DKstQkMAC2HnWG8vc9m1vvj46FdknxJdiGDjcn1qsnoUM8nqdb3nbPFTio10NXJVCDcqAANzDuuKJHEYFx2aYRAeuANrzuOS8cfcU0bStfz8tP3uOhAvzrFs5BxfEr06xzEfuTE01gAXdDKJb2y1NC4SKH5AUcNZCSlhkBZ7SSk5KNJIQMcdf4OYwBGanJOpd9L-9rzanaZpUbENjSnKjdEEQschLFTPF5suhZLD8K-pJxfS7uLduLQKETavRfffKb6gGTPKmqq_X7YUKWKjExJYAQ7iOlIcqUBzkZtNmHEA253RFSBeIg5q7BMJ-xZZQgvLVyFQ6BqiX1o0; buid=0.ARMAG-9n2lnKsk2ajKqNlGF6Fh0EcCuYj6xPuE3Pc5Bhg28TAJI.AQABAAEAAAD--DLA3VO7QrddgJg7WevrCBCk-JjNWigZP9U4cZ789NmQQ0R1YTTMWnwKPS1bkgWJ6uh3a1-dCQoyQAlphRb7iGQgeJ3H2Ns1XBVDwC3jueTvxsXlu0SEsMLviRRO0LC6TVmAjoP5YbpkIl8B9JGE1cTL3CVllVbz7cRP_gsf6enWTCCxgZffMw2FD5cpUWEgAA; fpc=AidsiMtjZLBEnYwFsD2nfb9aUTeaAQAAAIXJpdkOAAAAZQoY2gEAAACUyaXZDgAAAJaDqoIBAAAAp8ml2Q4AAAA'   --compressed
curl 'https://login.microsoftonline.com/da67ef1b-ca59-4db2-9a8c-aa8d94617a16/oauth2/v2.0/authorize?client_id=1a65021a-8892-499f-9ef4-7f479a517f48&scope=urn%3A%2F%2Fmps-core-registry-uat%2Fmps-api-registry%20openid%20profile%20offline_access&redirect_uri=https%3A%2F%2Fmps-core-registry-uat.azurewebsites.net%2F&client-request-id=3cb99d12-20e2-45c9-a4b7-fef5e61cf703&response_mode=fragment&response_type=code&x-client-SKU=msal.js.browser&x-client-VER=2.21.0&x-client-OS=&x-client-CPU=&client_info=1&code_challenge=VvCoxLbV12JE87hY_cQxMdBXTNcFBRWN9DqdItVttTo&code_challenge_method=S256&nonce=a238486a-04fa-470b-ab7c-c3b7fb2f7dc6&state=eyJpZCI6IjM0MjVlMDhmLTdkMzUtNDAyOC1hNzg3LWFkMzU0YTU2M2YwZCIsIm1ldGEiOnsiaW50ZXJhY3Rpb25UeXBlIjoicmVkaXJlY3QifX0%3D'   -H 'Connection: keep-alive'   -H 'Pragma: no-cache'   -H 'Cache-Control: no-cache'  -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="96", "Google Chrome";v="96"'   -H 'sec-ch-ua-mobile: ?0'   -H 'sec-ch-ua-platform: "Linux"'   -H 'Upgrade-Insecure-Requests: 1'   -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36'   -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9'   -H 'Sec-Fetch-Site: cross-site'   -H 'Sec-Fetch-Mode: navigate'   -H 'Sec-Fetch-Dest: document'   -H 'Referer: https://mps-core-registry-uat.azurewebsites.net/'   -H 'Accept-Language: en-US,en;q=0.9' 
curl 'https://login.microsoftonline.com/da67ef1b-ca59-4db2-9a8c-aa8d94617a16/oauth2/v2.0/authorize?client_id=1a65021a-8892-499f-9ef4-7f479a517f48&scope=urn%3A%2F%2Fmps-core-registry-uat%2Fmps-api-registry%20openid%20profile%20offline_access&redirect_uri=https%3A%2F%2Fmps-core-registry-uat.azurewebsites.net%2F&client-request-id=3cb99d12-20e2-45c9-a4b7-fef5e61cf703&response_mode=fragment&response_type=code&x-client-SKU=msal.js.browser&x-client-VER=2.21.0&x-client-OS=&x-client-CPU=&client_info=1&code_challenge=VvCoxLbV12JE87hY_cQxMdBXTNcFBRWN9DqdItVttTo&code_challenge_method=S256&nonce=a238486a-04fa-470b-ab7c-c3b7fb2f7dc6&state=eyJpZCI6IjM0MjVlMDhmLTdkMzUtNDAyOC1hNzg3LWFkMzU0YTU2M2YwZCIsIm1ldGEiOnsiaW50ZXJhY3Rpb25UeXBlIjoicmVkaXJlY3QifX0%3D' -H 'Pragma: no-cache'   -H 'Cache-Control: no-cache' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' -H 'Referer: https://mps-core-registry-uat.azurewebsites.net/'
curl 'https://login.microsoftonline.com/da67ef1b-ca59-4db2-9a8c-aa8d94617a16/oauth2/v2.0/authorize?client_id=1a65021a-8892-499f-9ef4-7f479a517f48&scope=urn%3A%2F%2Fmps-core-registry-uat%2Fmps-api-registry%20openid%20profile%20offline_access&redirect_uri=https%3A%2F%2Fmps-core-registry-uat.azurewebsites.net%2F&client-request-id=3cb99d12-20e2-45c9-a4b7-fef5e61cf703&response_mode=fragment&response_type=code&x-client-SKU=msal.js.browser&x-client-VER=2.21.0&x-client-OS=&x-client-CPU=&client_info=1&code_challenge=VvCoxLbV12JE87hY_cQxMdBXTNcFBRWN9DqdItVttTo&code_challenge_method=S256&nonce=a238486a-04fa-470b-ab7c-c3b7fb2f7dc6&state=eyJpZCI6IjM0MjVlMDhmLTdkMzUtNDAyOC1hNzg3LWFkMzU0YTU2M2YwZCIsIm1ldGEiOnsiaW50ZXJhY3Rpb25UeXBlIjoicmVkaXJlY3QifX0%3D'
curl 'https://login.microsoftonline.com/da67ef1b-ca59-4db2-9a8c-aa8d94617a16/oauth2/v2.0/authorize?client_id=1a65021a-8892-499f-9ef4-7f479a517f48&scope=urn%3A%2F%2Fmps-core-registry-uat%2Fmps-api-registry%20openid%20profile%20offline_access&redirect_uri=https%3A%2F%2Fmps-core-registry-uat.azurewebsites.net%2F


curl 'https://login.microsoftonline.com/da67ef1b-ca59-4db2-9a8c-aa8d94617a16/oauth2/v2.0/authorize?client_id=1a65021a-8892-499f-9ef4-7f479a517f48&scope=urn%3A%2F%2Fmps-core-registry-uat%2Fmps-api-registry%20openid%20profile%20offline_access&redirect_uri=https%3A%2F%2Fmps-core-registry-uat.azurewebsites.net%2F'
curl -v https://login.microsoftonline.com/da67ef1b-ca59-4db2-9a8c-aa8d94617a16/oauth2/v2.0/authorize?client_id=1a65021a-8892-499f-9ef4-7f479a517f48&scope=urn%3A%2F%2Fmps-core-registry-uat%2Fmps-api-registry%20openid%20profile%20offline_access&redirect_uri=https%3A%2F%2Fmps-core-registry-uat.azurewebsites.net
curl 'https://login.microsoftonline.com/da67ef1b-ca59-4db2-9a8c-aa8d94617a16/oauth2/v2.0/authorize?client_id=1a65021a-8892-499f-9ef4-7f479a517f48&scope=urn%3A%2F%2Fmps-core-registry-uat%2Fmps-api-registry%20openid%20profile%20offline_access&redirect_uri=https%3A%2F%2Fmps-core-registry-uat.azurewebsites.net%2F'
curl -v 'https://login.microsoftonline.com/da67ef1b-ca59-4db2-9a8c-aa8d94617a16/oauth2/v2.0/authorize?client_id=1a65021a-8892-499f-9ef4-7f479a517f48&scope=urn%3A%2F%2Fmps-core-registry-uat%2Fmps-api-registry%20openid%20profile%20offline_access&redirect_uri=https%3A%2F%2Fmps-core-registry-uat.azurewebsites.net%2F'
curl -v 'https://login.microsoftonline.com/da67ef1b-ca59-4db2-9a8c-aa8d94617a16/oauth2/v2.0/authorize?client_id=1a65021a-8892-499f-9ef4-7f479a517f48&scope=urn%3A%2F%2Fmps-core-registry%2Fmps-api-registry%20openid%20profile%20offline_access&redirect_uri=https%3A%2F%2Fmps-core-registry-uat.azurewebsites.net%2F'
cd /mnt/c/games/blizzard/diablo_3/
ls -la
ls *.exe
pwd
WINEPREFIX='/home/jhartmann/prefix32' WINEARCH='win32' wine /mnt/c/games/blizzard/diablo_3/Diablo\ III.exe 
ps
az keyvault
az keyvault list
az keyvault --help
az --help
az keyvault --help
az keyvault show --help
cd /data/registry-ui/
gs
vi .git/config
gc 'added scope variable'
yeet
gc wip
g rebase -i HEAD~2
yeet -f
gc wip
g rebase -i HEAD~2
yeet -f
alias
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` http://localhost:8080/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
cd 
cd salesforce-login/
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` http://localhost:8080/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
\
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` http://localhost:8080/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
cp api-key.json.uat api-key.json
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://uat-core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
cat api-key.json
history
cd ../authorization-server/
./gradlew bootRun -Dprofiles.active=cf-dev-01
./gradlew bootRun -Dprofiles.active=dev
gs
g diff
g co -- src/main/resources/application-uat.yml
history
export ERX_DB_VOLUME=erx-db-shieldm
dc up
history
history
powersheel
powershell
vi cmm.json 
vi salesforce.pem
openssl 
openssl rsa salesforce.pem 
openssl rsa salesforce.pem -help
openssl rsa -help
openssl rsa -in salesforce.pem -text
openssl rsa -help
openssl rsa -in salesforce.pem -check
history
history
toad
FIXVPN
fixvpn
postvpn
./guake.sh
./TUNNEL
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
toad
cd /data/generichttpresponsesimulator/
./gradlew bootRun
cd /data/erx
ant client
gs
g diff
g reset HEAD --hard
gs
rm dev/client/autoupdate.properties
ant client
mv bin/build/interface.cer ~
cd
mv interface.cer interface-hyveeuat.cer
cd -
ant client
locate interface_BUT
locate interface_BUT.cer
locate BUT.cer
locate BUT
locate *.cer
cp /data/erx/dev/server/jboss-eap-7.1/modules/system/layers/base/com/techrx/configuration/main/PCI-PT/interface_IRV.cer bin/build
cd ../certs/
ls -la
jar -tvf erx.zip 
jar -tvf interface.zip 
cd 
ls -la
cd /data
cd /mnt/c/
ls -al
cd
mount
cd /data/erx
ant client
tput reset
ant client
c
ant client
c
ant client
c
ant client
fixvpn
postvpn
fixvpn
sudo snap install postman
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
cd /data/kafka-consumer/
11
SPRING_PROFILES_ACTIVE=signalr ./gradlew GenericHttpConsumer:bootRun
journalctl -b > bootlog.txt
vi bootlog.txt 
sudo reboot now
cd ../erx
c
~/deploy.sh 
ant start-jboss
c
ant start-jboss
auth
export AUTH=`auth`
curl -vvv -X POST -H "Authorization: ${AUTH}" -H "content-type: application/json" https://entrx-inet2.enterpriserx.ndchealth.com:15200/ndcq36/api/v1/messages/1614627/priorauths/
cd /data/erx
ant client
c
ant client
c
ant client
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
cd /data/kafka-consumer/
11
SPRING_PROFILES_ACTIVE=signalr ./gradlew GenericHttpConsumer:bootRun
cd /data/kafka-consumer/
11
SPRING_PROFILES_ACTIVE=cf-eligibility ./gradlew GenericHttpConsumer:bootRun
SPRING_PROFILES_ACTIVE=cfeligibility ./gradlew GenericHttpConsumer:bootRun
cd /data/generichttpresponsesimulator/
./gradlew
./gradlew bootRun
export ERX_DB_VOLUME=erx-db-shieldm
dc up
cd ../authorization-server/
./gradlew bootRun -Dprofiles.active=dev
./gradlew bootRun -Dprofiles.active=prod
ssh erxbackup01
ssh erxbackup01.enterpriserx.ndchealth.com
ssh crashdown-admin.enterpriserx.ndchealth.com
ip route
fixvpn
postvpn 
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
auth
alias
cd ..
auth
vi api-key.json 
auth
cd Downloads/
ls -ltr
mv 00D3j000000hovE\ \(2\).jks /tmp/cmm.jks
cd /tmp
keytool -importkeystore -srckeystore cmm.jks -destkeystore cmm.p12 -srcstoretype jks -deststoretype pkcs12 --help
keytool -importkeystore -srckeystore cmm.jks -destkeystore cmm.p12 -srcstoretype jks -deststoretype pkcs12 -help
keytool -importkeystore -srckeystore cmm.jks -destkeystore cmm.p12 -srcstoretype jks -deststoretype pkcs12 -list
keytool -list -keystore cmm.jks
keytool -importkeystore -srckeystore cmm.jks -destkeystore cmm.p12 -srcstoretype jks -deststoretype pkcs12 -srcalias selfsignedcert_ir_25jan2022
ls -ltr
cat cmm.p12 
openssl pkcs12 -nodes -in cmm.p12 -out cmm.pem
17
keytool -importkeystore -srckeystore cmm.jks -destkeystore cmm.p12 -srcstoretype jks -deststoretype pkcs12 -srcalias selfsignedcert_ir_25jan2022
openssl pkcs12 -nodes -in cmm.p12 -out cmm.pem
export PATH=$JAVA_HOME/bin:$PATH
keytool -importkeystore -srckeystore cmm.jks -destkeystore cmm.p12 -srcstoretype jks -deststoretype pkcs12 -srcalias selfsignedcert_ir_25jan2022
openssl pkcs12 -nodes -in cmm.p12 -out cmm.pem
rm cmm.p12 
rm cmm.pem
which keytool
keytool -importkeystore -srckeystore cmm.jks -destkeystore cmm.p12 -srcstoretype jks -deststoretype pkcs12 -srcalias selfsignedcert_ir_25jan2022
openssl pkcs12 -nodes -in cmm.p12 -out cmm.pem
cat cmm.pem
cat ~/Downloads/key.crt 
rm cmm.p12 
rm cmm.pem 
keytool -list -keystore cmm.jks
keytool -importkeystore -srckeystore cmm.jks -destkeystore cmm.p12 -srcstoretype jks -deststoretype pkcs12 -srcalias selfsignedcert_20may2021_143730
openssl pkcs12 -nodes -in cmm.p12 -out cmm.pem
cat cmm.pem
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
cd salesforce-login/
cp api-key.json.prod api-key.json
cd salesforce-login/
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
cp api-key.json.dev api-key.json
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` http://localhost:8080/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
mv api-key.json.prod api-key.json
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
11
cd /data/kafka-consumer/
SPRING_PROFILES_ACTIVE=cfeligibility ./gradlew GenericHttpConsumer:bootRun
ping hungarian-admin.enterpriserx.ndchealth.com
11
cd /data/kafka-consumer/
11
SPRING_PROFILES_ACTIVE=signalr ./gradlew GenericHttpConsumer:bootRun
vi ~/oracle/network/admin/tnsnames.ora 
vi ~/oracle/network/admin/sqlnet.ora 
sqlplus jhartmann@txmyop01
vi ~/oracle/network/admin/tnsnames.ora 
sqlplus jhartmann@txmyop01.world
vi ~/oracle/network/admin/tnsnames.ora 
vi ~/oracle/network/admin/sqlnet.ora 
vi ~/oracle/network/admin/tnsnames.ora 
sqlplus jhartmann@txhyvp01
vi ~/oracle/network/admin/sqlnet.ora 
vi ~/oracle/network/admin/tnsnames.ora 
cat ~/oracle/network/admin/tnsnames.ora
sqlplus jhartmann@txhyvp01
vi ~/oracle/network/admin/tnsnames.ora 
sqlplus jhartmann@txnfdp01
vi ~/oracle/network/admin/tnsnames.ora 
sqlplus jhartmann@txnfdp01
vi ~/oracle/network/admin/tnsnames.ora 
sqlplus jhartmann@txnfdp01
sqlplus jhartmann@txwegp01
sqlplus jhartmann@txhyvp01
cd /data/erx
ant client
gs
rm dev/client/autoupdate.properties 
g co 11.3.0.0-1646074657
gl
g co development
gl
cp ~/Downloads/interface\ \(3\).cer bin/build/interface.cer
gs
ant client
c
ant client
mv bin/build/interface.cer /data/certs/interface_hyvee_uat.cer
ant client
sqlplus jhartmann@txhyvp01
ant compileSrc start-jboss
~/deploy.sh 
cat ~/deploy.sh 
ant compileSrc start-jboss
g stash
ant compileSrc start-jboss
g diff
gs
g co -- .
g stash pop
g diff
gc 'ERXD-34191 - ICQPersistorImpl.filterQueue Not Using Bind Parameters
- reworked ICQ filter query to use f_in_list instead of dynamic SQL for facility filter'
gs
g co -- dev/client/autoupdate.properties
rm dev/client/autoupdate.properties
gl
gf
g rebase upstream/development
gs
g rebase --continue
gl
yeet
ant compileSrc start-jboss
ant token resolve-dependencies compileSrc
ant token resolve-dependencies buildPreGradleProjectsDev compileSrc
ant compile
ant compileSrc start-jboss
~/deploy.sh 
ant compileSrc start-jboss
ps
kill -9 125450
ant compileSrc start-jboss
ant custom package pack database distribute
rm -fr bin/dist/database/db
ant database distribute
~/deploy.sh 
ant compileSrc start-jboss
ps
kill -9 160832
ps
ant compileSrc start-jboss
gs
rm dev/client/autoupdate.properties
g co -- projects/erx-client/package-lock.json
g reset HEAD~1
gc 'ERXD-34191 - ICQPersistorImpl.filterQueue Not Using Bind Parameters
- reworked ICQ filter query to use f_in_list instead of dynamic SQL for facility filter'
g show HEAD
yeet
yeet -f
gf
g reset HEAD~1
gc 'ERXD-34191 - ICQPersistorImpl.filterQueue Not Using Bind Parameters
- reworked ICQ filter query to use f_in_list instead of dynamic SQL for facility filter'
yeet -f
c
ant static-analysis
yeet -f
ant static-analysis
g reset HEAD~1
gc 'ERXD-34191 - ICQPersistorImpl.filterQueue Not Using Bind Parameters
- reworked ICQ filter query to use f_in_list instead of dynamic SQL for facility filter'
yeet -f
c
g show 9a12def390df44aaf2bf61c08df22b2e1556a220
gl
gf
ant compileSrc start-jboss
./gradlew -p projects erx-server:bootWar
ant compileSrc start-jboss
./gradlew -p projects erx-server:bootWar
ant compileSrc start-jboss
./gradlew -p projects erx-server:bootWar
ant compileSrc start-jboss
./gradlew -p projects erx-server:bootWar
ant compileSrc start-jboss
./gradlew -p projects erx-server:bootWar
ant compileSrc start-jboss
./gradlew -p projects erx-server:bootWar
ant compileSrc start-jboss
./gradlew -p projects erx-kafka:jar
cp projects/erx-kafka/build/libs/erx-kafka.jar dev/server/jboss-eap-7.1/standalone/deployments/EnterpriseRx.ear/lib/erx-kafka.jar 
ant compileSrc start-jboss
gf
g diff 11.1.27234.0-164323506 12.0.0.0-1647533667 | grep -i person
gl | grep 11.1.27234
g diff 11.1.27234.0-1643235065 12.0.0.0-1647533667 | grep -i person
ssh crashdown-admin.enterprise5rx.ndchealth.com
ssh crashdown-admin.enterpriserx.ndchealth.com
cd salesforce-login/
ls -al
cat api-key.json
alias
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=client_credentials"
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
cat api-key.json
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://core.rxservices.mckesson.com/mps/auth/v1//oauth/token -d "grant_type=salesforce_oauth"
curl -u "+DA/r9UCuXY+QJzPI6Pn2+wa2XTnMeptokl1dhnZztY=:a98f69363d58eacbccbd2879f7285c75" https://core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
curl -u "+DA/r9UCuXY+QJzPI6Pn2+wa2XTnMeptokl1dhnZztY=:a98f69363d58eacbccbd2879f7285c75" https://core.rxservices.mckesson.com/mps/auth/v1/oauth/token/ -d "grant_type=salesforce_oauth"
curl -u "+DA/r9UCuXY+QJzPI6Pn2+wa2XTnMeptokl1dhnZztY=:a98f69363d58eacbccbd2879f7285c75" https://core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=salesforce_oauth"
curl -u "+DA/r9UCuXY+QJzPI6Pn2+wa2XTnMeptokl1dhnZztY=:a98f69363d58eacbccbd2879f7285c75" https://core.rxservices.mckesson.com/mps/auth//v1/oauth/token -d "grant_type=salesforce_oauth"
ssh erxbackup01.enterpriserx.ndchealth.com
ssh shadow-admin.enterpriserx.ndchealth.com
tput reset
ssh erxbackup01.enterpriserx.ndchealth.com
ssh shadow-admin.enterpriserx.ndchealth.com
ssh crashdown-admin.enterpriserx.ndchealth.com
ssh erxbackup01.enterpriserx.ndchealth.com
ssh entrx-consumer-vm01-admin.enterpriserx.ndchealth.com
ssh shadow-admin.enterpriserx.ndchealth.com
ssh wrait-admin.enterpriserx.ndchealth.com
ssh wraith-admin.enterpriserx.ndchealth.com
ssh-keygen -f "/home/jhartmann/.ssh/known_hosts" -R "wraith-admin.enterpriserx.ndchealth.com"
ssh wraith-admin.enterpriserx.ndchealth.com
export ERX_DB_VOLUME=erx-db-shieldm
dc up
cd /data/generichttpresponsesimulator/
./gradlew
./gradlew bootRun
gs
g co -- projects/erx-client/package-lock.json
g diff
GF
gf
g rebase upstream/development
gl
gf
g rebase upstream/development
gl
ant compileSrc
ant database
rm -fr bin/dist/database/db
ant database
managedb
cd -
toad
dc rm
dc up
sqlplus jhartmann@txhyvp01
fg
sqlplus jhartmann@txhyvp01
c=$COLUMNS # assuming your shell has that variable
screen -X width -w 1000
stty cols "$c"
sudo apt install screen
emacs
sudo snap install emacs
sudo snap install emacs --classic
emacs
sqlplus jhartmann@txhyvp01
cd
toad
11
cd /data/kafka-consumer/
SPRING_PROFILES_ACTIVE=cfeligibility ./gradlew GenericHttpConsumer:bootRun
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
11
SPRING_PROFILES_ACTIVE=signalr ./gradlew GenericHttpConsumer:bootRun
cd /data/kafka-consumer/
SPRING_PROFILES_ACTIVE=signalr ./gradlew GenericHttpConsumer:bootRun
gs
g diff
ant compileSrc start-jboss
ps
fg
kill -9 65359
ant compileSrc start-jboss
cd /data/kafka-consumer/
11
SPRING_PROFILES_ACTIVE=cfeligibility ./gradlew GenericHttpConsumer:bootRun
gs
rm dev/client/autoupdate.properties
g show 9a12def390df44aaf2bf61c08df22b2e1556a220
cd /data/generichttpresponsesimulator/
./gradlew bootRun
export ERX_DB_VOLUME=erx-db-shieldm
dc up
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
curl -H "Accept: application/json" "http://columbia.dev.enterpriserx.ndchealth.com:15000/kafdrop/topic/eStatus"
curl -H "Accept: application/json" "http://columbia.dev.enterpriserx.ndchealth.com:15000/kafdrop/topic/eStatus/1"
curl -H "Accept: application/json" "http://columbia.dev.enterpriserx.ndchealth.com:15000/kafdrop/topic/eStatus/partition/0
curl -H "Accept: application/json" "http://columbia.dev.enterpriserx.ndchealth.com:15000/kafdrop/topic/eStatus/partition/0"
curl -H "Accept: application/json" "http://columbia.dev.enterpriserx.ndchealth.com:15000/kafdrop/topic/eStatus/"
curl -H "Accept: application/json" "http://columbia.dev.enterpriserx.ndchealth.com:15000/kafdrop/topic/eStatus"
fixvpn
ip route
curl -H "Accept: application/json" "http://columbia.dev.enterpriserx.ndchealth.com:15000/kafdrop/topic/eStatus"
curl -H "Accept: application/json" "http://columbia.dev.enterpriserx.ndchealth.com:15000/kafdrop/topic/eStatus/partition/0"
curl -H "Accept: application/json" "http://columbia.dev.enterpriserx.ndchealth.com:15000/kafdrop/topic/eStatus/partitions/0"
curl -H "Accept: application/json" "http://columbia.dev.enterpriserx.ndchealth.com:15000/kafdrop/topic/eStatus/1"
curl -H "Accept: application/json" "https://entrx-admin1.enterpriserx.ndchealth.com:15000/kafdrop/topic/cf-eligibility/messages/0"
curl -H "Accept: application/json" "https://entrx-admin1.enterpriserx.ndchealth.com:6700/kafdrop/topic/cf-eligibility/messages/0"
curl -H "Accept: application/json" "http://entrx-admin1.enterpriserx.ndchealth.com:6700/kafdrop/topic/cf-eligibility/messages/0"
curl -H "Accept: application/json" -H "Cookie: JSESSIONID=ZEUch9jTvtMfC-E4qxFN65McgJxdnin3VnHfL-8G" http://entrx-admin1.enterpriserx.ndchealth.com:6700/kafdrop/topic/cf-eligibility/messages/0"
curl -H "Accept: application/json" -H "Cookie: JSESSIONID=ZEUch9jTvtMfC-E4qxFN65McgJxdnin3VnHfL-8G" http://entrx-admin1.enterpriserx.ndchealth.com:6700/kafdrop/topic/cf-eligibility/messages/0
curl -H "Accept: application/json" -H "Cookie: JSESSIONID=ZEUch9jTvtMfC-E4qxFN65McgJxdnin3VnHfL-8G" http://entrx-admin1.enterpriserx.ndchealth.com:6700/kafdrop/topic/cf-eligibility
curl -H "Accept: application/json" -H "Cookie: JSESSIONID=ZEUch9jTvtMfC-E4qxFN65McgJxdnin3VnHfL-8G" http://entrx-admin1.enterpriserx.ndchealth.com:6700/kafdrop/topic/cf-eligibility/messages?partition=0&offset=219693
curl -H "Accept: application/json" -H "Cookie: JSESSIONID=ZEUch9jTvtMfC-E4qxFN65McgJxdnin3VnHfL-8G" 'http://entrx-admin1.enterpriserx.ndchealth.com:6700/kafdrop/topic/cf-eligibility/messages?partition=0&offset=219693'
postvpn
fixvpn
dc rm
dc up
sqlplus jhartmann@txhyvp01
postvpn
export ERX_DB_VOLUME=erx-db-shieldm
dc up
11
cd /data/kafka-consumer/
SPRING_PROFILES_ACTIVE=signalr ./gradlew GenericHttpConsumer:bootRun
cd /data/mpsenv/
cd dev
gf
gl
g pull
gl
ssh ptload3
ssh root@ptload3
ssh ptappamd1
ssh root@ptappamd1
ssh root@ptconsumers.enterpriserx.ndchealth.com
ssh root@ptappamd1
export ERX_DB_VOLUME=erx-db-shieldm
dc up
dc rm
dc up
./gradlew integrationTest -Dspring.profiles.active=local
./gradlew integrationTest -Dspring.profiles.active=local --info'
./gradlew integrationTest -Dspring.profiles.active=local --info
gs
rm dev/client/autoupdate.properties
g stash
g co -
g co ERXD-34497
locate int_props.config
c
ant compile
gs
g co -- projects/erx-client/package-lock.json
g diff
gf
gc wip
g rebase -i HEAD~2
gl
gf
g rebase upstream/development
gl
yeet -f
g co development
g co -b getImageGroup
g reset 76981fb79cebd6b5f3201136cb573d8564a1d896 --hard
gs
g co -
gs
g co -
g co -- .idea erx.iml
g co -
c
ant token resolve-dependencies compile
ant client
11
./gradlew bootRun
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://qang-core.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=client_credentials"
curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` http://localhost:8080/mps/auth/v1/oauth/token -d "grant_type=client_credentials"
ssh erxbackup01.enterpriserx.ndchealth.com
fixvpn
postvpn
fixvpn
auth
alias
cd /data/Darwin
ls -la
cd lib
cp TRexOneSource.jar ../../
mkdir darwin1.0
mv TRexOneSource.jar darwin1.0/
cd darwin1.0/
unzip TRexOneSource.jar 
ls -la
mkdir src
mv * src
rm src/TRexOneSource.jar 
cd ..
ls -la
mv darwin1.0 ../..
cd ../../
cd /data/Darwin_NO_EJB_Work/
ls -la
mkdir jason_source
mv jason_source.zip jason_source
cd jason_source/
unzip jason_source.zip 
ls -la
cd com/techrx/
ls -la
cd
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
sudo su
vi ~/.config/Microsoft/Microsoft\ Teams/
cd ~/.config/Microsoft/Microsoft\ Teams/
ls -al
ls -ltr
vi logs.txt 
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
cd
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list'
sudo apt update
sudo apt install teams
sudo apt upgrade teams
kill %1
ip route
vi add-default-routes.sh 
cd Downloads/
unzip jxbrowser-7.24.1-cross-desktop-win_mac_linux.zip 
cd lib
ls
cp jxbrowser-7.24.1.jar jxbrowser-swing-7.24.1.jar jxbrowser-win32-7.24.1.jar jxbrowser-linux64-7.24.1.jar /data/erx/lib
cd ..
watch ls -ltr
ls -ltr
vi .bash_aliases
cd /data/generichttpresponsesimulator/
cd /data/dockerfiles/kafka
cd /data/local-database/
export ERX_DB_VOLUME=erx-db-shieldm
dc up
gl
g show 12.0.0.0-1647533667
gs
rm dev/client/autoupdate.properties dev/client/java_pid408765.hprof 
g diff
g stash
g co development
g reset 12.0.0.0-1647533667
g reset 12.0.0.0-1647533667 --hard
gs
gl
gl | grep -i Jason
gl | grep -i Jason | more
gs
g co -
g clean -fd
g co -
cd
vi guake.sh
toad
postvpn
cd
tput reset
openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=VMware/"
sudo /usr/src/linux-headers-`uname -r`/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vmmon)
sudo /usr/src/linux-headers-`uname -r`/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vmnet)
mokutil --import MOK.der
modinfo -n vmmon
modinfo -n vmnet
mokutil --import MOK.der
mokutil
mokutil --list-enrolled
mokutil --import MOK.der
sudo mokutil --import MOK.der
ssh erxbackup01.enterpriserx.ndchealth.com
ssh apollo-admin.enterpriserx.ndchealth.com
ssh shadow-admin.enterpriserx.ndchealth.com
ssh-keygen -f "/home/jhartmann/.ssh/known_hosts" -R "shadow-admin.enterpriserx.ndchealth.com"
ssh shadow-admin.enterpriserx.ndchealth.com
ssh erxbackup01.enterpriserx.ndchealth.com
ssh shadow-admin.enterpriserx.ndchealth.com
ssh erxbackup01.enterpriserx.ndchealth.com
ssh shadow-admin.enterpriserx.ndchealth.com
sudo vi /etc/hosts
ssh shadow-admin.enterpriserx.ndchealth.com
cd ../../kafka-consumer/
signalr
c
17
11
ant package distribute
~/deploy.sh 
11
8
gs
g co -- .
gs
g diff
gl
gs
rm dev/client/autoupdate.properties
g stash
g co development
gf
gl
g reset upstream/development
g reset upstream/development --hard
gs
g co -- .
g clean -fd
g stash pop
g co -b ERXD-34230
g diff
gc 'ERXD-34230 Suppress system error dialog from Config Client refresh'
x
c
yeet
git push --set-upstream origin ERXD-34230
vi /tmp/td
ant static-analysis
gc pmd
yeet
gf
g rebase upstream/development
gl
yeet
yeet -f
ant static-analysis
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
11
cd /data/erx
ant client
GDK_SCALE=2 ant client
g stash pop
g diff
g reset HEAD --hard
rm dev/client/autoupdate.properties
echo dev/client/autoupdate.properties >> .gitignore 
gs
gc 'Updated gitignore'
cat .gitignore 
g reset HEAD~1
vi .gitignore 
GDK_SCALE=2 ant client
vi logs/cl
vi dev/client/logs/client.log 
GDK_SCALE=2 ant client
vi dev/client/logs/client.log 
ant start-jboss
cd ../dockerfiles/kafka/
dc rm
dc up
cd ../generichttpresponsesimulator/
11
./gradlew
cfeligibility
alias
cfelig
cd /erx/local
cd /data/local-database/
export ERX_DB_VOLUME=erx-db-shieldm
dc up
toad
fixvpn
ip route
vi /tmp/vmware-jhartmann/vmware-7441.log 
sudo vmware-modconfig --console --install-all
vmware --version
sudo apt update && sudo apt install -y linux-headers-$(uname -r) linux-modules-$(uname -r)
sudo vmware-modconfig --console --install-all
sudo vmware-modconfig --version
sudo vmware-modconfig
vmware-modconfig
vmware 
vmware-fuseUI 
vmware-installer
vmware-installer -l
wget https://github.com/mkubecek/vmware-host-modules/archive/refs/tags/w16.2.3-k5.15.zip
unzip w16.2.3-k5.15.zip 
cd vmware
cd ../vmware-host-modules-w16.2.3-k5.15/
cd vmmon-only && make && cd ..
cd vmnet-only && make && cd ..
tar -cf vmmon.tar vmmon-only
tar -cf vmnet.tar vmnet-only
ls -ltr
sudo cp -v vmmon.tar vmnet.tar /usr/lib/vmware/modules/source/
sudo vmware-modconfig --console --install-all
cd
openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=VMware/"
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vmmon)
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vmnet)
sudo mokutil --import MOK.der
sudo reboot
sudo vmware-modconfig --console --install-all
cd vmware-host-modules-w16.2.3-k5.15/
tar -cf vmmon.tar vmmon-only
sudo cp -v vmmon.tar vmnet.tar /usr/lib/vmware/modules/source/
sudo vmware-modconfig --console --install-all
sudo su
ls -ltr
cd ..
ls -ltr
"$KBUILD_DIR"/scripts/sign-file
VERSION="$(uname -r)"
SHORT_VERSION="$(uname -r | cut -d . -f 1-2)"
MODULES_DIR=/lib/modules/$VERSION
KBUILD_DIR=/usr/lib/linux-kbuild-$SHORT_VERSION
"$KBUILD_DIR"/scripts/sign-file
sudo "$KBUILD_DIR"/scripts/sign-file
ls /usr/lib/linux-kbuild-5.15/scripts/
sudo su
gf
gs
g diff
g co -- .
g co development
g reset upstream/development --hard
gl
glxgears
htop
ant database
gl
gs
g co -b 'deadlocks'
gc wip
g co master
gf
g reset upstream/master --hard
gl
dpws
dps
dpsa
cd /tmp
d run -it -v /tmp:/tmp --rm 1447ce45ba7a bash
d run -it -v /tmp:/tmp --rm container-registry.oracle.com/database/enterprise bash
ls /tmp
cd 
cd Downloads/
ls -ltr
unzip txhyvp01_deadlock_files.zip
vi txhyvp01-65_lmd0_1812.trc
ssh root@ptamdapp1
ssh root@ptappamd1
fixvpn
toad
ssh shadow-admin.enterpriserx.ndchealth.com
ssh ptappamd1
ssh root@ptappamd1
ssh ptamddb1
ssh ptdbamd1
ssh root@ptdbamd1
ssh root@ptdbamd2
ssh root@ptappamd1
g show 332a8b8
gl 
A
htop
gl
cd /usr/local/trexone/BATCH/
ls -la
cd DEV20/
ls -la
cd bin
ls -al
./SymmetricEncryption.sh 
./SymmetricEncryption.sh SD
./SymmetricEncryption.sh SD sdfsdfg
cd ../properties
vi externalinterface.properties 
cd ..
./runBatch.sh DEV20 SymmetricEncryption.sh E sdgjhfgjk
mkdir -p /usr/local/trexone/data/BatchStats/
./runBatch.sh DEV20 SymmetricEncryption.sh E sdgjhfgjk
./runBatch.sh DEV20 SymmetricEncryption.sh E
./runBatch.sh DEV20 SymmetricEncryption.sh E "dfghdfgh"
./runBatch.sh DEV20 SymmetricEncryption.sh D "dfghdfgh"
cd DEV20/bin
./SymmetricEncryption.sh 
./SymmetricEncryption.sh E 34dfghdfgh
cd /data/erx
cd pro
cd projects/
./gradlew :securepass:installDist
./gradlew securepass:installDist
cd ..
./gradlew :securepass:installDist
ls -la
gs
gl
g diff
g co -- .
g co development
gf
g reset upstream/development --hard
gl
cd projects
./gradlew securepass:run
./gradlew securepass:installDist
ls -la
cd securepass/
ls -la
cd build/
ls
ls -ltr
cd install
ls -al
cd securepass/securepass/
cd securepass/
ls -la
./securepass.
./securepass.sh
vi securepass.env 
cat README.txt 
ls lib/
cp lib /data/erx/dev/domains/local/properties/
cp -r lib /data/erx/dev/domains/local/properties/
cp -r securepass.env /data/erx/dev/domains/local/properties/
cp -r securepass.sh /data/erx/dev/domains/local/properties/
cat keys
cat keys.sh 
cd /data/erx/dev/domains/local/properties/
ls -lrt
vi securepass.env 
rm securepass.env 
./securepass.sh 
cat /data/erx/projects/securepass/build/install/securepass/securepass.env 
vi securepass.sh 
cd ..
ls -la
cd -
vi securepass.sh 
mv lib ..
./securepass.sh 
mv ../lib .
./securepass.sh 
ls -la]
ls -la
ls keys
vi securepass.sh 
cp * keys
ls -la keys
./securepass.sh 
cd /data/erx
gs
g diff
g show 4e98dcf47890d74b54967f16b748640ae91a341e
uuid
cd -
ls -la
./securepass.sh 
cd keys
ls -al
rm sym_enterpriserx.ks
cd ..
./securepass.sh 
ls -ltr
cd ..
ls -ltr
cd properties/keys/
ls -ltr
mv sym_* ..
cd ..
rm -fr keys
ls -la
rm *.bkup
g add sym_enterpriserx.ks sym_keystore.config
git config advice.addIgnoredFile false
g add sym_enterpriserx.ks sym_keystore.config
g add -F sym_enterpriserx.ks sym_keystore.config
g add -f sym_enterpriserx.ks sym_keystore.config
git config advice.addIgnoredFile true
gs
g restore erx.passwd
gs
g diff
g diff HEAD
g reset HEAD
gs
rm sym_enterpriserx.ks
g add -f sym_enterpriserx.ks sym_keystore.config
gs
gc 'updated Sym keystore with valid keys'
cd -
cd /data/erx
./gradlew
ant
cd ../ptlab/
gs
g co -- .
gf
g pull
cd ..
ls -la
g clone ssh://git@bitbucket.mckesson.com:7999/mpsenv/prod.git
cd prod
g co deadlock
g branch --list --sort=commiterdate
g branch --list --sort=committerdate
cd ../erx
gs
g co -- .
g co deadlock
g branch --list --sort=committerdate
g co deadlocks
gl
g show HEAD
gl | grep -i annotation
g co development
gf
g reset upstream/development --hard
gl
gl | grep -i jason | more
gl | grep -i ERXD-34230 | more
g co master
g reset upstream/master --hard
gl
gcp 215ee0451fe 0efb2b6a063
gl
g rebase -i HEAD~3
g rebase -i HEAD~2
gl
g show HEAD
yeet
g co 11.3
g co -b 11.3
g reset upstream/release/11.3 --hard
gcp 215ee0451fe 0efb2b6a063
g rebase -i HEAD~2
gl
g show HEAD
eet
yeet
git push --set-upstream origin 11.3
ant
ant token compile custom package pack database distribute
gs
g co -- projects/erx-client/package-lock.json
gf
~/deploy.sh 
postvpn
fixvpn
postvpn
fixvpn
postvpn
ip route
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
postvpn
ip route
fixvpn
postvpn
fixvpn
which teams
teams
teams --help
ls -la /usr/bin/teams
cat /usr/bin/teams
readlink -f $(dirname $SCRIPT)/..
cd
readlink -f "$0"
SCRIPT=$(readlink -f "$0")
USR_DIRECTORY=$(readlink -f $(dirname $SCRIPT)/..)
echo $USR_DIRECTORY
cd /usr/share/teams
ls -ls
ls -la
cd ~/.config/Microsoft/Microsoft Teams/logs
cd ~/.config/Microsoft/Microsoft\ Teams/logs
ls -ltr
vi teams-startup.log 
cd /usr/share/teams
ls
vi teams
cd
which teams
vi /usr/bin/teams
sudo vi /usr/bin/teams
teams
cd /data/erx/dev/client/logs/
tail -F client.log 
cd
ssh riker.dev.enterpriserx.ndchealth.com
ssh root@riker.dev.enterpriserx.ndchealth.com
ssh shadow-admin.enterpriserx.ndchealth.com
ssh webadm@ptload3
tput reset
ssh webadm@ptload3
~/deploy.sh 
ant start-jboss
managedb
cd -
cd /data/erx
ant start-jboss
managedb
cd -
gl
ant start-jboss
c
ant start-jboss
./gradlew :erx-server:war
./gradlew -p projects erx-server:war
ant start-jboss
ls -la projects/erx-server/build/libs/erx-server-1.0.0.war 
cd projects/erx-server/
./gradlew war
cd ..
./gradlew erx-server:war
ls -la erx-server/build/libs/erx-server-1.0.0.war
./gradlew erx-server:bootWar
ls -la erx-server/build/libs/erx-server-1.0.0.war
cd ..
ls -la dev/server/jboss-eap-7.1/standalone/deployments/EnterpriseRx.ear/webapp/
ls -la /data/erx/projects/erx-server/build/libs/erx-server-1.0.0.war
ant start-jboss
./gradlew -p projects erx-server:bootWar
ant start-jboss
ls -la /data/erx/projects/erx-server/build/libs/erx-server-1.0.0.war
ant start-jboss
./gradlew -p projects erx-server:bootWar
ant start-jboss
c
ant start-jboss
c
ant start-jboss
c
ant start-jboss
./gradlew -p projects erx-server:pmdMain erx-server:bootWar
gl
g diff
gc 'ERXD-35090 - Test ListenerExecutionFailedException cause for retry classifier'
ant compile
gs
g co -- projects/erx-client/package-lock.json
gl
g co ERXD-35090
g reset 11.3 --hard
gf
g rebase upstream/release/11.3
gl
g show HEAD
yeet
ant
gs
g co -- projects/erx-client/package-lock.json
gl
gf
g co 11.3
g reset upstream/release/11.3 --hard
gf
cd /usr/local/benchmarking/bin
./StartNClients.sh 1 1 1
cd ..
cat logs/Store1.stdout 
ls -la lib/erx-benchmarking.jar 
8
bin/StartNClients.sh 1 1 1
cat logs/Store1.stdout 
vi bin/StoreClientN.sh 
cat logs/Store1.stdout 
bin/StartNClients.sh 1 1 1
cat logs/Store1.stdout 
vi bin/StoreClientN.sh 
bin/StartNClients.sh 1 1 1
cat logs/Store1.stdout 
jar -tvf lib/erx-benchmarking.jar 
jar -xvf lib/erx-benchmarking.jar META-INF/MANIFEST.MF
cat META-INF/MANIFEST.MF 
mv lib/erx-benchmarking.jar lib/erx-benchmarking.jar.bak
cat bin/StoreClientN.sh 
ln -s /data/erx/projects/erx-benchmarking/build/libs/erx-benchmarking.jar lib/erx-benchmarking.jar
ls -la lib/erx-benchmarking.jar
vi bin/StoreClientN.sh 
bin/StartNClients.sh 1 1 1
cat logs/Store1.stdout 
vi bin/StoreClientN.sh 
bin/StartNClients.sh 1 1 1
cat logs/Store1.stdout 
rm lib/erx-benchmarking.jar
mv lib/erx-benchmarking.jar.bak lib/erx-benchmarking.jar
bin/StartNClients.sh 1 1 1
ps -fe | grep USER
kill 1498021\
kill 1498021
cp lib/erx-benchmarking.jar /data/erx/projects/erx-benchmarking/build/libs/erx-benchmarking.jar
mv lib/erx-benchmarking.jar lib/erx-benchmarking.jar.bak
ln -s /data/erx/projects/erx-benchmarking/build/libs/erx-benchmarking.jar lib/erx-benchmarking.jar
bin/StartNClients.sh 1 1 1
ls -la lib/erx-benchmarking.jar
ls -la /data/erx/projects/erx-benchmarking/build/libs/erx-benchmarking.jar
diff lib/erx-benchmarking.jar lib/erx-benchmarking.jar.bak 
rm lib/erx-benchmarking.jar
bin/StartNClients.sh 1 1 1
ps -fe | grep USER
kill 1499431
bin/StartNClients.sh 1 1 1 && tail -F logs/Store1.stdout 
ps -fe | grep USER
kill 1510051
vi properties/pt.pac.properties 
bin/StartNClients.sh 1 1 1 & tail -F logs/Store1.stdout 
ps -fe | grep USER
kill 1510362
ps -fe | grep USER
vi properties/pt.pac.properties 
bin/StartNClients.sh 1 1 1 & tail -F logs/Store1.stdout 
ps -fe | grep USER
kill 1510809
bin/StartNClients.sh 1 1 1 & tail -F logs/Store1.stdout 
ps -fe | grep USER
kill 1511910
vi bin/StoreClientN.sh 
bin/StartNClients.sh 1 1 1 & tail -F logs/Store1.stdout 
ps -fe | grep USER
kill 1512505
tail -F logs/Store1.stdout 
tail -F logs/Store1.stdout &
cat bin/StoreClientN.sh 
/usr/lib/jvm/zulu-8-amd64/bin/java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5555 -cp /usr/local/benchmarking/lib/erx-benchmarking.jar -Djava.io.tmpdir=/tmp/loadCache/2020100 -XX:MaxMetaspaceSize=128m -Xmx512m -XX:+UseG1GC -DTRexHTTPCompression=true -DInterfaceAuthCert=persetest.cer -Djava.security.auth.login.config=/usr/local/benchmarking/properties/login.config -Dworker.1.username=USER[1] -Dworker.2.username=USER[1] -DTRexOne.StoreNumber=2020100 -Dscenario.datafile=/usr/local/benchmarking/testcases/DataSet.1.zip -Dproperty.dir=/usr/local/benchmarking/properties -Dpac.properties=/usr/local/benchmarking/properties/pt.pac.properties -DTRexOneURL=http://ptweb1.enterpriserx.ndchealth.com:15000/ndct04/TRexOneWeb -DTRexOneAuthURL=http://pterx.enterpriserx.ndchealth.com:8700/openam/json/authenticate?realm=1stamerica-admin -DEnableJWT=Y -Djava.awt.headless=true -DCSM_ENABLED=FALSE -Dreport.directory=/usr/local/benchmarking/logs -Dreport.filename=pac.2020100.rpt com.techrx.test.pac.Launcher
alias pt='/usr/lib/jvm/zulu-8-amd64/bin/java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5555 -cp /usr/local/benchmarking/lib/erx-benchmarking.jar -Djava.io.tmpdir=/tmp/loadCache/2020100 -XX:MaxMetaspaceSize=128m -Xmx512m -XX:+UseG1GC -DTRexHTTPCompression=true -DInterfaceAuthCert=persetest.cer -Djava.security.auth.login.config=/usr/local/benchmarking/properties/login.config -Dworker.1.username=USER[1] -Dworker.2.username=USER[1] -DTRexOne.StoreNumber=2020100 -Dscenario.datafile=/usr/local/benchmarking/testcases/DataSet.1.zip -Dproperty.dir=/usr/local/benchmarking/properties -Dpac.properties=/usr/local/benchmarking/properties/pt.pac.properties -DTRexOneURL=http://ptweb1.enterpriserx.ndchealth.com:15000/ndct04/TRexOneWeb -DTRexOneAuthURL=http://pterx.enterpriserx.ndchealth.com:8700/openam/json/authenticate?realm=1stamerica-admin -DEnableJWT=Y -Djava.awt.headless=true -DCSM_ENABLED=FALSE -Dreport.directory=/usr/local/benchmarking/logs -Dreport.filename=pac.2020100.rpt com.techrx.test.pac.Launcher'
pt
ps -fe | grep USER
vi ~/.bash_aliases
...
pt
cd
pt
sudo lsof -i :631
pt
sudo lsof -i :631
pt
cd /data/erx
g diff
gs
g co -- projects/erx-client/package-lock.json
g a
gs
g reset HEAD
g co -- .idea/inspectionProfiles/EnterpriseRx.xml
gs
g a
gs
g diff HEAD
~/deploy.sh 
ant start-jboss
cfelig
11
signalr
./gradlew 
signalr
ant client
c
alias
11
./gradlew
./gradlew bootRun
ssh root@ptcomsumer
ssh root@ptcomsumers
ssh root@ptconsumers
which java
cd /usr/local/benchmarking/
cd logs
ls -ltr
tail -F Store1.stdout 
ps -fe | grep USER
kill 1488136 1488355
ps -fe | grep USER
ssh webadm@ptload4
toad
gs
gl
g diff
g a
gs
gc wip
gs
g diff
c
./gradlew -p projects erx-benchmarking:jar
gs
./gradlew -p projects erx-benchmarking:jar
gl
g reset HEAD~1
gs
g a
gc 'ERXD-35424 - Code cleanup and PR comments'
gl
g reset HEAD~1
g a
./gradlew -p projects erx-benchmarking:jar
g a
gc 'ERXD-35424 - Code cleanup and PR comments'
g show HEAD
g reset HEAD~1
g diff
gc 'ERXD-35424 - Code cleanup and PR comments'
./gradlew -p projects erx-benchmarking:jar
yeet
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
cd /data/erx
c
./gradlew -p projects erx-benchmarking:jar
cp projects/lib/erx-benchmarking.jar /data/erx/projects/erx-benchmarking/build/libs/erx-benchmarking.jar
cp projects/erx-benchmarking/lib/erx-benchmarking.jar /data/erx/projects/erx-benchmarking/build/libs/erx-benchmarking.jar
cp /data/erx/projects/erx-benchmarking/build/libs/erx-benchmarking.jar /usr/local/benchmarking/lib/erx-benchmarking.jar
ant start-jboss
pt
alias
cd /usr/local/benchmarking/lib
grep Base64 *
unzip erx-benchmarking.jar 
vi META-INF/MANIFEST.MF 
ls -la
pt
tput reset
pt
scp erx-benchmarking.jar commons-codec-1.15.jar webadm@ptload3:/usr/local/benchmarking/lib
alias
pt
scp erx-benchmarking.jar commons-codec-1.15.jar webadm@ptload3:/usr/local/benchmarking/lib
alias
export ERX_DB_VOLUME=erx-db-shieldm
dc up
gf
g reset upstream/development --hard
cd projects/
./gradlew erx-benchmarking:jar
cd erx-benchmarking/build/libs/
ls -la
unzip erx-benchmarking.jar 
vi META-INF/MANIFEST.MF 
cd ../../../
cd ../
ant resolve-dependencies
ls -la lib/
cd -
./gradlew erx-benchmarking:jar
cd erx-benchmarking/build/libs/
unzip erx-benchmarking.jar 
vi META-INF/MANIFEST.MF 
locate commons-codec-1.15.jar
cd /data/erx/projects/erx-benchmarking/build/install/erx-benchmarking/lib/
ls -la
cp * /usr/local/benchmarking/lib
cd ../../../
cd libn
cp libs/erx-benchmarking.jar /usr/local/benchmarking/lib
cd ../../../
./gradlew -p projects erx-benchmarking:lib && cp projects/erx-benchmarking/build/libs/erx-benchmarking.jar /usr/local/benchmarking/lib
./gradlew -p projects erx-benchmarking:jar && cp projects/erx-benchmarking/build/libs/erx-benchmarking.jar /usr/local/benchmarking/lib
gs
g diff
signalr
cfelig
ssh ptamdapp1
ssh ptappamd1
ssh webadm@ptappamd1
locate pulseui
locate pulse
cd /var/lib/pulsesecure/pulse
ls -la
cat connstore.dat
cd ..
ls -la
cd /var/log/pulsesecure/logging
ls -la
vi PulseClient.log
cd ..
ls -la
./gradlew bootRun
11
./gradlew bootRun
ssh shadow-admin.enterpriserx.ndchealth.com
ssh borg.dev.enterpriserx.ndchealth.com
ssh root@borg.dev.enterpriserx.ndchealth.com
ssh root@worf.dev.enterpriserx.ndchealth.com
ssh root@scotty.dev.enterpriserx.ndchealth.com
dc rm
dc up
ssh webadm@ptload3
postvpn
fixvpn
postvpn
fixvpn
postvpn
fixvpn
toad
ssh webadm@ptload3
cd
ssh webadm@ptload3
ssh webadm@ptappamd1
cd
cd Downloads/
ls -ltr
sudo apt-key add oracle_vbox_2016.asc
sudo apt-get update
sudo apt-get install virtualbox-6.1
sudo apt-get install virtualbox
sudo vi /etc/apt/sources.list
steam
which steam
history |  grep steam
locate steam
cd /home/jhartmann/.local/share/Steam
ls
./steam.sh
ps -fe | grep steam
kill -9 10049
ps -fe | grep steam
./steam.sh
vi pt.pac.properties 
ssh shadow-admin
ssh shadow-admin.enterpriserx.ndchealth.com
toad
tracert 13.83.150.157
sudo apt install tracert6\
sudo apt install tracert6
ssh shadow-admin.enterpriserx.ndchealth.com
ssh webadm@ptload3
cd ~/prefix32/drive_c/McKesson/EnterpriseRx/
vi setup-env.bat 
ls -la
EnterpriseRX.bat
./EnterpriseRX.bat
wine ./EnterpriseRX.bat
alias | grep toad
WINEPREFIX=/home/jhartmann/prefix32 WINEARCH=win32 wine ./EnterpriseRX.bat
alias client='WINEPREFIX=/home/jhartmann/prefix32 WINEARCH=win32 wine ~/prefix32/drive_c/McKesson/EnterpriseRx/EnterpriseRX.bat'
client
ps
kill 220129
ps
ls -la
cp EnterpriseRX.bat EnterpriseRX_D.bat
vi EnterpriseRX_D.bat
alias client='WINEPREFIX=/home/jhartmann/prefix32 WINEARCH=win32 wine ~/prefix32/drive_c/McKesson/EnterpriseRx/EnterpriseRX_D.bat'
client
vi ~/.bash_aliases
cd
...
client
alias client='cd ~/prefix32/drive_c/McKesson/EnterpriseRx && WINEPREFIX=/home/jhartmann/prefix32 WINEARCH=win32 wine EnterpriseRX_D.bat'
client
ps
killall javaw.exe
ps
vi ~/.bash_aliases
...
cd
client
killall javaw.exe
client
killall javaw.exe
client
killall javaw.exe
client
ps
mv ~/Downloads/QA13.exe /tmp
WINEPREFIX=/home/jhartmann/prefix32 WINEARCH=win32 wine Z:\tmp\QA13.exe
WINEPREFIX=/home/jhartmann/prefix32 WINEARCH=win32 wine Z:/tmp/QA13.exe
WINEPREFIX=/home/jhartmann/prefix32 WINEARCH=win32 wine C:\McKesson\EnterpriseRxQA13\EnterpriseRX.bat
vi /home/jhartmann/prefix32/drive_c/McKesson/EnterpriseRxQA13/setup-env.bat 
WINEPREFIX=/home/jhartmann/prefix32 WINEARCH=win32 wine /home/jhartmann/prefix32/drive_c/McKesson/EnterpriseRxQA13/Enterprise_Rx.bat
ls /home/jhartmann/prefix32/drive_c/McKesson/EnterpriseRxQA13/
WINEPREFIX=/home/jhartmann/prefix32 WINEARCH=win32 wine /home/jhartmann/prefix32/drive_c/McKesson/EnterpriseRxQA13/EnterpriseRX.bat
cd /home/jhartmann/prefix32/drive_c/McKesson/EnterpriseRxQA13/
WINEPREFIX=/home/jhartmann/prefix32 WINEARCH=win32 wine EnterpriseRX.bat
tail -F logs/client.log 
ps
killall javaw.exe
WINEPREFIX=/home/jhartmann/prefix32 WINEARCH=win32 wine EnterpriseRX.bat
killall javaw.exe
vi /home/jhartmann/prefix32/drive_c/McKesson/EnterpriseRxQA13/setup-env.bat 
WINEPREFIX=/home/jhartmann/prefix32 WINEARCH=win32 wine EnterpriseRX.bat
vi /home/jhartmann/prefix32/drive_c/McKesson/EnterpriseRxQA13/setup-env.bat 
WINEPREFIX=/home/jhartmann/prefix32 WINEARCH=win32 wine EnterpriseRX.bat
killall javaw.exe
toad
ps
kill explorer.exe
killall explorer.exe
ant compileSrc start-jboss
managedb
ant compileSrc start-jboss
cd -
cd /data/erx
ant compileSrc start-jboss
./gradlew -p projects erx-kafka:jar
ls -la projects/erx-kafka/build/libs/
cp projects/erx-kafka/build/libs/erx-kafka.jar dev/server/jboss-eap-7.1/standalone/deployments/EnterpriseRx.ear/lib/erx-kafka.jar 
ant compileSrc start-jboss
gs
g diff
g co -b ir-transactions
gc wip
g co master
gf
g reset upstream/master --hard
g co -b ERXD-35785
cat VERSION 
gl
gs
g stash
g reset upstream/release/11.3 --hard
gl
g stash pop
ant
~/deploy.sh 
ant compileSrc start-jboss
managedb
cd -
cd /data/erx
ant compileSrc start-jboss
11
cfelig
gs
g a
g stash
gf
g reset upstream/master --hard
g stash pop
./gradlew
alias | grep cf-
alias | grep cfel
cfelig
...
cfelig
ssh shadow-admin.enterpriserx.ndchealth.comSpring2022
ssh shadow-admin.enterpriserx.ndchealth.com
tput reset
ssh shadow-admin.enterpriserx.ndchealth.com
ssh wraith-admin.enterpriserx.ndchealth.com
ssh shadow-admin.enterpriserx.ndchealth.com
gs
g diff
ant
~/deploy.sh 
ant compileSrc start-jboss
tail -F dev/server/jboss-eap-7.1/standalone/log/*.log
tail -F dev/server/jboss-eap-7.1/standalone/log/erx.log
gs
g diff
ant database
cd bin/dist/database/db/OLTP/trexone_proxy/Deltas/
ls 12*
ls 11*
cd -
ant database
gs
g co -- projects/erx-client/package-lock.json
g co -b ge-queue-query-rework
gc wip
g co -
gs
gl
gf
g reset upstream/release/11.3 --hard
gl
g diff
ant database
gs
gc 'ERXD-35785 - revert change to GE queue query for performance'
yeet
git push --set-upstream origin ERXD-35785
curl -vvv http://10.15.164.4:8087/intelligent-router/014/2
toad
g branch --list --sort=committerdate
g co ir-transactions
gl
g show 14e3fcdac2a
gl
gf
g rebase upstream/development
gl
ant
cd ..
g clone git@github.com:keithlee96/pluribus-poker-AI.git
rm -fr pluribus-poker-AI/
g clone git@github.com:JasonHartmann/pluribus-poker-AI.git
cd pluribus-poker-AI/
ls -la
pip install.
sudo apt install python3-pip
pip installv .
pip install .
pip install pytest
pytest
pytestexport PATH=/home/jhartmann/.local/bin:$PATH
export PATH=/home/jhartmann/.local/bin:$PATH
pytest
sudo rm -fr venv/
g branch --list
gf
g branch --list
pip install .
pip2
pip2 install .
pip3 install .
cd clu
ls l-a
ls -la
cd research/clustering/
l s-la
l
python3 buggy_optimised_information_abstraction.py
cd ..
ls
cd ..
ls -la
pytest
python3 scripts/play.py 
pytest
pytest --log=INFO
pytest --show-capture=yes
pytest --show-capture=all
pytest --log-cli-level=DEBUG
cd research/
preflop_hand_ranking/
cd preflop_hand_ranking/
ls -la
python3 ./monte_carlo_rank.py 
python3 ./monte_carlo_rank.py --n_threads=64
ps
python3 ./monte_carlo_rank.py --n_threads=24
ps
python3 ./monte_carlo_rank.py --n_threads 24 --max_n_players 6
python3 ./monte_carlo_rank.py --n_threads 2
python3 ./monte_carlo_rank.py --n_threads 12
python3 ./monte_carlo_rank.py --n_threads 8
python3 ./monte_carlo_rank.py --n_threads 3
python3 ./monte_carlo_rank.py --n_threads 4
ps
python3 ./monte_carlo_rank.py --n_threads 12
python3 ./monte_carlo_rank.py --n_threads 1
fixvpn
postvpn
fixvpn
cat ~/.ssh/id_rsa.pub 
