#!/bin/bash

export FABRIC_CFG_PATH=$PWD

#genesis.block 파일이 생성 될 channel-artifacts 디렉토리를 생성한다.
mkdir ./channel-artifacts

#orderer genesis block: 프로필에 지정된 이름은 configtx.yaml 의 "OrdererGenesisProfile" 이다.
./bin/configtxgen -profile OneOrgOrdererGenesis -outputBlock ./channel-artifacts/genesis.block

#channel configuration transaction: 프로필에 지정된 이름은 configtx.yaml의 "ChannelProfile" 이다.
./bin/configtxgen -profile OneOrgChannel -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID channel1


