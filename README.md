# Datasci
Vagrant based VM with all the tools you need to prepare, explore, analyse and visualise your data.

## Introduction
This is a set of tools I'm using to test, develop and prototype ideas. Let me know if you have comments, suggestions or ways I should improve the project. Pull requests are more than welcome! 

Warning: Nothing in this project is optimised to be use in production.


## Tools included

### Elasticsearch (with Kibana 4)
The Elasticsearch API is available at http://10.0.3.10:9200 and the Kibana interface is available at http://10.0.3.10:5601. Posting data directly to Elasticsearch is probably the easiest way to create data in the VM.

### Python
Available plugins are `Elasticsearch-py`, `Scikit Learn`, `Statsmodels`  and `SciPy` (`NumPy`, `Matplotlib`, `Pandas`, `Sympy`). PIP is also installed.

### iPython
iPython is installed and available at the address http://10.0.3.10:8888/.

### R
I don’t use a lot R, but it is always useful to have it ready.


## How to use it
1. Install Vagrant and VirtualBox
1. Open your Terminal and type
    ```shell
    cd ~
    ```
1. Clone the repository on your local computer
    ```shell
    git clone https://github.com/raffpaquin/datasci.git
    ```
1. Open the datasci folder
    ```shell
    cd datasci
    ```
1. Open the datasci folder in your terminal and type:
    ```shell
    vagrant up
    ```
1. And Voilà! Wait for a couple of minutes and your VM should be running at `10.0.3.10`

## TODOs
- Change the provisioning method from shell to chef
- Add a tutorial