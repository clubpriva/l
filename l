l(){
    mkdir noslash
    mkdir slash
    
    cd noslash
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/dotfiles.txt
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/zip.txt
    wget https://gist.githubusercontent.com/nullenc0de/649ff70b71f925c1d57e66f554b2b9da/raw/e28a060bf28d229b9a7d375d9216521934520dd9/interesting_dirsearch.txt
    wget https://raw.githubusercontent.com/Karanxa/Bug-Bounty-Wordlists/main/dotfiles.txt
    wget https://raw.githubusercontent.com/Karanxa/Bug-Bounty-Wordlists/main/backup_files_with_path.txt
    wget https://raw.githubusercontent.com/Karanxa/Bug-Bounty-Wordlists/main/backup_files_only.txt
    wget https://raw.githubusercontent.com/xajkep/wordlists/master/discovery/log_files_only.txt
    wget https://raw.githubusercontent.com/xajkep/wordlists/master/discovery/backup_files_only.txt
    wget https://raw.githubusercontent.com/Bo0oM/fuzz.txt/master/fuzz.txt
    #wget https://raw.githubusercontent.com/ARPSyndicate/kenzer-templates/main/ffuf.lst
    wget https://raw.githubusercontent.com/xajkep/wordlists/master/discovery/log_files_only.txt
    wget https://raw.githubusercontent.com/xajkep/wordlists/master/discovery/jsp_files_only.txt
    wget https://raw.githubusercontent.com/xajkep/wordlists/master/discovery/backup_files_only.txt
    wget https://raw.githubusercontent.com/six2dez/OneListForAll/main/onelistforallmicro.txt
    wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/directory-list-2.3-big.txt
    wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/raft-large-directories.txt
    cd -
    # SLASH
    cd slash
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/web-inf.txt
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/config.txt
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/yaml.txt
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/webconfig.txt
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/wad.txt
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/svc.txt
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/sql.txt
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/log.txt
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/htaccess
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/honey.txt
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/git_config.txt
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/env.txt
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/properties-files.txt
    #wget https://raw.githubusercontent.com/random-robbie/bruteforce-lists/master/cgi-files.txt
    wget https://gist.githubusercontent.com/tomnomnom/57af04c3422aac8c6f04451a4c1daa51/raw/9f551e023ff17d093dcb9f8b355c3af55827cb34/short-wordlist
    wget https://raw.githubusercontent.com/Karanxa/Bug-Bounty-Wordlists/main/env.txt
    wget https://raw.githubusercontent.com/Karanxa/Bug-Bounty-Wordlists/main/log.txt
    wget https://raw.githubusercontent.com/Karanxa/Bug-Bounty-Wordlists/main/config.txt
    wget https://raw.githubusercontent.com/Karanxa/Bug-Bounty-Wordlists/main/sql.txt
    wget https://raw.githubusercontent.com/Karanxa/Bug-Bounty-Wordlists/main/yaml.txt
    wget https://raw.githubusercontent.com/Karanxa/Bug-Bounty-Wordlists/main/cgi-bin.txt
    wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/quickhits.txt
    wget https://raw.githubusercontent.com/Karanxa/Bug-Bounty-Wordlists/main/juicy-paths.txt
    wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/RobotsDisallowed-Top1000.txt
    cd -
    cat slash/* | sed 's/^.//' > slash/temp
    sort -u noslash/* slash/temp > l.txt
    rm -rf slash/ noslash
    echo "$(wc l.txt)"
}
l
