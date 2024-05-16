2024-05-14 21:48:32,806 p=49211 u=gonzales n=ansible | ERROR! conflicting action statements: command, cron

The error appears to be in '/home/gonzales/playbook.yaml': line 84, column 7, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:


    - name: Backup Documents folder
      ^ here

2024-05-14 21:48:49,329 p=49228 u=gonzales n=ansible | ERROR! conflicting action statements: command, cron

The error appears to be in '/home/gonzales/playbook.yaml': line 84, column 7, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:


    - name: Backup Documents folder
      ^ here

2024-05-14 21:50:42,225 p=49514 u=gonzales n=ansible | ERROR! the playbook: playbook.ya could not be found
2024-05-14 21:50:47,266 p=49516 u=gonzales n=ansible | [WARNING]: Could not match supplied host pattern, ignoring: Server

2024-05-14 21:50:47,266 p=49516 u=gonzales n=ansible | PLAY [Setup Certificate Authority, Configure SSL, and Setup Security] *****************************************************************
2024-05-14 21:50:47,266 p=49516 u=gonzales n=ansible | skipping: no hosts matched
2024-05-14 21:50:47,266 p=49516 u=gonzales n=ansible | PLAY RECAP ****************************************************************************************************************************
2024-05-14 21:52:08,107 p=49655 u=gonzales n=ansible | PLAY [Setup Certificate Authority, Configure SSL, and Setup Security] *****************************************************************
2024-05-14 21:52:08,116 p=49655 u=gonzales n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ****************************************************************
2024-05-14 21:52:09,110 p=49655 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-14 21:52:09,114 p=49655 u=gonzales n=ansible | TASK [Install required packages name={{ item }}, state=present] ***********************************************************************
2024-05-14 21:52:10,036 p=49655 u=gonzales n=ansible | ok: [192.168.56.108] => (item=openssl)
2024-05-14 21:52:17,657 p=49655 u=gonzales n=ansible | The following packages were automatically installed and are no longer required:
  libwpe-1.0-1 libwpebackend-fdo-1.0-1
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
  libccid opensc opensc-pkcs11 pcscd
The following NEW packages will be installed:
  easy-rsa libccid opensc opensc-pkcs11 pcscd
