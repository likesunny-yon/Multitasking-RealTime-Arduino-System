#include <stdio.h>
#include <string.h>
#include <stdint.h>

#include "Arduino.h"
#include "utility/spi_drv.h"
#include "utility/wifi_drv.h"

#include "arte.h"

#define _DEBUG_

extern "C" {
#include "utility/wifi_spi.h"
#include "utility/wl_types.h"
#include "utility/debug.h"
}

// Array of data to cache the information related to the networks discovered
char    WiFiDrv::_networkSsid[][WL_SSID_MAX_LENGTH] = {{"1"},{"2"},{"3"},{"4"},{"5"}};
int32_t WiFiDrv::_networkRssi[WL_NETWORKS_LIST_MAXNUM] = { 0 };
uint8_t WiFiDrv::_networkEncr[WL_NETWORKS_LIST_MAXNUM] = { 0 };

// Cached values of retrieved data
char    WiFiDrv::_ssid[] = {0};
uint8_t WiFiDrv::_bssid[] = {0};
uint8_t WiFiDrv::_mac[] = {0};
uint8_t WiFiDrv::_localIp[] = {0};
uint8_t WiFiDrv::_subnetMask[] = {0};
uint8_t WiFiDrv::_gatewayIp[] = {0};
// Firmware version
char    WiFiDrv::fwVersion[] = {0};


// Private Methods

void WiFiDrv::getNetworkData(uint8_t *ip, uint8_t *mask, uint8_t *gwip)
{
    tParam params[PARAM_NUMS_3] = { {0, (char*)ip}, {0, (char*)mask}, {0, (char*)gwip}};
    
    /* *** ARTE - begin critical section  *** */
    arteLock();

    WAIT_FOR_SLAVE_SELECT();

    // Send Command
    SpiDrv::sendCmd(GET_IPADDR_CMD, PARAM_NUMS_1);

    uint8_t _dummy = DUMMY_DATA;
    SpiDrv::sendParam(&_dummy, sizeof(_dummy), LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    SpiDrv::waitResponseParams(GET_IPADDR_CMD, PARAM_NUMS_3, params);

    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();
}

void WiFiDrv::getRemoteData(uint8_t sock, uint8_t *ip, uint8_t *port)
{
    tParam params[PARAM_NUMS_2] = { {0, (char*)ip}, {0, (char*)port} };
    
    /* *** ARTE - begin critical section  *** */
    arteLock();

    WAIT_FOR_SLAVE_SELECT();

    // Send Command
    SpiDrv::sendCmd(GET_REMOTE_DATA_CMD, PARAM_NUMS_1);
    SpiDrv::sendParam(&sock, sizeof(sock), LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    SpiDrv::waitResponseParams(GET_REMOTE_DATA_CMD, PARAM_NUMS_2, params);

    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();
}


// Public Methods


void WiFiDrv::wifiDriverInit()
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    SpiDrv::begin();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();
}

int8_t WiFiDrv::wifiSetNetwork(char* ssid, uint8_t ssid_len)
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();
    // Send Command
    SpiDrv::sendCmd(SET_NET_CMD, PARAM_NUMS_1);
    SpiDrv::sendParam((uint8_t*)ssid, ssid_len, LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _data = 0;
    uint8_t _dataLen = 0;
    if (!SpiDrv::waitResponseCmd(SET_NET_CMD, PARAM_NUMS_1, &_data, &_dataLen))
    {
        WARN("error waitResponse");
        _data = WL_FAILURE;
    }
    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();

    return(_data == WIFI_SPI_ACK) ? WL_SUCCESS : WL_FAILURE;
}

int8_t WiFiDrv::wifiSetPassphrase(char* ssid, uint8_t ssid_len, const char *passphrase, const uint8_t len)
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();
    // Send Command
    SpiDrv::sendCmd(SET_PASSPHRASE_CMD, PARAM_NUMS_2);
    SpiDrv::sendParam((uint8_t*)ssid, ssid_len, NO_LAST_PARAM);
    SpiDrv::sendParam((uint8_t*)passphrase, len, LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _data = 0;
    uint8_t _dataLen = 0;
    if (!SpiDrv::waitResponseCmd(SET_PASSPHRASE_CMD, PARAM_NUMS_1, &_data, &_dataLen))
    {
        WARN("error waitResponse");
        _data = WL_FAILURE;
    }
    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();
    
    return _data;
}


int8_t WiFiDrv::wifiSetKey(char* ssid, uint8_t ssid_len, uint8_t key_idx, const void *key, const uint8_t len)
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();
    // Send Command
    SpiDrv::sendCmd(SET_KEY_CMD, PARAM_NUMS_3);
    SpiDrv::sendParam((uint8_t*)ssid, ssid_len, NO_LAST_PARAM);
    SpiDrv::sendParam(&key_idx, KEY_IDX_LEN, NO_LAST_PARAM);
    SpiDrv::sendParam((uint8_t*)key, len, LAST_PARAM);
    
    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _data = 0;
    uint8_t _dataLen = 0;
    if (!SpiDrv::waitResponseCmd(SET_KEY_CMD, PARAM_NUMS_1, &_data, &_dataLen))
    {
        WARN("error waitResponse");
        _data = WL_FAILURE;
    }
    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();
    
    return _data;
}

