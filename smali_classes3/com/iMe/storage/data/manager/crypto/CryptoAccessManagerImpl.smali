.class public final Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;
.super Ljava/lang/Object;
.source "CryptoAccessManagerImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoAccessManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoAccessManagerImpl.kt\ncom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,108:1\n288#2,2:109\n819#2:111\n847#2,2:112\n1747#2,3:118\n13579#3,2:114\n13579#3,2:116\n*S KotlinDebug\n*F\n+ 1 CryptoAccessManagerImpl.kt\ncom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl\n*L\n46#1:109,2\n49#1:111\n49#1:112,2\n99#1:118,3\n63#1:114,2\n74#1:116,2\n*E\n"
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final walletManager:Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;

.field private walletPassword:Ljava/lang/String;

.field private wallets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 13
    iput-object p2, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->walletManager:Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;

    .line 17
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    const-string p1, ""

    .line 18
    iput-object p1, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->walletPassword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deleteAllWallets()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    .line 63
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->values()[Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    .line 13579
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 63
    invoke-virtual {p0, v3}, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->deleteWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 2

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->walletManager:Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;

    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;->deleteWallet(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->logoutWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method public getAllWallets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBTCWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->BITCOIN:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCreatedWalletsBlockchains()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEVMWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFirstBip39PhraseBasedBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 46
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->isBip39PhraseBased()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 289
    :goto_0
    check-cast v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v1
.end method

.method public getLastLoggedInAddress(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;
    .locals 1

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletPublicAddresses()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;->getDataByBlockchain(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getLastLoggedInGuid()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTRONWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$TRON;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TRON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/iMe/storage/domain/model/crypto/Wallet$TRON;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Wallet$TRON;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUnactivatedBip39PhraseBasedBlockchainTypes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->Companion:Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;->getBip39PhraseBasedBlockchains()Ljava/util/List;

    move-result-object v0

    .line 819
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 847
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 49
    iget-object v4, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 847
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/Wallet;

    :goto_0
    return-object p1
.end method

.method public getWalletPassword()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->walletPassword:Ljava/lang/String;

    return-object v0
.end method

.method public isAnyBip39PhraseBasedWalletCreated()Z
    .locals 5

    .line 99
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->isAnyWalletCreated()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->Companion:Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;->getBip39PhraseBasedBlockchains()Ljava/util/List;

    move-result-object v0

    .line 1747
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    goto :goto_1

    .line 1748
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 100
    iget-object v4, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public isAnyWalletCreated()Z
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAuthorized(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z
    .locals 3

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 86
    iget-object p1, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/Wallet;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 87
    iget-object p1, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->walletPassword:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0
.end method

.method public isCurrentBlockchainWalletCreated()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->isWalletCreated(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    return v0
.end method

.method public isWalletCreated(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z
    .locals 3

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->getLastLoggedInAddress(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public logoutAllWallets()V
    .locals 4

    .line 74
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->values()[Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    .line 13579
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 74
    invoke-virtual {p0, v3}, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->logoutWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public logoutWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    .line 69
    iput-object p1, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->walletPassword:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onUserChanged()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->walletPassword:Ljava/lang/String;

    return-void
.end method

.method public setWallet(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
    .locals 2

    const-string v0, "wallet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->wallets:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iput-object p2, p0, Lcom/iMe/storage/data/manager/crypto/CryptoAccessManagerImpl;->walletPassword:Ljava/lang/String;

    return-void
.end method
