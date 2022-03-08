@echo off
set path=%path%;"C:\Program Files\Veyon"
:in
cls
IF not exist "C:\ProgramData\V3yon\keys\public\Aula205\key" (
    echo Hace falta el backup
    pause>nul
    exit
)


IF not exist "%temp%\reading" goto :private
IF not exist "%temp%\listening" goto :public
IF exist "C:\ProgramData\Veyon\keys\private\23\key" (
    goto delete
) else (
    goto import
)

@REM CREAR CLAVE PRIVADA
:private
echo -----BEGIN PRIVATE KEY-----> %temp%\reading
echo MIIJRAIBADANBgkqhkiG9w0BAQEFAASCCS4wggkqAgEAAoICAQC7LNjnoUmJHT1J>> %temp%\reading
echo nZYwALn4CS8Hwo9hzyFkuRwMNS8kLpxvDLpF3zgFqeL5rDPyjhIS4vBTfWWX2Xmc>> %temp%\reading
echo 5g7T2IiOQrbHm9H9zu/E9xtjKZVvdHByxTVddVEcN7FB6/uwwA+qUy0BynMC7mFg>> %temp%\reading
echo Uy6Mxzzm7q+vrbBEpdDs2z8PzoZFP8CNjJUqZrHFZ9Jp0qqG8+RoEakoN0M9AQAK>> %temp%\reading
echo V7aHaL0z9Dxyn5Zj3ri/UtHYc24C42ixkUuHwYz2uYKcaX5DRF4dEeZS7APfmTBX>> %temp%\reading
echo wr4Mo7O9zXEvqbamcNVS434Sq034En1YWpVHKyGhBO8I8t4kEO/DGYBofmC0cP4t>> %temp%\reading
echo 2sTURAWb6u1prT4U9Z+qfct0+8ZzjhKtMOPZQfQg5TLnwqM69yeQt0i07jwy5dfE>> %temp%\reading
echo WGOhCbsBzPfKufHiGlKyl60aReJ1qNTVLoDpkpeG6WF1JAXa9DQ8YO+PPODDmev4>> %temp%\reading
echo jjzjdwMdKCxOxyPl5om9OHYmdrbPapVGL4KOAndtw8dfKg9/zzYZ4Y6tb9gI7/ql>> %temp%\reading
echo zFRnjouDRpGMMbTxVEnHanFmQ+KhxZad9yeYoxHdEuiMXG8w9RUIECOj0r5VAlV4>> %temp%\reading
echo WTyVkpCnmKIajBrGQs7j9Z9h+n4hFpAh1zW9bkZDb3npdsUQz4n4IOjB6Oo3zQ/M>> %temp%\reading
echo zEl+bQmgTN8RM7Z27pDvsOg2W/nmNwIDAQABAoICAQCIXpBZkkUFROxWKh42MxFL>> %temp%\reading
echo CUXenX3hgQuPWt54dnc2IU+QCPHd3lfuqGvaBACFA8VfRUBbU80k6SmVinfbGLPF>> %temp%\reading
echo Eg4hOAGyrYY7Nt4ZTT62yVr0A4Jx6PuDV4Apy0jA6e1/5sGvwFQzGoKPr4sGvlI8>> %temp%\reading
echo 3kHZ+O2n1jd1mfdECPACnAQqHPbAwblbXd0LhJUBZchPmi5oQnsWgxgIcQdneIQA>> %temp%\reading
echo yj0QNf1YHfj0S97fmJnaON0aIgWpjvao+1eRpbp8P99hxpzMZXAdBHsYNaZJhyt5>> %temp%\reading
echo aajBVSDh+usxTNWZvH099BqmuLhx9Za2veV525jFJiHJP1cyyoCidoB54B3vmO+L>> %temp%\reading
echo /HymzVdBFwjoc6PMR4CLg/S4Wo84xDCPL0NpaD+lk9xqyB2W/t0u+qREjcM5Jwmq>> %temp%\reading
echo uFBv98Jilz569yfn6rAT6xszo3rN0N1C5g2OfGtJozObyXFNLxDXv5uIztXVRYTX>> %temp%\reading
echo JvCPTUk2VBckOXkOkehg6h9Ln0jvzcZuGsMFRHq+aQW9o96yfHuy4ls5/oRSboPF>> %temp%\reading
echo PdX9UxvjmXSi1JLj5/yAvN+tT/vJ9x8raNUzN6lGZKnyw6Dg6tlo5z4ByxfZsqrP>> %temp%\reading
echo WeJYkXkB+nCkB4ZfbZJCf2doeDSjDiZ+aV4qhXrGShO2vDIU67UxSMmnw473Q+FQ>> %temp%\reading
echo V6tL80XGDFvZPHZzNvYh4QKCAQEA9V+RxOXsu9rFRvEfuzDzSgwN0JH5dY3k61Zm>> %temp%\reading
echo wb8aKyDT7TAp63iTutmuN2VnQijYfZ/RxrnW/+n38JBeh90FQrp4IGUXIqbhcNMJ>> %temp%\reading
echo Ut8faMrYVpxpcY+F9aVdibubFG44GUhPfU5VuLHnWvtO7sEUG49CaIcFF4bRxpRh>> %temp%\reading
echo 9tzR46gAbfiR/n5dpfjVOG4M0hliUFHJVp8WUhSepmcR5hfN0ueQq0V44SbdvCir>> %temp%\reading
echo DsinBiDKCvFhI48qcp7gfHezBLhhvkQGTfh0Lh9zhyj5MmXJzY/urMH7Dit64OXD>> %temp%\reading
echo IHZsgyGrOBny2ZdsyHqgYsHw8btP4LU/qfilmvkjOxtet7UmAwKCAQEAw0gKbGs1>> %temp%\reading
echo o3cinGtfSvAdhqg3SBaUcMv0pdf/JnVvl4mWGR9CplpKepqU6AMvfq69RrSYjLHd>> %temp%\reading
echo dR6fIP7XvJsYoAL+gdFa1cqqupX9GkA+Ahuyl1NvDTA4bYy1xPfQVZL2BegEXHfN>> %temp%\reading
echo vkuDVoOG/FpBShb9lkafNPsN3EuLY59wB0iqKPPmJ2+XGPLt7YgHuaVixVXE6KH3>> %temp%\reading
echo +ZBNif+aoRZgxqcw5gJeRzhA5ie4kqkv5J2EnKC/OOXCGEPqkssUH6GpJNcQVyyp>> %temp%\reading
echo FwJFhG6F11WGm343f/55uR5MK9wqb2nWIlzYDRGK5SY+mc8jjG3H7ZES+YPvst2S>> %temp%\reading
echo b4beiZMyixryvQKCAQBey6A+SHHQFXHXuXn/0KZ9OfDwXiTY9Iu3G7cxLMpIVTNq>> %temp%\reading
echo 1Aut6/Ru4IA86JEe7zbMOb1KoCtezR47sxrCNHI+2FlmcoegnIZGF1Hn0UmKK6uu>> %temp%\reading
echo sljORZuETnG3r2H3X6mOovAKwgO+CgUOkj5pYPCKwSrvxRIDh9Nte4/pVmBEKniY>> %temp%\reading
echo A8srXdiCMYL2fRW46ZOg4if9rhJqfYrZUMKKeTHMRCgQ8xMDMQfDFJcZbA2TAYHs>> %temp%\reading
echo /ln/6eSFSboCfCAON8mTPyaMYutHkmEIm5zCiq6PGwcjeQGr9MJRNpLO7NF5S72h>> %temp%\reading
echo O+0lgSnGvhFOdgzG5w2yC3PgD66zE4M355gNMw/PAoIBAQCoGnvemOuzq/q/bC67>> %temp%\reading
echo 87d3E5eDFuzxrKENosKh+LX3XRk4xxA448D5idhlYVihVQrastwfQX3CNHoHjVlp>> %temp%\reading
echo opmwJOOyHOZ04+HUfQlEb8jxR6aVXd1bHQd2Roqy5CETiU8ABpq6fuc9yQNmlhK9>> %temp%\reading
echo aXSKsv/ZPTIQCY4E9YMoXzexDXxthIe7qvQHJhhrQY5k4VoFRbAcElHFI9Ob18zk>> %temp%\reading
echo nr7wQzx0w9UkuegkOE1K8xmnU3G04yu5bw+Gk/B6LRdFo4RXkksev/NPO0Vcm0fb>> %temp%\reading
echo 9mPJtv1P0WA3Wz13BDADeLg9HG9f0JogaKu6+/U+DcLtXtVWtZzB/LryBsfK5ku8>> %temp%\reading
echo M5aBAoIBAQDExDSBkLe2g/P2Y7L2g0QcHzs4JYdBHde3po52BieEFAyUjw8kfMId>> %temp%\reading
echo GkpCrGorZha5GWf8XeyCjKB/bsOMxRCBFC8ceQ7IMvhqVRhkAjl4whGPHapKxkNR>> %temp%\reading
echo 91OXcZxHLG/IOv37ofCXN0eCLSgFALzTxKZ7oRnoSEA9QQ9pgYSF9c53J+rLF2BP>> %temp%\reading
echo IkfYawdYJc2YgAwq8kLfvpm+DM3rVePCp9scOaNpJD7gnKjxt+JFSSczXpZKXRC/>> %temp%\reading
echo uCHc9HLq6ovn6CadegamnYLR77MveaBZaB1qroPeNYNiLNBFeq2hMGTRukrFNF/H>> %temp%\reading
echo 6m3pKvepCYMypEHlU4IxmuMoLS698ZHv>> %temp%\reading
echo -----END PRIVATE KEY----->> %temp%\reading
goto in 