0 upgraded, 5 newly installed, 0 to remove and 3 not upgraded.
2024-05-14 21:52:17,658 p=49655 u=gonzales n=ansible | changed: [192.168.56.108] => (item=easy-rsa)
2024-05-14 21:52:17,661 p=49655 u=gonzales n=ansible | TASK [Generate CA key and certificate creates=/etc/ssl/certs/ca.crt, _raw_params=openssl req -x509 -new -nodes -keyout /etc/ssl/private/ca.key -out /etc/ssl/certs/ca.crt -subj "/C=US/ST=State/L=City/O=Organization/CN=MyCA"
] ***
2024-05-14 21:52:18,123 p=49655 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:52:18,125 p=49655 u=gonzales n=ansible | TASK [Create SSL certs directory path=/etc/ssl/certs, state=directory] ****************************************************************
2024-05-14 21:52:18,515 p=49655 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-14 21:52:18,517 p=49655 u=gonzales n=ansible | TASK [Generate SSL key and CSR creates=['/etc/ssl/private/server.key', '/etc/ssl/private/server.csr'], _raw_params=openssl req -new -newkey rsa:2048 -nodes -keyout /etc/ssl/private/server.key -out /etc/ssl/private/server.csr -subj '/C=US/ST=State/L=City/O=Organization/CN=YourDomain'] ***
2024-05-14 21:52:19,201 p=49655 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:52:19,204 p=49655 u=gonzales n=ansible | TASK [Configure SSL for the server path=/etc/ssl/private/server.crt, privatekey_path=/etc/ssl/private/server.key, csr_path=/etc/ssl/private/server.csr, owner=root, group=root, mode=0600, state=present, provider=selfsign] ***
2024-05-14 21:52:19,783 p=49655 u=gonzales n=ansible | fatal: [192.168.56.108]: FAILED! => {"changed": false, "msg": "value of provider must be one of: acme, entrust, ownca, selfsigned, got: selfsign"}
2024-05-14 21:52:19,784 p=49655 u=gonzales n=ansible | PLAY RECAP ****************************************************************************************************************************
2024-05-14 21:52:19,784 p=49655 u=gonzales n=ansible | 192.168.56.108             : ok=5    changed=3    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   
2024-05-14 21:54:00,108 p=49872 u=gonzales n=ansible | PLAY [Setup Certificate Authority, Configure SSL, and Setup Security] *****************************************************************
2024-05-14 21:54:00,112 p=49872 u=gonzales n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ****************************************************************
2024-05-14 21:54:00,927 p=49872 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-14 21:54:00,931 p=49872 u=gonzales n=ansible | TASK [Install required packages name={{ item }}, state=present] ***********************************************************************
2024-05-14 21:54:01,840 p=49872 u=gonzales n=ansible | ok: [192.168.56.108] => (item=openssl)
2024-05-14 21:54:02,628 p=49872 u=gonzales n=ansible | ok: [192.168.56.108] => (item=easy-rsa)
2024-05-14 21:54:02,631 p=49872 u=gonzales n=ansible | TASK [Generate CA key and certificate creates=/etc/ssl/certs/ca.crt, _raw_params=openssl req -x509 -new -nodes -keyout /etc/ssl/private/ca.key -out /etc/ssl/certs/ca.crt -subj "/C=US/ST=State/L=City/O=Organization/CN=MyCA"
] ***
2024-05-14 21:54:02,987 p=49872 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-14 21:54:02,989 p=49872 u=gonzales n=ansible | TASK [Create SSL certs directory path=/etc/ssl/certs, state=directory] ****************************************************************
2024-05-14 21:54:03,347 p=49872 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-14 21:54:03,349 p=49872 u=gonzales n=ansible | TASK [Generate SSL key and CSR creates=['/etc/ssl/private/server.key', '/etc/ssl/private/server.csr'], _raw_params=openssl req -new -newkey rsa:2048 -nodes -keyout /etc/ssl/private/server.key -out /etc/ssl/private/server.csr -subj '/C=US/ST=State/L=City/O=Organization/CN=YourDomain'] ***
2024-05-14 21:54:03,791 p=49872 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:54:03,794 p=49872 u=gonzales n=ansible | TASK [Configure SSL for the server path=/etc/ssl/private/server.crt, privatekey_path=/etc/ssl/private/server.key, csr_path=/etc/ssl/private/server.csr, owner=root, group=root, mode=0600, state=present, provider=selfsigned] ***
2024-05-14 21:54:04,371 p=49872 u=gonzales n=ansible | [0;31m--- before[0m
[0;31m[0m[0;32m+++ after[0m
[0;32m[0m[0;36m@@ -1 +1,102 @@[0m
[0;36m[0m[0;31m-{}[0m
[0;31m[0m[0;32m+{[0m
[0;32m[0m[0;32m+    "authority_cert_issuer": null,[0m
[0;32m[0m[0;32m+    "authority_cert_serial_number": null,[0m
[0;32m[0m[0;32m+    "authority_key_identifier": null,[0m
[0;32m[0m[0;32m+    "basic_constraints": null,[0m
[0;32m[0m[0;32m+    "basic_constraints_critical": false,[0m
[0;32m[0m[0;32m+    "can_parse_certificate": true,[0m
[0;32m[0m[0;32m+    "expired": false,[0m
[0;32m[0m[0;32m+    "extended_key_usage": null,[0m
[0;32m[0m[0;32m+    "extended_key_usage_critical": false,[0m
[0;32m[0m[0;32m+    "extensions_by_oid": {[0m
[0;32m[0m[0;32m+        "2.5.29.14": {[0m
[0;32m[0m[0;32m+            "critical": false,[0m
[0;32m[0m[0;32m+            "value": "BBQIVD+qhTXTuszFo2Wi7Y7pvYN0uw=="[0m
[0;32m[0m[0;32m+        }[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "fingerprints": {[0m
[0;32m[0m[0;32m+        "sha256": "11:88:af:02:c9:7c:55:3f:0c:84:0d:79:68:b2:c1:ae:cf:44:ad:54:bf:49:0d:01:a1:9b:7f:14:c1:b8:09:be"[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "issuer": {[0m
[0;32m[0m[0;32m+        "commonName": "YourDomain",[0m
[0;32m[0m[0;32m+        "countryName": "US",[0m
[0;32m[0m[0;32m+        "localityName": "City",[0m
[0;32m[0m[0;32m+        "organizationName": "Organization",[0m
[0;32m[0m[0;32m+        "stateOrProvinceName": "State"[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "issuer_ordered": [[0m
[0;32m[0m[0;32m+        [[0m
[0;32m[0m[0;32m+            "countryName",[0m
[0;32m[0m[0;32m+            "US"[0m
[0;32m[0m[0;32m+        ],[0m
[0;32m[0m[0;32m+        [[0m
[0;32m[0m[0;32m+            "stateOrProvinceName",[0m
[0;32m[0m[0;32m+            "State"[0m
[0;32m[0m[0;32m+        ],[0m
[0;32m[0m[0;32m+        [[0m
[0;32m[0m[0;32m+            "localityName",[0m
[0;32m[0m[0;32m+            "City"[0m
[0;32m[0m[0;32m+        ],[0m
[0;32m[0m[0;32m+        [[0m
[0;32m[0m[0;32m+            "organizationName",[0m
[0;32m[0m[0;32m+            "Organization"[0m
[0;32m[0m[0;32m+        ],[0m
[0;32m[0m[0;32m+        [[0m
[0;32m[0m[0;32m+            "commonName",[0m
[0;32m[0m[0;32m+            "YourDomain"[0m
[0;32m[0m[0;32m+        ][0m
[0;32m[0m[0;32m+    ],[0m
[0;32m[0m[0;32m+    "issuer_uri": null,[0m
[0;32m[0m[0;32m+    "key_usage": null,[0m
[0;32m[0m[0;32m+    "key_usage_critical": false,[0m
[0;32m[0m[0;32m+    "not_after": "20340512135404Z",[0m
[0;32m[0m[0;32m+    "not_before": "20240514135404Z",[0m
[0;32m[0m[0;32m+    "ocsp_must_staple": null,[0m
[0;32m[0m[0;32m+    "ocsp_must_staple_critical": false,[0m
[0;32m[0m[0;32m+    "ocsp_uri": null,[0m
[0;32m[0m[0;32m+    "public_key": "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvuURJTvWGCnrQHr3AkGc\ny3s+xdlZQlh1UpyFfwPaxpCNCvlWh1GL+cS/OyHTvvTvBYoeziW55Ra8hrH+gCLk\nbPrP+zadvW512GgM+Vq493bK/foIk5LW0cH87Z+drCEbg8WAz7EtbYtz0X9iB5me\nHVSmuxHaxn3KbvAZJzvO7w5+J3hwydlvrHZoNm1KJ26qvtM84kYQWTjSySMcoCxW\njQY6HFKsMvQLx/G1uhwcOrPKh9KUklm0rqoTHeWwyDMVSj7I09aI+lH7gNdk+1Hp\ny2VnRD1u3T5nuTj3mtl3/EMiaPXm8LCMSmS4H8DmcG+GcmNdIL16zZJXij6aJK5T\nmQIDAQAB\n-----END PUBLIC KEY-----\n",[0m
[0;32m[0m[0;32m+    "public_key_data": {[0m
[0;32m[0m[0;32m+        "exponent": 65537,[0m
[0;32m[0m[0;32m+        "modulus": 24098235078593770741251585905039580586328994224093517843094681219169965470428782918521275847470882940986046465089097983826892342074714987824806855105148772354379572821793506857069684617448319066632699148750370390660259934138280592273356223315335685961895950378899880867198980663600534037373458111828814265558359474593036733425379052541264409334805306863829550889338939153419504450733928059247482001472999751922165148687991015669774626490290339597043215706730659200167158241657629330938630417571004403610508799717332718372212572284539150978380209539487914698385401270407522590429014323952108521649220036745860567946137,[0m
[0;32m[0m[0;32m+        "size": 2048[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "public_key_fingerprints": {[0m
[0;32m[0m[0;32m+        "sha256": "8d:53:2a:0f:a3:0a:f5:94:c2:c9:93:01:24:81:bb:64:1b:be:0e:cf:96:0f:08:e1:4d:11:c9:76:cf:67:3c:55"[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "public_key_type": "RSA",[0m
[0;32m[0m[0;32m+    "serial_number": 155473294681340845437977500951368951021825155798,[0m
[0;32m[0m[0;32m+    "signature_algorithm": "sha256WithRSAEncryption",[0m
[0;32m[0m[0;32m+    "subject": {[0m
[0;32m[0m[0;32m+        "commonName": "YourDomain",[0m
[0;32m[0m[0;32m+        "countryName": "US",[0m
[0;32m[0m[0;32m+        "localityName": "City",[0m
[0;32m[0m[0;32m+        "organizationName": "Organization",[0m
[0;32m[0m[0;32m+        "stateOrProvinceName": "State"[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "subject_alt_name": null,[0m
[0;32m[0m[0;32m+    "subject_alt_name_critical": false,[0m
[0;32m[0m[0;32m+    "subject_key_identifier": "08:54:3f:aa:85:35:d3:ba:cc:c5:a3:65:a2:ed:8e:e9:bd:83:74:bb",[0m
[0;32m[0m[0;32m+    "subject_ordered": [[0m
[0;32m[0m[0;32m+        [[0m
[0;32m[0m[0;32m+            "countryName",[0m
[0;32m[0m[0;32m+            "US"[0m
[0;32m[0m[0;32m+        ],[0m
[0;32m[0m[0;32m+        [[0m
[0;32m[0m[0;32m+            "stateOrProvinceName",[0m
[0;32m[0m[0;32m+            "State"[0m
[0;32m[0m[0;32m+        ],[0m
[0;32m[0m[0;32m+        [[0m
[0;32m[0m[0;32m+            "localityName",[0m
[0;32m[0m[0;32m+            "City"[0m
[0;32m[0m[0;32m+        ],[0m
[0;32m[0m[0;32m+        [[0m
[0;32m[0m[0;32m+            "organizationName",[0m
[0;32m[0m[0;32m+            "Organization"[0m
[0;32m[0m[0;32m+        ],[0m
[0;32m[0m[0;32m+        [[0m
[0;32m[0m[0;32m+            "commonName",[0m
[0;32m[0m[0;32m+            "YourDomain"[0m
[0;32m[0m[0;32m+        ][0m
[0;32m[0m[0;32m+    ],[0m
[0;32m[0m[0;32m+    "version": 3[0m
[0;32m[0m[0;32m+}[0m
[0;32m[0m

2024-05-14 21:54:04,371 p=49872 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:54:04,377 p=49872 u=gonzales n=ansible | PLAY RECAP ****************************************************************************************************************************
2024-05-14 21:54:04,377 p=49872 u=gonzales n=ansible | 192.168.56.108             : ok=6    changed=2    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
2024-05-14 21:55:40,375 p=49971 u=gonzales n=ansible | PLAY [Setup Certificate Authority, Configure SSL, and Setup Security] *****************************************************************
2024-05-14 21:55:40,380 p=49971 u=gonzales n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ****************************************************************
2024-05-14 21:55:41,261 p=49971 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-14 21:55:41,265 p=49971 u=gonzales n=ansible | TASK [Install required packages name={{ item }}, state=present] ***********************************************************************
2024-05-14 21:55:42,269 p=49971 u=gonzales n=ansible | ok: [192.168.56.108] => (item=openssl)
2024-05-14 21:55:43,191 p=49971 u=gonzales n=ansible | ok: [192.168.56.108] => (item=easy-rsa)
2024-05-14 21:55:43,194 p=49971 u=gonzales n=ansible | TASK [Generate CA key and certificate creates=/etc/ssl/certs/ca.crt, _raw_params=openssl req -x509 -new -nodes -keyout /etc/ssl/private/ca.key -out /etc/ssl/certs/ca.crt -subj "/C=US/ST=State/L=City/O=Organization/CN=MyCA"
] ***
2024-05-14 21:55:43,599 p=49971 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-14 21:55:43,602 p=49971 u=gonzales n=ansible | TASK [Create SSL certs directory path=/etc/ssl/certs, state=directory] ****************************************************************
2024-05-14 21:55:44,051 p=49971 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-14 21:55:44,053 p=49971 u=gonzales n=ansible | TASK [Generate SSL key and CSR creates=['/etc/ssl/private/server.key', '/etc/ssl/private/server.csr'], _raw_params=openssl req -new -newkey rsa:2048 -nodes -keyout /etc/ssl/private/server.key -out /etc/ssl/private/server.csr -subj '/C=US/ST=State/L=City/O=Organization/CN=YourDomain'] ***
2024-05-14 21:55:44,468 p=49971 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:55:44,469 p=49971 u=gonzales n=ansible | TASK [Configure SSL for the server path=/etc/ssl/private/server.crt, privatekey_path=/etc/ssl/private/server.key, csr_path=/etc/ssl/private/server.csr, owner=root, group=root, mode=0600, state=present, provider=selfsigned] ***
2024-05-14 21:55:45,087 p=49971 u=gonzales n=ansible | [0;31m--- before[0m
[0;31m[0m[0;32m+++ after[0m
[0;32m[0m[0;36m@@ -11,11 +11,11 @@[0m
[0;36m[0m     "extensions_by_oid": {
         "2.5.29.14": {
             "critical": false,
[0;31m-            "value": "BBQIVD+qhTXTuszFo2Wi7Y7pvYN0uw=="[0m
[0;31m[0m[0;32m+            "value": "BBSMwgNllCg/GnighKcynNnASeRxGg=="[0m
[0;32m[0m         }
     },
     "fingerprints": {
[0;31m-        "sha256": "11:88:af:02:c9:7c:55:3f:0c:84:0d:79:68:b2:c1:ae:cf:44:ad:54:bf:49:0d:01:a1:9b:7f:14:c1:b8:09:be"[0m
[0;31m[0m[0;32m+        "sha256": "71:e4:89:ce:bd:17:0f:75:0d:a6:ce:57:ce:35:51:e4:ae:fb:06:d9:67:00:b7:d9:5a:13:3f:3c:38:4f:e2:bd"[0m
[0;32m[0m     },
     "issuer": {
         "commonName": "YourDomain",
[0;36m@@ -49,22 +49,22 @@[0m
[0;36m[0m     "issuer_uri": null,
     "key_usage": null,
     "key_usage_critical": false,
[0;31m-    "not_after": "20340512135404Z",[0m
[0;31m[0m[0;31m-    "not_before": "20240514135404Z",[0m
[0;31m[0m[0;32m+    "not_after": "20340512135544Z",[0m
[0;32m[0m[0;32m+    "not_before": "20240514135544Z",[0m
[0;32m[0m     "ocsp_must_staple": null,
     "ocsp_must_staple_critical": false,
     "ocsp_uri": null,
[0;31m-    "public_key": "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvuURJTvWGCnrQHr3AkGc\ny3s+xdlZQlh1UpyFfwPaxpCNCvlWh1GL+cS/OyHTvvTvBYoeziW55Ra8hrH+gCLk\nbPrP+zadvW512GgM+Vq493bK/foIk5LW0cH87Z+drCEbg8WAz7EtbYtz0X9iB5me\nHVSmuxHaxn3KbvAZJzvO7w5+J3hwydlvrHZoNm1KJ26qvtM84kYQWTjSySMcoCxW\njQY6HFKsMvQLx/G1uhwcOrPKh9KUklm0rqoTHeWwyDMVSj7I09aI+lH7gNdk+1Hp\ny2VnRD1u3T5nuTj3mtl3/EMiaPXm8LCMSmS4H8DmcG+GcmNdIL16zZJXij6aJK5T\nmQIDAQAB\n-----END PUBLIC KEY-----\n",[0m
[0;31m[0m[0;32m+    "public_key": "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAneQrG5JziDFv6/31V5Ww\nNy92Jcxe5Tq6VHHKIP/2H97eU8UuGHPghdEHjjrozi5ld7vqC0gC6bRW9o3zmsW4\nyxnt2R18z5ANgg8uWq31iM6DafEOIwUpL0RixggZ44V8JnUZfTsPKtGp/JZZg8Hx\nxC/oMne5aQUFZv7Q4AiaqzCAulDaEP5h/Mah4Q3HfwW9fiMQleFAjxRDJnCKL28J\nVnqoSeX/1m4T/r+a6eSHAMqR2/dsnnTC7LdbYzpHyvzhXeWcV9AwMZw6Upz70ZlR\nOP+nHvGhq8QAf1M8ko7vYMbdJgGtKIqFfoRXtomBnnjNDPIrPPNAS/5qrdGn6O02\n2QIDAQAB\n-----END PUBLIC KEY-----\n",[0m
[0;32m[0m     "public_key_data": {
         "exponent": 65537,
[0;31m-        "modulus": 24098235078593770741251585905039580586328994224093517843094681219169965470428782918521275847470882940986046465089097983826892342074714987824806855105148772354379572821793506857069684617448319066632699148750370390660259934138280592273356223315335685961895950378899880867198980663600534037373458111828814265558359474593036733425379052541264409334805306863829550889338939153419504450733928059247482001472999751922165148687991015669774626490290339597043215706730659200167158241657629330938630417571004403610508799717332718372212572284539150978380209539487914698385401270407522590429014323952108521649220036745860567946137,[0m
[0;31m[0m[0;32m+        "modulus": 19931927905972313929431041904179641821836625972980568375859640192921293033076131056046145064542259705172185497984415919328868679959070156416989430732225613432226217667256103631078883270975151662066502112496142122634929974284381976218033165467175635254175691300114385301587063933652165688977626295135414514547739248984630034851425544901836859702265534030345017641618413622709551138574796004762129052298207580063671269375046142841244809483157339804739032255041077752900821400649285546905452569228985830497328432541149140500192529523733391146000893966086034396578998219111276662172529268231258855127048105778382164014809,[0m
[0;32m[0m         "size": 2048
     },
     "public_key_fingerprints": {
[0;31m-        "sha256": "8d:53:2a:0f:a3:0a:f5:94:c2:c9:93:01:24:81:bb:64:1b:be:0e:cf:96:0f:08:e1:4d:11:c9:76:cf:67:3c:55"[0m
[0;31m[0m[0;32m+        "sha256": "b7:17:23:9a:47:24:2a:ad:d4:5c:26:0f:e4:df:d9:7b:f4:f0:26:fe:d9:06:97:cf:9c:ec:2d:f4:05:40:78:08"[0m
[0;32m[0m     },
     "public_key_type": "RSA",
[0;31m-    "serial_number": 155473294681340845437977500951368951021825155798,[0m
[0;31m[0m[0;32m+    "serial_number": 475986951830166198923977811069133088820353526656,[0m
[0;32m[0m     "signature_algorithm": "sha256WithRSAEncryption",
     "subject": {
         "commonName": "YourDomain",
[0;36m@@ -75,7 +75,7 @@[0m
[0;36m[0m     },
     "subject_alt_name": null,
     "subject_alt_name_critical": false,
[0;31m-    "subject_key_identifier": "08:54:3f:aa:85:35:d3:ba:cc:c5:a3:65:a2:ed:8e:e9:bd:83:74:bb",[0m
[0;31m[0m[0;32m+    "subject_key_identifier": "8c:c2:03:65:94:28:3f:1a:78:a0:84:a7:32:9c:d9:c0:49:e4:71:1a",[0m
[0;32m[0m     "subject_ordered": [
         [
             "countryName",


2024-05-14 21:55:45,088 p=49971 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:55:45,089 p=49971 u=gonzales n=ansible | TASK [Install antivirus software (ClamAV) name=clamav, state=present] *****************************************************************
2024-05-14 21:56:01,750 p=49971 u=gonzales n=ansible | The following packages were automatically installed and are no longer required:
  libwpe-1.0-1 libwpebackend-fdo-1.0-1
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
  clamav-base clamav-freshclam libclamav9 libmspack0 libtfm1
Suggested packages:
  libclamunrar clamav-docs libclamunrar9
The following NEW packages will be installed:
  clamav clamav-base clamav-freshclam libclamav9 libmspack0 libtfm1
0 upgraded, 6 newly installed, 0 to remove and 3 not upgraded.
2024-05-14 21:56:01,751 p=49971 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:56:01,752 p=49971 u=gonzales n=ansible | TASK [Update ClamAV virus database _raw_params=freshclam] *****************************************************************************
2024-05-14 21:56:02,007 p=49971 u=gonzales n=ansible | fatal: [192.168.56.108]: FAILED! => {"changed": true, "cmd": ["freshclam"], "delta": "0:00:00.010113", "end": "2024-05-14 21:56:01.929607", "msg": "non-zero return code", "rc": 2, "start": "2024-05-14 21:56:01.919494", "stderr": "ERROR: Problem with internal logger (UpdateLogFile = /var/log/clamav/freshclam.log).\nERROR: initialize: libfreshclam init failed.\nERROR: Initialization error!", "stderr_lines": ["ERROR: Problem with internal logger (UpdateLogFile = /var/log/clamav/freshclam.log).", "ERROR: initialize: libfreshclam init failed.", "ERROR: Initialization error!"], "stdout": "ERROR: /var/log/clamav/freshclam.log is locked by another process", "stdout_lines": ["ERROR: /var/log/clamav/freshclam.log is locked by another process"]}
2024-05-14 21:56:02,008 p=49971 u=gonzales n=ansible | PLAY RECAP ****************************************************************************************************************************
2024-05-14 21:56:02,008 p=49971 u=gonzales n=ansible | 192.168.56.108             : ok=7    changed=3    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   
2024-05-14 21:58:07,402 p=50100 u=gonzales n=ansible | PLAY [Setup Certificate Authority, Configure SSL, and Setup Security] *****************************************************************
2024-05-14 21:58:07,406 p=50100 u=gonzales n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ****************************************************************
2024-05-14 21:58:08,307 p=50100 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-14 21:58:08,312 p=50100 u=gonzales n=ansible | TASK [Install required packages name={{ item }}, state=present] ***********************************************************************
2024-05-14 21:58:09,303 p=50100 u=gonzales n=ansible | ok: [192.168.56.108] => (item=openssl)
2024-05-14 21:58:10,085 p=50100 u=gonzales n=ansible | ok: [192.168.56.108] => (item=easy-rsa)
2024-05-14 21:58:10,087 p=50100 u=gonzales n=ansible | TASK [Generate CA key and certificate creates=/etc/ssl/certs/ca.crt, _raw_params=openssl req -x509 -new -nodes -keyout /etc/ssl/private/ca.key -out /etc/ssl/certs/ca.crt -subj "/C=US/ST=State/L=City/O=Organization/CN=MyCA"
] ***
2024-05-14 21:58:10,420 p=50100 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-14 21:58:10,422 p=50100 u=gonzales n=ansible | TASK [Create SSL certs directory path=/etc/ssl/certs, state=directory] ****************************************************************
2024-05-14 21:58:10,763 p=50100 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-14 21:58:10,765 p=50100 u=gonzales n=ansible | TASK [Generate SSL key and CSR creates=['/etc/ssl/private/server.key', '/etc/ssl/private/server.csr'], _raw_params=openssl req -new -newkey rsa:2048 -nodes -keyout /etc/ssl/private/server.key -out /etc/ssl/private/server.csr -subj '/C=US/ST=State/L=City/O=Organization/CN=YourDomain'] ***
2024-05-14 21:58:11,157 p=50100 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:58:11,159 p=50100 u=gonzales n=ansible | TASK [Configure SSL for the server path=/etc/ssl/private/server.crt, privatekey_path=/etc/ssl/private/server.key, csr_path=/etc/ssl/private/server.csr, owner=root, group=root, mode=0600, state=present, provider=selfsigned] ***
2024-05-14 21:58:11,780 p=50100 u=gonzales n=ansible | [0;31m--- before[0m
[0;31m[0m[0;32m+++ after[0m
[0;32m[0m[0;36m@@ -11,11 +11,11 @@[0m
[0;36m[0m     "extensions_by_oid": {
         "2.5.29.14": {
             "critical": false,
[0;31m-            "value": "BBSMwgNllCg/GnighKcynNnASeRxGg=="[0m
[0;31m[0m[0;32m+            "value": "BBRGZf7bU674zhnBFO8kGAwqLpAewg=="[0m
[0;32m[0m         }
     },
     "fingerprints": {
[0;31m-        "sha256": "71:e4:89:ce:bd:17:0f:75:0d:a6:ce:57:ce:35:51:e4:ae:fb:06:d9:67:00:b7:d9:5a:13:3f:3c:38:4f:e2:bd"[0m
[0;31m[0m[0;32m+        "sha256": "39:0a:83:e0:c4:53:72:57:de:41:08:f1:58:2e:94:48:e3:77:be:54:83:c6:89:67:d6:2f:52:f7:4b:00:8b:aa"[0m
[0;32m[0m     },
     "issuer": {
         "commonName": "YourDomain",
[0;36m@@ -49,22 +49,22 @@[0m
[0;36m[0m     "issuer_uri": null,
     "key_usage": null,
     "key_usage_critical": false,
[0;31m-    "not_after": "20340512135544Z",[0m
[0;31m[0m[0;31m-    "not_before": "20240514135544Z",[0m
[0;31m[0m[0;32m+    "not_after": "20340512135811Z",[0m
[0;32m[0m[0;32m+    "not_before": "20240514135811Z",[0m
[0;32m[0m     "ocsp_must_staple": null,
     "ocsp_must_staple_critical": false,
     "ocsp_uri": null,
[0;31m-    "public_key": "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAneQrG5JziDFv6/31V5Ww\nNy92Jcxe5Tq6VHHKIP/2H97eU8UuGHPghdEHjjrozi5ld7vqC0gC6bRW9o3zmsW4\nyxnt2R18z5ANgg8uWq31iM6DafEOIwUpL0RixggZ44V8JnUZfTsPKtGp/JZZg8Hx\nxC/oMne5aQUFZv7Q4AiaqzCAulDaEP5h/Mah4Q3HfwW9fiMQleFAjxRDJnCKL28J\nVnqoSeX/1m4T/r+a6eSHAMqR2/dsnnTC7LdbYzpHyvzhXeWcV9AwMZw6Upz70ZlR\nOP+nHvGhq8QAf1M8ko7vYMbdJgGtKIqFfoRXtomBnnjNDPIrPPNAS/5qrdGn6O02\n2QIDAQAB\n-----END PUBLIC KEY-----\n",[0m
[0;31m[0m[0;32m+    "public_key": "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAl4WGBcaaex+CgnISeLnx\nWgwvGkqhccWWMuDrzxiKvjlGlTkSffDCgNsh7CgxXL7EQylhoX5MJuCGu/6HuwBw\n6YNKO+OyIazsnEP3RAVY90zqtSbfynm1QeVarlniQqvpYow0amyT/I91yqvY2sru\ngOyucKZnvQGc8els3U5yJtFMwTaR+3C5T3TgkVY4a46NKE1R4rHaO4tXSxPV7U87\nvmm8oTmf4+d+v6NAuLONakDFQR1Cv8O6SRX6+dGZpijocwu05LtRzJ3qCA2NUfLl\nkByShByRDriWcoKpLxY6vpBai0E/sTwIH0agE/Y2wjjU3yUHgJu3nnuSKe0tckHi\nbQIDAQAB\n-----END PUBLIC KEY-----\n",[0m
[0;32m[0m     "public_key_data": {
         "exponent": 65537,
[0;31m-        "modulus": 19931927905972313929431041904179641821836625972980568375859640192921293033076131056046145064542259705172185497984415919328868679959070156416989430732225613432226217667256103631078883270975151662066502112496142122634929974284381976218033165467175635254175691300114385301587063933652165688977626295135414514547739248984630034851425544901836859702265534030345017641618413622709551138574796004762129052298207580063671269375046142841244809483157339804739032255041077752900821400649285546905452569228985830497328432541149140500192529523733391146000893966086034396578998219111276662172529268231258855127048105778382164014809,[0m
[0;31m[0m[0;32m+        "modulus": 19127826954362466870140907905175877011888698735700850843299518859081929810462811648158338779822693730363549558064960920790486888792984280563682902594597904468079696135526145300181859607525507129056028042233568723473055073510618177593902317229996378053400062714859282775695563859744259086315204796888355318402848196436115635631123125125462030205236273775313814049373924107361172942445320011889629583056053622048914992983733043836801759823032101429493786732503271461511454294399803965996809364119698354543264401188508407923054278064280295072604859161092676061176279567994125643361716878134079387234200026616727083278957,[0m
[0;32m[0m         "size": 2048
     },
     "public_key_fingerprints": {
[0;31m-        "sha256": "b7:17:23:9a:47:24:2a:ad:d4:5c:26:0f:e4:df:d9:7b:f4:f0:26:fe:d9:06:97:cf:9c:ec:2d:f4:05:40:78:08"[0m
[0;31m[0m[0;32m+        "sha256": "45:73:35:01:ec:f5:0a:55:5a:81:9e:f0:c4:bd:c7:70:42:b8:78:b7:4f:2e:9c:9f:25:42:dc:06:b9:de:d5:c6"[0m
[0;32m[0m     },
     "public_key_type": "RSA",
[0;31m-    "serial_number": 475986951830166198923977811069133088820353526656,[0m
[0;31m[0m[0;32m+    "serial_number": 471384886828828697756190746168533602489369319532,[0m
[0;32m[0m     "signature_algorithm": "sha256WithRSAEncryption",
     "subject": {
         "commonName": "YourDomain",
[0;36m@@ -75,7 +75,7 @@[0m
[0;36m[0m     },
     "subject_alt_name": null,
     "subject_alt_name_critical": false,
[0;31m-    "subject_key_identifier": "8c:c2:03:65:94:28:3f:1a:78:a0:84:a7:32:9c:d9:c0:49:e4:71:1a",[0m
[0;31m[0m[0;32m+    "subject_key_identifier": "46:65:fe:db:53:ae:f8:ce:19:c1:14:ef:24:18:0c:2a:2e:90:1e:c2",[0m
[0;32m[0m     "subject_ordered": [
         [
             "countryName",


2024-05-14 21:58:11,781 p=50100 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:58:11,783 p=50100 u=gonzales n=ansible | TASK [Install antivirus software (ClamAV) name=clamav, state=present] *****************************************************************
2024-05-14 21:58:12,565 p=50100 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-14 21:58:12,568 p=50100 u=gonzales n=ansible | TASK [Stop ClamAV freshclam service name=clamav-freshclam, state=stopped] *************************************************************
2024-05-14 21:58:13,116 p=50100 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:58:13,118 p=50100 u=gonzales n=ansible | TASK [Update ClamAV virus database _raw_params=freshclam] *****************************************************************************
2024-05-14 21:58:13,385 p=50100 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:58:13,387 p=50100 u=gonzales n=ansible | TASK [Start ClamAV freshclam service name=clamav-freshclam, state=started] ************************************************************
2024-05-14 21:58:13,769 p=50100 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:58:13,771 p=50100 u=gonzales n=ansible | TASK [Install fail2ban name=fail2ban, state=present] **********************************************************************************
2024-05-14 21:58:24,955 p=50100 u=gonzales n=ansible | The following packages were automatically installed and are no longer required:
  libwpe-1.0-1 libwpebackend-fdo-1.0-1
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
  whois
Suggested packages:
  mailx monit sqlite3
The following NEW packages will be installed:
  fail2ban whois
0 upgraded, 2 newly installed, 0 to remove and 54 not upgraded.
2024-05-14 21:58:24,955 p=50100 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:58:24,957 p=50100 u=gonzales n=ansible | TASK [Ensure fail2ban is enabled and started name=fail2ban, state=started, enabled=True] **********************************************
2024-05-14 21:58:26,108 p=50100 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:58:26,110 p=50100 u=gonzales n=ansible | TASK [Configure fail2ban src=/etc/fail2ban/jail.conf, dest=/etc/fail2ban/jail.local, remote_src=True] *********************************
2024-05-14 21:58:26,467 p=50100 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:58:26,469 p=50100 u=gonzales n=ansible | TASK [Install rsync for backups name=rsync, state=present] ****************************************************************************
2024-05-14 21:58:27,351 p=50100 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-14 21:58:27,353 p=50100 u=gonzales n=ansible | TASK [Create backup directory path=/backup/documents, state=directory, owner=root, group=root, mode=0755] *****************************
2024-05-14 21:58:27,609 p=50100 u=gonzales n=ansible | [0;31m--- before[0m
[0;31m[0m[0;32m+++ after[0m
[0;32m[0m[0;36m@@ -1,4 +1,4 @@[0m
[0;36m[0m {
     "path": "/backup/documents",
[0;31m-    "state": "absent"[0m
[0;31m[0m[0;32m+    "state": "directory"[0m
[0;32m[0m }


2024-05-14 21:58:27,609 p=50100 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:58:27,611 p=50100 u=gonzales n=ansible | TASK [Perform initial backup of Documents folder creates=/backup/documents, _raw_params=rsync -a --delete /home/gonzales/Documents/ /backup/documents/] ***
2024-05-14 21:58:27,865 p=50100 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-14 21:58:27,867 p=50100 u=gonzales n=ansible | TASK [Schedule daily backup of Documents folder name=Backup Documents folder daily, special_time=daily, job=rsync -a --delete /home/gonzales/Documents/ /backup/documents/] ***
2024-05-14 21:58:28,225 p=50100 u=gonzales n=ansible | [0;31m--- before: crontab[0m
[0;31m[0m[0;32m+++ after: crontab[0m
[0;32m[0m[0;36m@@ -0,0 +1,2 @@[0m
[0;36m[0m[0;32m+#Ansible: Backup Documents folder daily[0m
[0;32m[0m[0;32m+@daily rsync -a --delete /home/gonzales/Documents/ /backup/documents/[0m
[0;32m[0m

2024-05-14 21:58:28,226 p=50100 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:58:28,230 p=50100 u=gonzales n=ansible | RUNNING HANDLER [Restart fail2ban name=fail2ban, state=restarted] *********************************************************************
2024-05-14 21:58:28,872 p=50100 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-14 21:58:28,876 p=50100 u=gonzales n=ansible | PLAY RECAP ****************************************************************************************************************************
2024-05-14 21:58:28,877 p=50100 u=gonzales n=ansible | 192.168.56.108             : ok=18   changed=11   unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
2024-05-15 00:50:02,495 p=67254 u=gonzales n=ansible | [WARNING]: Could not match supplied host pattern, ignoring: ping

2024-05-15 00:50:02,495 p=67254 u=gonzales n=ansible | [WARNING]: No hosts matched, nothing to do

2024-05-15 00:50:41,900 p=67273 u=gonzales n=ansible | [WARNING]: Unable to parse /home/gonzales/hosts as an inventory source

2024-05-15 00:50:41,901 p=67273 u=gonzales n=ansible | [WARNING]: No inventory was parsed, only implicit localhost is available

2024-05-15 00:50:41,903 p=67273 u=gonzales n=ansible | [WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not match
'all'

2024-05-15 00:51:07,582 p=67289 u=gonzales n=ansible | 192.168.56.108 | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
2024-05-15 01:13:39,374 p=72970 u=gonzales n=ansible | [WARNING]: No inventory was parsed, only implicit localhost is available

2024-05-15 01:13:39,380 p=72970 u=gonzales n=ansible | [WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not match
'all'

2024-05-15 01:13:39,380 p=72970 u=gonzales n=ansible | [WARNING]: Could not match supplied host pattern, ignoring: Server

2024-05-15 01:21:23,922 p=73603 u=gonzales n=ansible | 192.168.56.108 | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
2024-05-15 01:21:41,968 p=73619 u=gonzales n=ansible | PLAY [Setup Certificate Authority, Configure SSL, and Setup Security] **************************************************
2024-05-15 01:21:41,973 p=73619 u=gonzales n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] *************************************************
2024-05-15 01:21:42,684 p=73619 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:21:42,688 p=73619 u=gonzales n=ansible | TASK [Install required packages name={{ item }}, state=present] ********************************************************
2024-05-15 01:21:43,736 p=73619 u=gonzales n=ansible | ok: [192.168.56.108] => (item=openssl)
2024-05-15 01:21:44,625 p=73619 u=gonzales n=ansible | ok: [192.168.56.108] => (item=easy-rsa)
2024-05-15 01:21:44,629 p=73619 u=gonzales n=ansible | TASK [Generate CA key and certificate creates=/etc/ssl/certs/ca.crt, _raw_params=openssl req -x509 -new -nodes -keyout /etc/ssl/private/ca.key -out /etc/ssl/certs/ca.crt -subj "/C=US/ST=State/L=City/O=Organization/CN=MyCA"
] ***
2024-05-15 01:21:45,001 p=73619 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:21:45,003 p=73619 u=gonzales n=ansible | TASK [Create SSL certs directory path=/etc/ssl/certs, state=directory] *************************************************
2024-05-15 01:21:45,384 p=73619 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:21:45,386 p=73619 u=gonzales n=ansible | TASK [Generate SSL key and CSR creates=['/etc/ssl/private/server.key', '/etc/ssl/private/server.csr'], _raw_params=openssl req -new -newkey rsa:2048 -nodes -keyout /etc/ssl/private/server.key -out /etc/ssl/private/server.csr -subj '/C=US/ST=State/L=City/O=Organization/CN=YourDomain'] ***
2024-05-15 01:21:45,923 p=73619 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-15 01:21:45,925 p=73619 u=gonzales n=ansible | TASK [Configure SSL for the server path=/etc/ssl/private/server.crt, privatekey_path=/etc/ssl/private/server.key, csr_path=/etc/ssl/private/server.csr, owner=root, group=root, mode=0600, state=present, provider=selfsigned] ***
2024-05-15 01:21:46,568 p=73619 u=gonzales n=ansible | [0;31m--- before[0m
[0;31m[0m[0;32m+++ after[0m
[0;32m[0m[0;36m@@ -11,11 +11,11 @@[0m
[0;36m[0m     "extensions_by_oid": {
         "2.5.29.14": {
             "critical": false,
[0;31m-            "value": "BBRGZf7bU674zhnBFO8kGAwqLpAewg=="[0m
[0;31m[0m[0;32m+            "value": "BBTQDmkP4A3Dz2oifzM7DYLzXYJoTg=="[0m
[0;32m[0m         }
     },
     "fingerprints": {
[0;31m-        "sha256": "39:0a:83:e0:c4:53:72:57:de:41:08:f1:58:2e:94:48:e3:77:be:54:83:c6:89:67:d6:2f:52:f7:4b:00:8b:aa"[0m
[0;31m[0m[0;32m+        "sha256": "1a:49:d9:38:6b:0d:27:9f:3e:43:41:35:dc:43:36:ee:01:8d:18:df:2c:c9:da:a7:36:ea:e4:58:29:b5:a6:03"[0m
[0;32m[0m     },
     "issuer": {
         "commonName": "YourDomain",
[0;36m@@ -49,22 +49,22 @@[0m
[0;36m[0m     "issuer_uri": null,
     "key_usage": null,
     "key_usage_critical": false,
[0;31m-    "not_after": "20340512135811Z",[0m
[0;31m[0m[0;31m-    "not_before": "20240514135811Z",[0m
[0;31m[0m[0;32m+    "not_after": "20340512172146Z",[0m
[0;32m[0m[0;32m+    "not_before": "20240514172146Z",[0m
[0;32m[0m     "ocsp_must_staple": null,
     "ocsp_must_staple_critical": false,
     "ocsp_uri": null,
[0;31m-    "public_key": "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAl4WGBcaaex+CgnISeLnx\nWgwvGkqhccWWMuDrzxiKvjlGlTkSffDCgNsh7CgxXL7EQylhoX5MJuCGu/6HuwBw\n6YNKO+OyIazsnEP3RAVY90zqtSbfynm1QeVarlniQqvpYow0amyT/I91yqvY2sru\ngOyucKZnvQGc8els3U5yJtFMwTaR+3C5T3TgkVY4a46NKE1R4rHaO4tXSxPV7U87\nvmm8oTmf4+d+v6NAuLONakDFQR1Cv8O6SRX6+dGZpijocwu05LtRzJ3qCA2NUfLl\nkByShByRDriWcoKpLxY6vpBai0E/sTwIH0agE/Y2wjjU3yUHgJu3nnuSKe0tckHi\nbQIDAQAB\n-----END PUBLIC KEY-----\n",[0m
[0;31m[0m[0;32m+    "public_key": "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAr9cCYkzZtHc6MS3z08ad\nK9FapAb2fv1hpsgK0hKzw3jLku4XtncjhV7QgmuMYtSJCmSEoPGi6OegQX9x4qs/\nDwYpTRVdbDfBv11Q7CxERzZTx9nHT/uZiQQCyv9k0RQHKjv8Evap4tIHkOchOl7O\nxBornTKJul8YtzCQMtbIkbqK5XChpKTfpjyhOUjRVPntwrsWXOlravLFtlIBkL9B\nCtd7arSepU57YvWH78y6QzIFL4MVVvkLjf4UWktM+StpKL39CWKR+iGkfKYN3OeT\nO/ziRVY4MjcvOgQITG4ZleNX06HvTIP4z7blxI+qrrjexkgLg5Em2vUeiL015G1G\n5QIDAQAB\n-----END PUBLIC KEY-----\n",[0m
[0;32m[0m     "public_key_data": {
         "exponent": 65537,
[0;31m-        "modulus": 19127826954362466870140907905175877011888698735700850843299518859081929810462811648158338779822693730363549558064960920790486888792984280563682902594597904468079696135526145300181859607525507129056028042233568723473055073510618177593902317229996378053400062714859282775695563859744259086315204796888355318402848196436115635631123125125462030205236273775313814049373924107361172942445320011889629583056053622048914992983733043836801759823032101429493786732503271461511454294399803965996809364119698354543264401188508407923054278064280295072604859161092676061176279567994125643361716878134079387234200026616727083278957,[0m
[0;31m[0m[0;32m+        "modulus": 22197728412632883621752900539781260485081073525614929402449539455108070930836217842504461418786812330258430048516986901483134321052728801601317237650189791308595196947248414546216766361326243408674505611427407643302285417366767632609201281445084518298239880469378618971708001824769094006239101247705187470903465801669964505626319486471867436538606794257013960330300259754891552093472567518586014939967283890412341792255248900331175045750899819337365392691985825757511824366270525940370927150966445387260488745655228286958850771694278206731017372102213277022439955266830911896848511237679345229366108090736508016608997,[0m
[0;32m[0m         "size": 2048
     },
     "public_key_fingerprints": {
[0;31m-        "sha256": "45:73:35:01:ec:f5:0a:55:5a:81:9e:f0:c4:bd:c7:70:42:b8:78:b7:4f:2e:9c:9f:25:42:dc:06:b9:de:d5:c6"[0m
[0;31m[0m[0;32m+        "sha256": "78:22:53:25:d8:03:82:db:29:ee:fe:a0:a7:63:9b:66:13:70:6a:10:59:c4:b2:2b:b3:0c:4e:08:0d:f2:c7:15"[0m
[0;32m[0m     },
     "public_key_type": "RSA",
[0;31m-    "serial_number": 471384886828828697756190746168533602489369319532,[0m
[0;31m[0m[0;32m+    "serial_number": 538230373845871609796394154806138949563741107540,[0m
[0;32m[0m     "signature_algorithm": "sha256WithRSAEncryption",
     "subject": {
         "commonName": "YourDomain",
[0;36m@@ -75,7 +75,7 @@[0m
[0;36m[0m     },
     "subject_alt_name": null,
     "subject_alt_name_critical": false,
[0;31m-    "subject_key_identifier": "46:65:fe:db:53:ae:f8:ce:19:c1:14:ef:24:18:0c:2a:2e:90:1e:c2",[0m
[0;31m[0m[0;32m+    "subject_key_identifier": "d0:0e:69:0f:e0:0d:c3:cf:6a:22:7f:33:3b:0d:82:f3:5d:82:68:4e",[0m
[0;32m[0m     "subject_ordered": [
         [
             "countryName",


2024-05-15 01:21:46,568 p=73619 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-15 01:21:46,570 p=73619 u=gonzales n=ansible | TASK [Install antivirus software (ClamAV) name=clamav, state=present] **************************************************
2024-05-15 01:21:47,469 p=73619 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:21:47,474 p=73619 u=gonzales n=ansible | TASK [Stop ClamAV freshclam service name=clamav-freshclam, state=stopped] **********************************************
2024-05-15 01:21:48,095 p=73619 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-15 01:21:48,096 p=73619 u=gonzales n=ansible | TASK [Update ClamAV virus database _raw_params=freshclam] **************************************************************
2024-05-15 01:21:48,389 p=73619 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-15 01:21:48,391 p=73619 u=gonzales n=ansible | TASK [Start ClamAV freshclam service name=clamav-freshclam, state=started] *********************************************
2024-05-15 01:21:48,810 p=73619 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-15 01:21:48,812 p=73619 u=gonzales n=ansible | TASK [Install fail2ban name=fail2ban, state=present] *******************************************************************
2024-05-15 01:21:49,728 p=73619 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:21:49,730 p=73619 u=gonzales n=ansible | TASK [Ensure fail2ban is enabled and started name=fail2ban, state=started, enabled=True] *******************************
2024-05-15 01:21:50,169 p=73619 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:21:50,174 p=73619 u=gonzales n=ansible | TASK [Configure fail2ban src=/etc/fail2ban/jail.conf, dest=/etc/fail2ban/jail.local, remote_src=True] ******************
2024-05-15 01:21:50,562 p=73619 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:21:50,565 p=73619 u=gonzales n=ansible | TASK [Install rsync for backups name=rsync, state=present] *************************************************************
2024-05-15 01:21:51,508 p=73619 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:21:51,511 p=73619 u=gonzales n=ansible | TASK [Create backup directory path=/backup/documents, state=directory, owner=root, group=root, mode=0755] **************
2024-05-15 01:21:51,809 p=73619 u=gonzales n=ansible | [0;31m--- before[0m
[0;31m[0m[0;32m+++ after[0m
[0;32m[0m[0;36m@@ -1,5 +1,5 @@[0m
[0;36m[0m {
[0;31m-    "group": 1000,[0m
[0;31m[0m[0;31m-    "owner": 1000,[0m
[0;31m[0m[0;32m+    "group": 0,[0m
[0;32m[0m[0;32m+    "owner": 0,[0m
[0;32m[0m     "path": "/backup/documents"
 }


2024-05-15 01:21:51,810 p=73619 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-15 01:21:51,812 p=73619 u=gonzales n=ansible | TASK [Perform initial backup of Documents folder creates=/backup/documents, _raw_params=rsync -a --delete /home/gonzales/Documents/ /backup/documents/] ***
2024-05-15 01:21:52,109 p=73619 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:21:52,111 p=73619 u=gonzales n=ansible | TASK [Schedule daily backup of Documents folder name=Backup Documents folder daily, special_time=daily, job=rsync -a --delete /home/gonzales/Documents/ /backup/documents/] ***
2024-05-15 01:21:52,504 p=73619 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:21:52,510 p=73619 u=gonzales n=ansible | PLAY RECAP *************************************************************************************************************
2024-05-15 01:21:52,510 p=73619 u=gonzales n=ansible | 192.168.56.108             : ok=17   changed=6    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
2024-05-15 01:51:08,716 p=76495 u=gonzales n=ansible | PLAY [Setup Certificate Authority, Configure SSL, and Setup Security] *****************************************************************
2024-05-15 01:51:08,721 p=76495 u=gonzales n=ansible | TASK [Gathering Facts] ****************************************************************************************************************
2024-05-15 01:51:09,270 p=76495 u=gonzales n=ansible | fatal: [192.168.56.108]: FAILED! => {"msg": "Missing sudo password"}
2024-05-15 01:51:09,270 p=76495 u=gonzales n=ansible | PLAY RECAP ****************************************************************************************************************************
2024-05-15 01:51:09,271 p=76495 u=gonzales n=ansible | 192.168.56.108             : ok=0    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   
2024-05-15 01:51:26,871 p=76511 u=gonzales n=ansible | PLAY [Setup Certificate Authority, Configure SSL, and Setup Security] *****************************************************************
2024-05-15 01:51:26,875 p=76511 u=gonzales n=ansible | TASK [Gathering Facts] ****************************************************************************************************************
2024-05-15 01:51:28,081 p=76511 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:51:28,103 p=76511 u=gonzales n=ansible | TASK [Install required packages] ******************************************************************************************************
2024-05-15 01:51:29,091 p=76511 u=gonzales n=ansible | ok: [192.168.56.108] => (item=openssl)
2024-05-15 01:51:29,962 p=76511 u=gonzales n=ansible | ok: [192.168.56.108] => (item=easy-rsa)
2024-05-15 01:51:29,972 p=76511 u=gonzales n=ansible | TASK [Generate CA key and certificate] ************************************************************************************************
2024-05-15 01:51:30,341 p=76511 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:51:30,346 p=76511 u=gonzales n=ansible | TASK [Create SSL certs directory] *****************************************************************************************************
2024-05-15 01:51:30,714 p=76511 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:51:30,718 p=76511 u=gonzales n=ansible | TASK [Generate SSL key and CSR] *******************************************************************************************************
2024-05-15 01:51:31,145 p=76511 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-15 01:51:31,152 p=76511 u=gonzales n=ansible | TASK [Configure SSL for the server] ***************************************************************************************************
2024-05-15 01:51:31,801 p=76511 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-15 01:51:31,805 p=76511 u=gonzales n=ansible | TASK [Install antivirus software (ClamAV)] ********************************************************************************************
2024-05-15 01:51:32,702 p=76511 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:51:32,710 p=76511 u=gonzales n=ansible | TASK [Stop ClamAV freshclam service] **************************************************************************************************
2024-05-15 01:51:33,341 p=76511 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-15 01:51:33,347 p=76511 u=gonzales n=ansible | TASK [Update ClamAV virus database] ***************************************************************************************************
2024-05-15 01:51:33,642 p=76511 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-15 01:51:33,647 p=76511 u=gonzales n=ansible | TASK [Start ClamAV freshclam service] *************************************************************************************************
2024-05-15 01:51:34,053 p=76511 u=gonzales n=ansible | changed: [192.168.56.108]
2024-05-15 01:51:34,058 p=76511 u=gonzales n=ansible | TASK [Install fail2ban] ***************************************************************************************************************
2024-05-15 01:51:34,934 p=76511 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:51:34,939 p=76511 u=gonzales n=ansible | TASK [Ensure fail2ban is enabled and started] *****************************************************************************************
2024-05-15 01:51:35,354 p=76511 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:51:35,363 p=76511 u=gonzales n=ansible | TASK [Configure fail2ban] *************************************************************************************************************
2024-05-15 01:51:35,725 p=76511 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:51:35,730 p=76511 u=gonzales n=ansible | TASK [Install rsync for backups] ******************************************************************************************************
2024-05-15 01:51:36,605 p=76511 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:51:36,610 p=76511 u=gonzales n=ansible | TASK [Create backup directory] ********************************************************************************************************
2024-05-15 01:51:36,897 p=76511 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:51:36,901 p=76511 u=gonzales n=ansible | TASK [Perform initial backup of Documents folder] *************************************************************************************
2024-05-15 01:51:37,162 p=76511 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:51:37,169 p=76511 u=gonzales n=ansible | TASK [Schedule daily backup of Documents folder] **************************************************************************************
2024-05-15 01:51:37,577 p=76511 u=gonzales n=ansible | ok: [192.168.56.108]
2024-05-15 01:51:37,595 p=76511 u=gonzales n=ansible | PLAY RECAP ****************************************************************************************************************************
2024-05-15 01:51:37,596 p=76511 u=gonzales n=ansible | 192.168.56.108             : ok=17   changed=5    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
