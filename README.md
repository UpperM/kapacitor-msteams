<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better please fork the repo and create a pull request or simple open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->
<!-- PROJECT LOGO -->
<br />
<p align="center">

  <h3 align="center">Kapacitor - Microsoft Teams</h3>

  <p align="center">
    Send alerts to Microsoft Teams!
    
  </p>
  
![product-screenshot]
</p>


<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Contact](#contact)



<!-- ABOUT THE PROJECT -->
## About The Project
I made this small script because the integration of MS Teams is still waiting > https://github.com/influxdata/kapacitor/pull/1965

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites
* Curl (https://curl.haxx.se/)
* JQ (https://stedolan.github.io/jq/)

### Installation

1. Install cURL & jq
```sh
apt install jq curl
```
3. Copy the script to /etc/kapacitor/scripts

4. If needed, make it executable
```sh
chmod +x /etc/kapacitor/scripts/sendTeamsNotification.sh
```
5. Modify the script and set your own webHook URL
```sh
webhook="https://outlook.office.com/webhook/XXXXXXXXXXXXXXXX/IncomingWebhook/XXXXXXXXXXXXXXXXXX"
```
6. On Kapacitor, configure the exec function with the full path of the script eg
```sh
.exec('/etc/kapacitor/scripts/sendTeamsNotification.sh')
```
7. Go !

<!-- CONTACT -->
## Contact
UpperM - [@uppperm](https://twitter.com/uppperm)


<!-- MARKDOWN LINKS & IMAGES -->
[build-shield]: https://img.shields.io/badge/build-passing-brightgreen.svg?style=flat-square
[contributors-shield]: https://img.shields.io/badge/contributors-1-orange.svg?style=flat-square
[license-shield]: https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square
[license-url]: https://choosealicense.com/licenses/mit
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/matthieuc/
[product-screenshot]: https://github.com/UpperM/kapacitor-msteams/blob/master/example.png