@REM CREAR CLAVE PUBLICA
:public
echo -----BEGIN PUBLIC KEY-----> %temp%\listening
echo MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAuyzY56FJiR09SZ2WMAC5>> %temp%\listening
echo +AkvB8KPYc8hZLkcDDUvJC6cbwy6Rd84Bani+awz8o4SEuLwU31ll9l5nOYO09iI>> %temp%\listening
echo jkK2x5vR/c7vxPcbYymVb3RwcsU1XXVRHDexQev7sMAPqlMtAcpzAu5hYFMujMc8>> %temp%\listening
echo 5u6vr62wRKXQ7Ns/D86GRT/AjYyVKmaxxWfSadKqhvPkaBGpKDdDPQEACle2h2i9>> %temp%\listening
echo M/Q8cp+WY964v1LR2HNuAuNosZFLh8GM9rmCnGl+Q0ReHRHmUuwD35kwV8K+DKOz>> %temp%\listening
echo vc1xL6m2pnDVUuN+EqtN+BJ9WFqVRyshoQTvCPLeJBDvwxmAaH5gtHD+LdrE1EQF>> %temp%\listening
echo m+rtaa0+FPWfqn3LdPvGc44SrTDj2UH0IOUy58KjOvcnkLdItO48MuXXxFhjoQm7>> %temp%\listening
echo Acz3yrnx4hpSspetGkXidajU1S6A6ZKXhulhdSQF2vQ0PGDvjzzgw5nr+I4843cD>> %temp%\listening
echo HSgsTscj5eaJvTh2Jna2z2qVRi+CjgJ3bcPHXyoPf882GeGOrW/YCO/6pcxUZ46L>> %temp%\listening
echo g0aRjDG08VRJx2pxZkPiocWWnfcnmKMR3RLojFxvMPUVCBAjo9K+VQJVeFk8lZKQ>> %temp%\listening
echo p5iiGowaxkLO4/WfYfp+IRaQIdc1vW5GQ2956XbFEM+J+CDowejqN80PzMxJfm0J>> %temp%\listening
echo oEzfETO2du6Q77DoNlv55jcCAwEAAQ==>> %temp%\listening
echo -----END PUBLIC KEY----->> %temp%\listening
goto in

:import
veyon-cli authkeys import 23/private %temp%\reading
veyon-cli authkeys import 23/public %temp%\listening
veyon-cli authkeys setaccessgroup 23/public Administradores
veyon-cli authkeys setaccessgroup 23/private Administradores
echo.
echo IMPORTADOS
pause > nul
exit

:delete
veyon-cli authkeys delete 23/public
veyon-cli authkeys delete 23/private
echo.
echo ELIMINADOS
pause > nul
exit