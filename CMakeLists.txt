cmake_minimum_required(VERSION 2.8)

include(CryptoNoteWallet.cmake)

project(${CN_PROJECT_NAME})

execute_process(COMMAND git log -1 --pretty=format:%h
WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
OUTPUT_VARIABLE GIT_REVISION)

set(CRYPTONOTE_LIB chavezcoin)

include_directories(${CMAKE_BINARY_DIR}
    src
    chavezcoin/external
    chavezcoin/include
    chavezcoin/src)

find_package(Qt5Gui REQUIRED)
find_package(Qt5Widgets REQUIRED)

set(Boost_USE_STATIC_LIBS ON)
if(WIN32)
  set(Boost_USE_STATIC_RUNTIME OFF)
else(WIN32)
  set(Boost_USE_STATIC_RUNTIME ON)
endif(WIN32)

find_package(Boost 1.55 REQUIRED COMPONENTS date_time filesystem program_options regex serialization system thread chrono)
if ((${Boost_MAJOR_VERSION} EQUAL 1) AND (${Boost_MINOR_VERSION} EQUAL 54))
	message(SEND_ERROR "Boost version 1.54 is unsupported, more details are available here http://goo.gl/RrCFmA")
endif ()

include_directories(${Boost_INCLUDE_DIRS})
link_directories(${Boost_LIBRARY_DIRS})

set(VERSION "")
configure_file("chavezcoin/src/version.h.in" "version.h")
configure_file("src/CryptoNoteWalletConfig.h.in" "CryptoNoteWalletConfig.h")