void WiFiDrv::config(uint8_t validParams, uint32_t local_ip, uint32_t gateway, uint32_t subnet)
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();
    // Send Command
    SpiDrv::sendCmd(SET_IP_CONFIG_CMD, PARAM_NUMS_4);
    SpiDrv::sendParam((uint8_t*)&validParams, 1, NO_LAST_PARAM);
    SpiDrv::sendParam((uint8_t*)&local_ip, 4, NO_LAST_PARAM);
    SpiDrv::sendParam((uint8_t*)&gateway, 4, NO_LAST_PARAM);
    SpiDrv::sendParam((uint8_t*)&subnet, 4, LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _data = 0;
    uint8_t _dataLen = 0;
    if (!SpiDrv::waitResponseCmd(SET_IP_CONFIG_CMD, PARAM_NUMS_1, &_data, &_dataLen))
    {
        WARN("error waitResponse");
        _data = WL_FAILURE;
    }
    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();
}

void WiFiDrv::setDNS(uint8_t validParams, uint32_t dns_server1, uint32_t dns_server2)
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();
    // Send Command
    SpiDrv::sendCmd(SET_DNS_CONFIG_CMD, PARAM_NUMS_3);
    SpiDrv::sendParam((uint8_t*)&validParams, 1, NO_LAST_PARAM);
    SpiDrv::sendParam((uint8_t*)&dns_server1, 4, NO_LAST_PARAM);
    SpiDrv::sendParam((uint8_t*)&dns_server2, 4, LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _data = 0;
    uint8_t _dataLen = 0;
    if (!SpiDrv::waitResponseCmd(SET_DNS_CONFIG_CMD, PARAM_NUMS_1, &_data, &_dataLen))
    {
        WARN("error waitResponse");
        _data = WL_FAILURE;
    }
    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();
}


                        
int8_t WiFiDrv::disconnect()
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();
    // Send Command
    SpiDrv::sendCmd(DISCONNECT_CMD, PARAM_NUMS_1);

    uint8_t _dummy = DUMMY_DATA;
    SpiDrv::sendParam(&_dummy, 1, LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _data = 0;
    uint8_t _dataLen = 0;
    int8_t result = SpiDrv::waitResponseCmd(DISCONNECT_CMD, PARAM_NUMS_1, &_data, &_dataLen);

    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();

    return result;
}

uint8_t WiFiDrv::getConnectionStatus()
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();

    // Send Command
    SpiDrv::sendCmd(GET_CONN_STATUS_CMD, PARAM_NUMS_0);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _data = -1;
    uint8_t _dataLen = 0;
    SpiDrv::waitResponseCmd(GET_CONN_STATUS_CMD, PARAM_NUMS_1, &_data, &_dataLen);

    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();

    return _data;
}

