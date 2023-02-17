.class public final Lcom/smedialink/storage/data/mapper/wallet/WalletConnectSessionMappingKt;
.super Ljava/lang/Object;
.source "WalletConnectSessionMapping.kt"


# direct methods
.method public static final mapToDb(Lcom/trustwallet/walletconnect/WCSessionStoreItem;J)Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;
    .locals 17

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getTopic()Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getVersion()Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getBridge()Ljava/lang/String;

    move-result-object v6

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getChainId()I

    move-result v8

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getPeerId()Ljava/lang/String;

    move-result-object v9

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerId()Ljava/lang/String;

    move-result-object v10

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;->getName()Ljava/lang/String;

    move-result-object v11

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;->getUrl()Ljava/lang/String;

    move-result-object v12

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;->getDescription()Ljava/lang/String;

    move-result-object v13

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;->getIcons()Ljava/util/List;

    move-result-object v14

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->isAutoSign()Z

    move-result v15

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getDate()Ljava/util/Date;

    move-result-object v16

    move-object v1, v0

    move-wide/from16 v2, p1

    .line 29
    invoke-direct/range {v1 .. v16}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/Date;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;)Lcom/trustwallet/walletconnect/WCSessionStoreItem;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 10
    new-instance v2, Lcom/trustwallet/walletconnect/models/session/WCSession;

    .line 11
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getSessionTopic()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getSessionVersion()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getSessionBridge()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getSessionKey()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-direct {v2, v1, v3, v4, v5}, Lcom/trustwallet/walletconnect/models/session/WCSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getChainId()I

    move-result v3

    .line 17
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getPeerId()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getRemotePeerId()Ljava/lang/String;

    move-result-object v5

    .line 19
    new-instance v6, Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    .line 20
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getRemotePeerMetaName()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getRemotePeerMetaUrl()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getRemotePeerMetaDescription()Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->getRemotePeerMetaIcons()Ljava/util/List;

    move-result-object p0

    .line 19
    invoke-direct {v6, v1, v7, v8, p0}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x60

    const/4 v10, 0x0

    move-object v1, v0

    .line 9
    invoke-direct/range {v1 .. v10}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;-><init>(Lcom/trustwallet/walletconnect/models/session/WCSession;ILjava/lang/String;Ljava/lang/String;Lcom/trustwallet/walletconnect/models/WCPeerMeta;ZLjava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
