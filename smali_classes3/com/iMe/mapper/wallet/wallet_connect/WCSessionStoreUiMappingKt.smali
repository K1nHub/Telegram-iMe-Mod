.class public final Lcom/iMe/mapper/wallet/wallet_connect/WCSessionStoreUiMappingKt;
.super Ljava/lang/Object;
.source "WCSessionStoreUiMapping.kt"


# direct methods
.method public static final mapToUi(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    .line 11
    invoke-virtual {p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;->getName()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;->getIcons()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    move-object v5, v1

    .line 15
    sget-object v1, Lcom/iMe/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-virtual {p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getDate()Ljava/util/Date;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static {v1, v6, v8, v7, v8}, Lcom/iMe/utils/formatter/DateFormatter;->format$default(Lcom/iMe/utils/formatter/DateFormatter$DateType;Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 16
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {p0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getChainId()I

    move-result p0

    int-to-long v7, p0

    invoke-virtual {v1, v7, v8}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->fromChainId(J)Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->getTitleResId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    .line 10
    invoke-direct/range {v1 .. v7}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method