uint8_t* WiFiDrv::getMacAddress()
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();

    // Send Command
    SpiDrv::sendCmd(GET_MACADDR_CMD, PARAM_NUMS_1);

    uint8_t _dummy = DUMMY_DATA;
    SpiDrv::sendParam(&_dummy, 1, LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _dataLen = 0;
    SpiDrv::waitResponseCmd(GET_MACADDR_CMD, PARAM_NUMS_1, _mac, &_dataLen);

    SpiDrv::spiSlaveDeselect();

    /* *** ARTE - end critical section  *** */
    arteUnlock();
    
    return _mac;
}

void WiFiDrv::getIpAddress(IPAddress& ip)
{
    getNetworkData(_localIp, _subnetMask, _gatewayIp);
    ip = _localIp;
}

 void WiFiDrv::getSubnetMask(IPAddress& mask)
 {
    getNetworkData(_localIp, _subnetMask, _gatewayIp);
    mask = _subnetMask;
 }

 void WiFiDrv::getGatewayIP(IPAddress& ip)
 {
    getNetworkData(_localIp, _subnetMask, _gatewayIp);
    ip = _gatewayIp;
 }

char* WiFiDrv::getCurrentSSID()
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();

    // Send Command
    SpiDrv::sendCmd(GET_CURR_SSID_CMD, PARAM_NUMS_1);

    uint8_t _dummy = DUMMY_DATA;
    SpiDrv::sendParam(&_dummy, 1, LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _dataLen = 0;
    SpiDrv::waitResponseCmd(GET_CURR_SSID_CMD, PARAM_NUMS_1, (uint8_t*)_ssid, &_dataLen);

    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();

    return _ssid;
}

uint8_t* WiFiDrv::getCurrentBSSID()
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();

    // Send Command
    SpiDrv::sendCmd(GET_CURR_BSSID_CMD, PARAM_NUMS_1);

    uint8_t _dummy = DUMMY_DATA;
    SpiDrv::sendParam(&_dummy, 1, LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _dataLen = 0;
    SpiDrv::waitResponseCmd(GET_CURR_BSSID_CMD, PARAM_NUMS_1, _bssid, &_dataLen);

    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();

    return _bssid;
}

int32_t WiFiDrv::getCurrentRSSI()
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();

    // Send Command
    SpiDrv::sendCmd(GET_CURR_RSSI_CMD, PARAM_NUMS_1);

    uint8_t _dummy = DUMMY_DATA;
    SpiDrv::sendParam(&_dummy, 1, LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _dataLen = 0;
    int32_t rssi = 0;
    SpiDrv::waitResponseCmd(GET_CURR_RSSI_CMD, PARAM_NUMS_1, (uint8_t*)&rssi, &_dataLen);

    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();

    return rssi;
}

uint8_t WiFiDrv::getCurrentEncryptionType()
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();

    // Send Command
    SpiDrv::sendCmd(GET_CURR_ENCT_CMD, PARAM_NUMS_1);

    uint8_t _dummy = DUMMY_DATA;
    SpiDrv::sendParam(&_dummy, 1, LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t dataLen = 0;
    uint8_t encType = 0;
    SpiDrv::waitResponseCmd(GET_CURR_ENCT_CMD, PARAM_NUMS_1, (uint8_t*)&encType, &dataLen);

    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();

    return encType;
}

int8_t WiFiDrv::startScanNetworks()
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();

    // Send Command
    SpiDrv::sendCmd(START_SCAN_NETWORKS, PARAM_NUMS_0);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _data = 0;
    uint8_t _dataLen = 0;

    if (!SpiDrv::waitResponseCmd(START_SCAN_NETWORKS, PARAM_NUMS_1, &_data, &_dataLen))
     {
         WARN("error waitResponse");
         _data = WL_FAILURE;
     }

    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();

    return (_data == WL_FAILURE)? _data : WL_SUCCESS;
}


uint8_t WiFiDrv::getScanNetworks()
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();

    // Send Command
    SpiDrv::sendCmd(SCAN_NETWORKS, PARAM_NUMS_0);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t ssidListNum = 0;
    SpiDrv::waitResponse(SCAN_NETWORKS, &ssidListNum, (uint8_t**)_networkSsid, WL_NETWORKS_LIST_MAXNUM);

    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();

    return ssidListNum;
}

