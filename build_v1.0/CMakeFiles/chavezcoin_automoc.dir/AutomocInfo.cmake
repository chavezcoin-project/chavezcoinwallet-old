set(AM_SOURCES "/root/chavezcoinwallet/chavezcoin/src/Common/Base58.cpp;/root/chavezcoinwallet/chavezcoin/src/Common/CommandLine.cpp;/root/chavezcoinwallet/chavezcoin/src/Common/Util.cpp;/root/chavezcoinwallet/chavezcoin/src/Common/StringTools.cpp;/root/chavezcoinwallet/chavezcoin/src/Common/JsonValue.cpp;/root/chavezcoinwallet/chavezcoin/src/Common/ConsoleTools.cpp;/root/chavezcoinwallet/chavezcoin/src/Common/MemoryInputStream.cpp;/root/chavezcoinwallet/chavezcoin/src/Common/PathTools.cpp;/root/chavezcoinwallet/chavezcoin/src/Common/StdInputStream.cpp;/root/chavezcoinwallet/chavezcoin/src/Common/StdOutputStream.cpp;/root/chavezcoinwallet/chavezcoin/src/Common/StreamTools.cpp;/root/chavezcoinwallet/chavezcoin/src/Common/StringOutputStream.cpp;/root/chavezcoinwallet/chavezcoin/src/Common/StringView.cpp;/root/chavezcoinwallet/chavezcoin/src/Common/VectorOutputStream.cpp;/root/chavezcoinwallet/chavezcoin/src/crypto/crypto.cpp;/root/chavezcoinwallet/chavezcoin/src/crypto/slow-hash.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/BlockchainIndices.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/BlockchainMessages.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/BlockIndex.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/CoreConfig.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/CryptoNoteBasic.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/CryptoNoteTools.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/Currency.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/MinerConfig.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/Transaction.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/Account.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/Blockchain.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/Checkpoints.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/CryptoNoteBasicImpl.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/Core.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/CryptoNoteFormatUtils.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/CryptoNoteSerialization.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/Difficulty.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/IBlock.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/Miner.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/TransactionExtra.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/TransactionPool.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/TransactionPrefixImpl.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteCore/TransactionUtils.cpp;/root/chavezcoinwallet/chavezcoin/src/InProcessNode/InProcessNode.cpp;/root/chavezcoinwallet/chavezcoin/src/InProcessNode/InProcessNodeErrors.cpp;/root/chavezcoinwallet/chavezcoin/src/NodeRpcProxy/NodeErrors.cpp;/root/chavezcoinwallet/chavezcoin/src/NodeRpcProxy/NodeRpcProxy.cpp;/root/chavezcoinwallet/chavezcoin/src/P2p/NetNodeConfig.cpp;/root/chavezcoinwallet/chavezcoin/src/Serialization/BinaryInputStreamSerializer.cpp;/root/chavezcoinwallet/chavezcoin/src/Serialization/BinaryOutputStreamSerializer.cpp;/root/chavezcoinwallet/chavezcoin/src/Serialization/JsonInputValueSerializer.cpp;/root/chavezcoinwallet/chavezcoin/src/Serialization/JsonOutputStreamSerializer.cpp;/root/chavezcoinwallet/chavezcoin/src/Serialization/KVBinaryInputStreamSerializer.cpp;/root/chavezcoinwallet/chavezcoin/src/Serialization/KVBinaryOutputStreamSerializer.cpp;/root/chavezcoinwallet/chavezcoin/src/Serialization/SerializationOverloads.cpp;/root/chavezcoinwallet/chavezcoin/src/Transfers/BlockchainSynchronizer.cpp;/root/chavezcoinwallet/chavezcoin/src/Transfers/SynchronizationState.cpp;/root/chavezcoinwallet/chavezcoin/src/Transfers/TransfersConsumer.cpp;/root/chavezcoinwallet/chavezcoin/src/Transfers/TransfersContainer.cpp;/root/chavezcoinwallet/chavezcoin/src/Transfers/TransfersSubscription.cpp;/root/chavezcoinwallet/chavezcoin/src/Transfers/TransfersSynchronizer.cpp;/root/chavezcoinwallet/chavezcoin/src/Wallet/LegacyKeysImporter.cpp;/root/chavezcoinwallet/chavezcoin/src/Wallet/WalletAsyncContextCounter.cpp;/root/chavezcoinwallet/chavezcoin/src/Wallet/WalletErrors.cpp;/root/chavezcoinwallet/chavezcoin/src/WalletLegacy/KeysStorage.cpp;/root/chavezcoinwallet/chavezcoin/src/WalletLegacy/WalletLegacy.cpp;/root/chavezcoinwallet/chavezcoin/src/WalletLegacy/WalletHelper.cpp;/root/chavezcoinwallet/chavezcoin/src/WalletLegacy/WalletLegacySerializer.cpp;/root/chavezcoinwallet/chavezcoin/src/WalletLegacy/WalletLegacySerialization.cpp;/root/chavezcoinwallet/chavezcoin/src/WalletLegacy/WalletTransactionSender.cpp;/root/chavezcoinwallet/chavezcoin/src/WalletLegacy/WalletUnconfirmedTransactions.cpp;/root/chavezcoinwallet/chavezcoin/src/WalletLegacy/WalletUserTransactionsCache.cpp;/root/chavezcoinwallet/chavezcoin/src/System/ContextGroup.cpp;/root/chavezcoinwallet/chavezcoin/src/System/Event.cpp;/root/chavezcoinwallet/chavezcoin/src/System/EventLock.cpp;/root/chavezcoinwallet/chavezcoin/src/System/InterruptedException.cpp;/root/chavezcoinwallet/chavezcoin/src/System/Ipv4Address.cpp;/root/chavezcoinwallet/chavezcoin/src/System/TcpStream.cpp;/root/chavezcoinwallet/chavezcoin/src/HTTP/HttpRequest.cpp;/root/chavezcoinwallet/chavezcoin/src/HTTP/HttpParser.cpp;/root/chavezcoinwallet/chavezcoin/src/HTTP/HttpParserErrorCodes.cpp;/root/chavezcoinwallet/chavezcoin/src/HTTP/HttpResponse.cpp;/root/chavezcoinwallet/chavezcoin/src/Rpc/HttpClient.cpp;/root/chavezcoinwallet/chavezcoin/src/Rpc/JsonRpc.cpp;/root/chavezcoinwallet/chavezcoin/src/P2p/NetNode.cpp;/root/chavezcoinwallet/chavezcoin/src/P2p/LevinProtocol.cpp;/root/chavezcoinwallet/chavezcoin/src/P2p/PeerListManager.cpp;/root/chavezcoinwallet/chavezcoin/src/CryptoNoteProtocol/CryptoNoteProtocolHandler.cpp;/root/chavezcoinwallet/chavezcoin/src/Logging/ILogger.cpp;/root/chavezcoinwallet/chavezcoin/src/Logging/LoggerGroup.cpp;/root/chavezcoinwallet/chavezcoin/src/Logging/CommonLogger.cpp;/root/chavezcoinwallet/chavezcoin/src/Logging/LoggerManager.cpp;/root/chavezcoinwallet/chavezcoin/src/Logging/FileLogger.cpp;/root/chavezcoinwallet/chavezcoin/src/Logging/StreamLogger.cpp;/root/chavezcoinwallet/chavezcoin/src/Logging/ConsoleLogger.cpp;/root/chavezcoinwallet/chavezcoin/src/Logging/LoggerMessage.cpp;/root/chavezcoinwallet/chavezcoin/src/Logging/LoggerRef.cpp;/root/chavezcoinwallet/chavezcoin/src/BlockchainExplorer/BlockchainExplorer.cpp;/root/chavezcoinwallet/chavezcoin/src/BlockchainExplorer/BlockchainExplorerDataBuilder.cpp;/root/chavezcoinwallet/chavezcoin/src/BlockchainExplorer/BlockchainExplorerErrors.cpp;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/Dispatcher.cpp;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/Ipv4Resolver.cpp;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/TcpConnector.cpp;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/Timer.cpp;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/TcpConnection.cpp;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/TcpListener.cpp;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/ErrorMessage.cpp" )
set(AM_HEADERS "/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/TcpConnection.h;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/ErrorMessage.h;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/TcpListener.h;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/Future.h;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/Dispatcher.h;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/Timer.h;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/TcpConnector.h;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux/System/Ipv4Resolver.h" )
set(AM_MOC_COMPILE_DEFINITIONS "GIT_REVISION=\"a42d92e\";_GNU_SOURCE")
set(AM_MOC_INCLUDES "/root/chavezcoinwallet/build;/root/chavezcoinwallet/src;/root/chavezcoinwallet/chavezcoin/external;/root/chavezcoinwallet/chavezcoin/include;/root/chavezcoinwallet/chavezcoin/src;/root/chavezcoinwallet/chavezcoin/src/Platform/Linux;/usr/include")
set(AM_MOC_OPTIONS "")
set(AM_CMAKE_INCLUDE_DIRECTORIES_PROJECT_BEFORE "")
set(AM_CMAKE_BINARY_DIR "/root/chavezcoinwallet/build/")
set(AM_CMAKE_SOURCE_DIR "/root/chavezcoinwallet/")
set(AM_QT_MOC_EXECUTABLE "/usr/lib/x86_64-linux-gnu/qt5/bin/moc")
if(DEFINED ENV{DEB_BUILD_MULTIARCH} AND DEFINED ENV{DEB_HOST_MULTIARCH} AND "/usr/lib/x86_64-linux-gnu/qt5/bin/moc" MATCHES "/usr/lib/$ENV{DEB_HOST_MULTIARCH}/qt5/bin/moc")
  set(AM_QT_MOC_EXECUTABLE "/usr/lib/$ENV{DEB_BUILD_MULTIARCH}/qt5/bin/moc")
endif()
set(AM_CMAKE_CURRENT_SOURCE_DIR "/root/chavezcoinwallet/")
set(AM_CMAKE_CURRENT_BINARY_DIR "/root/chavezcoinwallet/build/")
set(AM_QT_VERSION_MAJOR "5")
set(AM_TARGET_NAME "chavezcoin_automoc")
set(AM_RELAXED_MODE "FALSE")