$csv=Import-Csv C:\Users\user\Desktop\us.csv



foreach($csvitem in $csv){

$velkost=$csvitem.size
$mail=$csvitem.username + '@domain.com'

$EmailParams = @{
    To          = $mail
    From        = 'mail@domain.com'
    Subject     = 'Prečistenie emailovej schránky'
    Body        = "Pekný deň,
veľkosť Vašej emailovej schránky prekročila maximálny povolený limit, ktorým je 10GB(momentálne má $velkost). Preto by sme Vás chceli poprosiť o údržbu emailovej schránky, vymazanie starej nepotrebnej prijatej a odoslanej pošty. Nájdite si prosím čas a skontrolujte obsah všetkých priečinkov.
Po vymazaní nepotrebnej pošty prosím nezabudnite vyprázdniť kôš.
Pre kontrolu zaplnenosti emailovej schránky stačí kliknúť pravým na INBOX>Možnosti>Kvóta(emailový klient Thunderbird)
Pre kontrolu zaplnenosti emailovej schránky na stránke posta.joj.sk stačí úplne naľavo dole ukázať myšou na ukazovateľ percent.
Ďakujem a prajem pekný deň,"
    SMTPServer  = 'domain.com'
    Encoding    = 'UTF8'
    }

Send-MailMessage @EmailParams

}