char* WiFiDrv::getSSIDNetoworks(uint8_t networkItem)
{
    if (networkItem >= WL_NETWORKS_LIST_MAXNUM)
        return NULL;

    return _networkSsid[networkItem];
}

uint8_t WiFiDrv::getEncTypeNetowrks(uint8_t networkItem)
{
    if (networkItem >= WL_NETWORKS_LIST_MAXNUM)
        return NULL;

    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();

    // Send Command
    SpiDrv::sendCmd(GET_IDX_ENCT_CMD, PARAM_NUMS_1);

    SpiDrv::sendParam(&networkItem, 1, LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t dataLen = 0;
    uint8_t encType = 0;
    SpiDrv::waitResponseCmd(GET_IDX_ENCT_CMD, PARAM_NUMS_1, (uint8_t*)&encType, &dataLen);

    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();

    return encType;
}

int32_t WiFiDrv::getRSSINetoworks(uint8_t networkItem)
{
    if (networkItem >= WL_NETWORKS_LIST_MAXNUM)
        return NULL;
    int32_t networkRssi = 0;

    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();

    // Send Command
    SpiDrv::sendCmd(GET_IDX_RSSI_CMD, PARAM_NUMS_1);

    SpiDrv::sendParam(&networkItem, 1, LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t dataLen = 0;
    SpiDrv::waitResponseCmd(GET_IDX_RSSI_CMD, PARAM_NUMS_1, (uint8_t*)&networkRssi, &dataLen);

    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();

    return networkRssi;
}

uint8_t WiFiDrv::reqHostByName(const char* aHostname)
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();

    // Send Command
    SpiDrv::sendCmd(REQ_HOST_BY_NAME_CMD, PARAM_NUMS_1);
    SpiDrv::sendParam((uint8_t*)aHostname, strlen(aHostname), LAST_PARAM);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _data = 0;
    uint8_t _dataLen = 0;
    uint8_t result = SpiDrv::waitResponseCmd(REQ_HOST_BY_NAME_CMD, PARAM_NUMS_1, &_data, &_dataLen);

    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();

    return result;
}

int WiFiDrv::getHostByName(IPAddress& aResult)
{
    uint8_t  _ipAddr[WL_IPV4_LENGTH];
    IPAddress dummy(0xFF,0xFF,0xFF,0xFF);
    int result = 0;
    
    /* *** ARTE - begin critical section  *** */
    arteLock();

    WAIT_FOR_SLAVE_SELECT();
    // Send Command
    SpiDrv::sendCmd(GET_HOST_BY_NAME_CMD, PARAM_NUMS_0);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _dataLen = 0;
    if (!SpiDrv::waitResponseCmd(GET_HOST_BY_NAME_CMD, PARAM_NUMS_1, _ipAddr, &_dataLen))
    {
        WARN("error waitResponse");
    }else{
        aResult = _ipAddr;
        result = (aResult != dummy);
    }
    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();
    
    return result;
}

int WiFiDrv::getHostByName(const char* aHostname, IPAddress& aResult)
{
    uint8_t retry = 10;
    if (reqHostByName(aHostname))
    {
        while(!getHostByName(aResult) && --retry > 0)
        {
            delay(1000);
        }
    }else{
        return 0;
    }
    return (retry>0);
}

char*  WiFiDrv::getFwVersion()
{
    /* *** ARTE - begin critical section  *** */
    arteLock();
    
    WAIT_FOR_SLAVE_SELECT();
    // Send Command
    SpiDrv::sendCmd(GET_FW_VERSION_CMD, PARAM_NUMS_0);

    //Wait the reply elaboration
    SpiDrv::waitForSlaveReady();

    // Wait for reply
    uint8_t _dataLen = 0;
    if (!SpiDrv::waitResponseCmd(GET_FW_VERSION_CMD, PARAM_NUMS_1, (uint8_t*)fwVersion, &_dataLen))
    {
        WARN("error waitResponse");
    }
    SpiDrv::spiSlaveDeselect();
    
    /* *** ARTE - end critical section  *** */
    arteUnlock();
    
    return fwVersion;
}

WiFiDrv wiFiDrv;
