SubdomainFinder is a tool for collecting subdomains of a domain. It increases the range of information gathering during the penetration test.
This script simplifies subdomain discovery and validation. Users input a target
domain, triggering the ‘assetfinder’ tool to find associated subdomains. The script
checks subdomain status using ‘httprobe’, removes duplicates, and provides useful
stats like initial and final counts. Designed for cybersecurity, it showcases effective
reconnaissance, emphasizing simplicity, stats reporting, and utility for professionals.

Usage:

git clone https://github.com/Imashiff/live-subdomains-finder/

cd live-subdomains-finder

chmod +x livesubdomain.sh

./livesubdomain.sh