add_definitions(-DGIT_REVISION=\"${GIT_REVISION}\")

set(CMAKE_AUTOMOC ON)

set(CRYPTONOTE_SOURCES
  chavezcoin/external/miniupnpc/connecthostport.c
  chavezcoin/external/miniupnpc/igd_desc_parse.c
  chavezcoin/external/miniupnpc/minisoap.c
  chavezcoin/external/miniupnpc/miniupnpc.c
  chavezcoin/external/miniupnpc/miniwget.c
  chavezcoin/external/miniupnpc/minixml.c
  chavezcoin/external/miniupnpc/portlistingparse.c
  chavezcoin/external/miniupnpc/receivedata.c
  chavezcoin/external/miniupnpc/upnpcommands.c
  chavezcoin/external/miniupnpc/upnpreplyparse.c
  chavezcoin/src/Common/Base58.cpp
  chavezcoin/src/Common/CommandLine.cpp
  chavezcoin/src/Common/Util.cpp
  chavezcoin/src/Common/StringTools.cpp
  chavezcoin/src/Common/JsonValue.cpp
  chavezcoin/src/Common/ConsoleTools.cpp
  chavezcoin/src/Common/MemoryInputStream.cpp
  chavezcoin/src/Common/PathTools.cpp
  chavezcoin/src/Common/StdInputStream.cpp
  chavezcoin/src/Common/StdOutputStream.cpp
  chavezcoin/src/Common/StreamTools.cpp
  chavezcoin/src/Common/StringOutputStream.cpp
  chavezcoin/src/Common/StringView.cpp
  chavezcoin/src/Common/VectorOutputStream.cpp
  chavezcoin/src/crypto/blake256.c
  chavezcoin/src/crypto/chacha8.c
  chavezcoin/src/crypto/crypto-ops-data.c
  chavezcoin/src/crypto/crypto-ops.c
  chavezcoin/src/crypto/crypto.cpp
  chavezcoin/src/crypto/groestl.c
  chavezcoin/src/crypto/hash-extra-blake.c
  chavezcoin/src/crypto/hash-extra-groestl.c
  chavezcoin/src/crypto/hash-extra-jh.c
  chavezcoin/src/crypto/hash-extra-skein.c
  chavezcoin/src/crypto/hash.c
  chavezcoin/src/crypto/jh.c
  chavezcoin/src/crypto/keccak.c
  chavezcoin/src/crypto/oaes_lib.c
  chavezcoin/src/crypto/random.c
  chavezcoin/src/crypto/skein.c
  chavezcoin/src/crypto/slow-hash.c
  chavezcoin/src/crypto/slow-hash.cpp
  chavezcoin/src/crypto/tree-hash.c
  chavezcoin/src/CryptoNoteCore/BlockchainIndices.cpp
  chavezcoin/src/CryptoNoteCore/BlockchainMessages.cpp
  chavezcoin/src/CryptoNoteCore/BlockIndex.cpp
  chavezcoin/src/CryptoNoteCore/CoreConfig.cpp
  chavezcoin/src/CryptoNoteCore/CryptoNoteBasic.cpp
  chavezcoin/src/CryptoNoteCore/CryptoNoteTools.cpp
  chavezcoin/src/CryptoNoteCore/Currency.cpp
  chavezcoin/src/CryptoNoteCore/MinerConfig.cpp
  chavezcoin/src/CryptoNoteCore/Transaction.cpp
  chavezcoin/src/CryptoNoteCore/Account.cpp
  chavezcoin/src/CryptoNoteCore/Blockchain.cpp
  chavezcoin/src/CryptoNoteCore/Checkpoints.cpp
  chavezcoin/src/CryptoNoteCore/CryptoNoteBasicImpl.cpp
  chavezcoin/src/CryptoNoteCore/Core.cpp
  chavezcoin/src/CryptoNoteCore/CryptoNoteFormatUtils.cpp
  chavezcoin/src/CryptoNoteCore/CryptoNoteSerialization.cpp
  chavezcoin/src/CryptoNoteCore/Difficulty.cpp
  chavezcoin/src/CryptoNoteCore/IBlock.cpp
  chavezcoin/src/CryptoNoteCore/Miner.cpp
  chavezcoin/src/CryptoNoteCore/TransactionExtra.cpp
  chavezcoin/src/CryptoNoteCore/TransactionPool.cpp
  chavezcoin/src/CryptoNoteCore/TransactionPrefixImpl.cpp
  chavezcoin/src/CryptoNoteCore/TransactionUtils.cpp
  chavezcoin/src/InProcessNode/InProcessNode.cpp
  chavezcoin/src/InProcessNode/InProcessNodeErrors.cpp
  chavezcoin/src/NodeRpcProxy/NodeErrors.cpp
  chavezcoin/src/NodeRpcProxy/NodeRpcProxy.cpp
  chavezcoin/src/P2p/NetNodeConfig.cpp
  chavezcoin/src/Serialization/BinaryInputStreamSerializer.cpp
  chavezcoin/src/Serialization/BinaryOutputStreamSerializer.cpp
  chavezcoin/src/Serialization/JsonInputValueSerializer.cpp
  chavezcoin/src/Serialization/JsonOutputStreamSerializer.cpp
  chavezcoin/src/Serialization/KVBinaryInputStreamSerializer.cpp
  chavezcoin/src/Serialization/KVBinaryOutputStreamSerializer.cpp
  chavezcoin/src/Serialization/SerializationOverloads.cpp
  chavezcoin/src/Transfers/BlockchainSynchronizer.cpp
  chavezcoin/src/Transfers/SynchronizationState.cpp
  chavezcoin/src/Transfers/TransfersConsumer.cpp
  chavezcoin/src/Transfers/TransfersContainer.cpp
  chavezcoin/src/Transfers/TransfersSubscription.cpp
  chavezcoin/src/Transfers/TransfersSynchronizer.cpp
  chavezcoin/src/Wallet/LegacyKeysImporter.cpp
  chavezcoin/src/Wallet/WalletAsyncContextCounter.cpp
  chavezcoin/src/Wallet/WalletErrors.cpp
  chavezcoin/src/WalletLegacy/KeysStorage.cpp
  chavezcoin/src/WalletLegacy/WalletLegacy.cpp
  chavezcoin/src/WalletLegacy/WalletHelper.cpp
  chavezcoin/src/WalletLegacy/WalletLegacySerializer.cpp
  chavezcoin/src/WalletLegacy/WalletLegacySerialization.cpp
  chavezcoin/src/WalletLegacy/WalletTransactionSender.cpp
  chavezcoin/src/WalletLegacy/WalletUnconfirmedTransactions.cpp
  chavezcoin/src/WalletLegacy/WalletUserTransactionsCache.cpp
  chavezcoin/src/System/ContextGroup.cpp
  chavezcoin/src/System/Event.cpp
  chavezcoin/src/System/EventLock.cpp
  chavezcoin/src/System/InterruptedException.cpp
  chavezcoin/src/System/Ipv4Address.cpp
  chavezcoin/src/System/TcpStream.cpp
  chavezcoin/src/HTTP/HttpRequest.cpp
  chavezcoin/src/HTTP/HttpParser.cpp
  chavezcoin/src/HTTP/HttpParserErrorCodes.cpp
  chavezcoin/src/HTTP/HttpResponse.cpp
  chavezcoin/src/Rpc/HttpClient.cpp
  chavezcoin/src/Rpc/JsonRpc.cpp
  chavezcoin/src/P2p/NetNode.cpp
  chavezcoin/src/P2p/LevinProtocol.cpp
  chavezcoin/src/P2p/NetNodeConfig.cpp
  chavezcoin/src/P2p/PeerListManager.cpp
  chavezcoin/src/CryptoNoteProtocol/CryptoNoteProtocolHandler.cpp
  chavezcoin/src/Logging/ILogger.cpp
  chavezcoin/src/Logging/LoggerGroup.cpp
  chavezcoin/src/Logging/CommonLogger.cpp
  chavezcoin/src/Logging/LoggerManager.cpp
  chavezcoin/src/Logging/FileLogger.cpp
  chavezcoin/src/Logging/StreamLogger.cpp
  chavezcoin/src/Logging/ConsoleLogger.cpp
  chavezcoin/src/Logging/LoggerMessage.cpp
  chavezcoin/src/Logging/LoggerRef.cpp
  chavezcoin/src/BlockchainExplorer/BlockchainExplorer.cpp
  chavezcoin/src/BlockchainExplorer/BlockchainExplorerDataBuilder.cpp
  chavezcoin/src/BlockchainExplorer/BlockchainExplorerErrors.cpp
)

file(GLOB_RECURSE SOURCES src/*.cpp)
file(GLOB_RECURSE HEADERS src/*.h)
file(GLOB_RECURSE FORMS src/gui/ui/*.ui)

set(QRC src/resources.qrc)

qt5_wrap_ui(UIS ${FORMS})
qt5_add_resources(RCC ${QRC})


if (WIN32)
  if (NOT MSVC)
	message(FATAL_ERROR "Only MSVC is supported on this platform")
  endif ()
  add_definitions(/D_CRT_SECURE_NO_WARNINGS /D_WIN32_WINNT=0x0600 /DSTATICLIB)
  include_directories(chavezcoin/src/platform/msc)

  set(PLATFORM_DIR Windows)
  set(BUILD_PLATFORM WIN32)
  set(BUILD_RESOURCES src/chavezcoinwallet.rc)
  set(QTMAIN Qt5::WinMain)

elseif (UNIX)
  set(CRYPTONOTE_SOURCES ${CRYPTONOTE_SOURCES} chavezcoin/external/miniupnpc/minissdpc.c)
  if (APPLE)
    enable_language(ASM)
    file(GLOB_RECURSE OBJC_SOURCES src/*.mm)
    set(SOURCES ${SOURCES} ${OBJC_SOURCES})
    set(PLATFORM_DIR OSX)
    set(MACOSX_BUNDLE_INFO_STRING "Cryptonote GUI wallet")
    set(MACOSX_BUNDLE_LONG_VERSION_STRING "${VERSION_VERSION}.${VERSION_MINOR}.${VERSION_PATCH}")
    set(MACOSX_BUNDLE_BUNDLE_NAME CryptonoteWallet)
    set(MACOSX_BUNDLE_SHORT_VERSION_STRING "${VERSION_VERSION}.${VERSION_MINOR}.${VERSION_PATCH}")
    set(MACOSX_BUNDLE_BUNDLE_VERSION "$${VERSION_VERSION}.${VERSION_MINOR}.${VERSION_PATCH}")

    find_package(Qt5PrintSupport REQUIRED)

    include_directories(/usr/include/malloc)

    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -maes -std=c++11 -stdlib=libc++")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c11 -maes -D_DARWIN_C_SOURCE")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -framework Cocoa -framework OpenGL -framework CoreFoundation -framework Carbon -framework IOKit -L/usr/lib")

    set(MACOSX_BUNDLE_ICON_FILE chavezcoin.icns)
    set(APPLICATION_ICON src/images/chavezcoin.icns)
    set_source_files_properties(${APPLICATION_ICON} PROPERTIES MACOSX_PACKAGE_LOCATION "Resources")

    set(BUILD_PLATFORM MACOSX_BUNDLE)
    set(BUILD_RESOURCES ${APPLICATION_ICON})
	
    GET_TARGET_PROPERTY(QT_LIB_DIR "${Qt5Widgets_LIBRARIES}" LOCATION)
    GET_FILENAME_COMPONENT(QT_LIB_DIR "${QT_LIB_DIR}" PATH)
  else(APPLE)
    set(PLATFORM_DIR Linux)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -maes -std=c++11")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -maes -std=c11")
  endif (APPLE)
endif ()

include_directories(chavezcoin/src/Platform/${PLATFORM_DIR})
file(GLOB PLATFORM_SOURCES chavezcoin/src/Platform/${PLATFORM_DIR}/System/*)
set(CRYPTONOTE_SOURCES ${CRYPTONOTE_SOURCES} ${PLATFORM_SOURCES})

add_library(${CRYPTONOTE_LIB} STATIC ${CRYPTONOTE_SOURCES})
set_target_properties(${CRYPTONOTE_LIB} PROPERTIES COMPILE_DEFINITIONS _GNU_SOURCE)
target_link_libraries(${CRYPTONOTE_LIB} ${Boost_LIBRARIES})

add_executable(${PROJECT_NAME} ${BUILD_PLATFORM} ${BUILD_RESOURCES} ${SOURCES} ${HEADERS} ${UIS} ${RCC})
set_target_properties(${PROJECT_NAME} PROPERTIES COMPILE_DEFINITIONS _GNU_SOURCE)
target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES} ${QTMAIN} ${CRYPTONOTE_LIB})

if (APPLE)
  qt5_use_modules(${PROJECT_NAME} PrintSupport)
elseif (UNIX)
  target_link_libraries(${PROJECT_NAME} -lpthread)
elseif (WIN32)
  target_link_libraries(${PROJECT_NAME} Imm32 Iphlpapi Winmm)
endif (APPLE)

qt5_use_modules(${PROJECT_NAME} Widgets Gui)
