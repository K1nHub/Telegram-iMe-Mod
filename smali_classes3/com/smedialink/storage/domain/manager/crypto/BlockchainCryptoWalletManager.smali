.class public abstract Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;
.super Ljava/lang/Object;
.source "BlockchainCryptoWalletManager.kt"


# instance fields
.field private final blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 16
    iput-object p2, p0, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    return-void
.end method

.method public static synthetic saveWalletToPrefs$default(Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 49
    invoke-virtual/range {v0 .. v5}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->saveWalletToPrefs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: saveWalletToPrefs"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract createWallet(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation
.end method

.method public deleteWallet(Ljava/lang/String;)V
    .locals 2

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 31
    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletPublicAddresses()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;->remove(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    .line 32
    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletSeeds()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;->remove(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    .line 33
    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletCreationDates()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;->remove(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    .line 34
    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletSeeds()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setWalletsGuid(Ljava/util/List;)V

    const-string v0, ""

    .line 36
    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setWalletPassword(Ljava/lang/String;)V

    .line 37
    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setLastLoggedInGuid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract generateAddressByMnemonic(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract generateMnemonic(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract isValidAddress(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method

.method protected final rewriteWalletToNewGuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldGuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mnemonic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->deleteWallet(Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    .line 46
    invoke-virtual/range {v1 .. v6}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->saveWalletToPrefs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected final saveWalletToPrefs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mnemonic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 51
    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    if-eqz p5, :cond_2

    .line 52
    :cond_1
    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setLastLoggedInGuid(Ljava/lang/String;)V

    new-array p5, v2, [Ljava/lang/String;

    aput-object p1, p5, v3

    .line 53
    invoke-static {p5}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setWalletsGuid(Ljava/util/List;)V

    .line 55
    :cond_2
    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletCreationDates()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object p1

    iget-object p5, p0, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p5, v1}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;->put(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Ljava/lang/Object;)V

    .line 56
    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletPublicAddresses()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object p1

    iget-object p5, p0, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {p1, p5, p2}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;->put(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Ljava/lang/Object;)V

    .line 57
    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletSeeds()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object p1

    iget-object p2, p0, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-static {p3, p4}, Lcom/smedialink/storage/data/utils/extentions/CryptoExtKt;->aesEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;->put(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract unlockWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation
.end method
