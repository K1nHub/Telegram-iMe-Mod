.class public final Lcom/iMe/storage/data/manager/crypto/blockchains/BTCBlockchainCryptoWalletManagerImpl;
.super Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;
.source "BTCBlockchainCryptoWalletManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBTCBlockchainCryptoWalletManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BTCBlockchainCryptoWalletManagerImpl.kt\ncom/iMe/storage/data/manager/crypto/blockchains/BTCBlockchainCryptoWalletManagerImpl\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,93:1\n13#2:94\n13#2:96\n13#2:98\n13#2:100\n11#2:102\n18#3:95\n18#3:97\n18#3:99\n18#3:101\n*S KotlinDebug\n*F\n+ 1 BTCBlockchainCryptoWalletManagerImpl.kt\ncom/iMe/storage/data/manager/crypto/blockchains/BTCBlockchainCryptoWalletManagerImpl\n*L\n31#1:94\n44#1:96\n66#1:98\n89#1:100\n80#1:102\n31#1:95\n44#1:97\n66#1:99\n89#1:101\n*E\n"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$JhqznIQY4g2D3g5ja9HhEgstBu0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/crypto/blockchains/BTCBlockchainCryptoWalletManagerImpl;->generateAddressByMnemonic$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bPyEloMNBsZVagXo894ePT2D3_w(Ljava/lang/String;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/iMe/storage/data/manager/crypto/blockchains/BTCBlockchainCryptoWalletManagerImpl;->generateAddressByMnemonic$lambda$1(Ljava/lang/String;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->BITCOIN:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-direct {p0, p1, v0}, Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;-><init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method private static final generateAddressByMnemonic$lambda$1(Ljava/lang/String;)Lcom/iMe/storage/domain/model/Result;
    .locals 3

    const-string v0, "$mnemonic"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lwallet/core/jni/HDWallet;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lwallet/core/jni/HDWallet;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    sget-object p0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->isProductionActive()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 75
    sget-object p0, Lwallet/core/jni/CoinType;->BITCOIN:Lwallet/core/jni/CoinType;

    invoke-virtual {v0, p0}, Lwallet/core/jni/HDWallet;->getAddressForCoin(Lwallet/core/jni/CoinType;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 77
    :cond_0
    sget-object p0, Lwallet/core/jni/CoinType;->BITCOIN:Lwallet/core/jni/CoinType;

    sget-object v1, Lwallet/core/jni/Derivation;->BITCOINTESTNET:Lwallet/core/jni/Derivation;

    invoke-virtual {v0, p0, v1}, Lwallet/core/jni/HDWallet;->getAddressDerivation(Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;)Ljava/lang/String;

    move-result-object p0

    .line 11
    :goto_0
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final generateAddressByMnemonic$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method


# virtual methods
.method public createWallet()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;

    .line 27
    new-instance v1, Lwallet/core/jni/HDWallet;

    const/16 v2, 0x80

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lwallet/core/jni/HDWallet;-><init>(ILjava/lang/String;)V

    .line 25
    invoke-direct {v0, v3, v1}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;-><init>(Ljava/lang/String;Lwallet/core/jni/HDWallet;)V

    .line 13
    sget-object v1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "just(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public generateAddressByMnemonic(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "mnemonic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/iMe/storage/data/manager/crypto/blockchains/BTCBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/manager/crypto/blockchains/BTCBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 82
    sget-object v0, Lcom/iMe/storage/data/manager/crypto/blockchains/BTCBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2;->INSTANCE:Lcom/iMe/storage/data/manager/crypto/blockchains/BTCBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2;

    new-instance v1, Lcom/iMe/storage/data/manager/crypto/blockchains/BTCBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/manager/crypto/blockchains/BTCBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fromCallable {\n         \u2026MPTY_STRING.toSuccess() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mnemonic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;

    .line 40
    new-instance v1, Lwallet/core/jni/HDWallet;

    const-string v2, ""

    invoke-direct {v1, p2, v2}, Lwallet/core/jni/HDWallet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {v0, p1, v1}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;-><init>(Ljava/lang/String;Lwallet/core/jni/HDWallet;)V

    .line 42
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v3 .. v10}, Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->saveWalletToPrefs$default(Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 13
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "just(this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isValidAddress(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->isProductionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lwallet/core/jni/CoinType;->BITCOIN:Lwallet/core/jni/CoinType;

    invoke-virtual {v0, p1}, Lwallet/core/jni/CoinType;->validate(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {p1}, Lwallet/core/jni/SegwitAddress;->isValidString(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 13
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public unlockWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldGuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mnemonic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;

    .line 55
    new-instance v1, Lwallet/core/jni/HDWallet;

    const-string v2, ""

    invoke-direct {v1, p3, v2}, Lwallet/core/jni/HDWallet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {v0, p1, v1}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;-><init>(Ljava/lang/String;Lwallet/core/jni/HDWallet;)V

    .line 58
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->getAddress()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 58
    invoke-virtual/range {v2 .. v7}, Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->rewriteWalletToNewGuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "just(this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
