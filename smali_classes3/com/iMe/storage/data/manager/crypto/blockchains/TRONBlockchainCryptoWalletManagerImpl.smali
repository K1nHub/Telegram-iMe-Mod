.class public final Lcom/iMe/storage/data/manager/crypto/blockchains/TRONBlockchainCryptoWalletManagerImpl;
.super Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;
.source "TRONBlockchainCryptoWalletManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTRONBlockchainCryptoWalletManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TRONBlockchainCryptoWalletManagerImpl.kt\ncom/iMe/storage/data/manager/crypto/blockchains/TRONBlockchainCryptoWalletManagerImpl\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,82:1\n18#2:83\n18#2:85\n18#2:87\n18#2:89\n15#2:91\n15#2:92\n18#3:84\n18#3:86\n18#3:88\n18#3:90\n*S KotlinDebug\n*F\n+ 1 TRONBlockchainCryptoWalletManagerImpl.kt\ncom/iMe/storage/data/manager/crypto/blockchains/TRONBlockchainCryptoWalletManagerImpl\n*L\n27#1:83\n40#1:85\n62#1:87\n80#1:89\n67#1:91\n75#1:92\n27#1:84\n40#1:86\n62#1:88\n80#1:90\n*E\n"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$o-BqqB3YjVltCqHT4VMoPEvcgCw(Ljava/lang/String;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/iMe/storage/data/manager/crypto/blockchains/TRONBlockchainCryptoWalletManagerImpl;->isValidMnemonic$lambda$0(Ljava/lang/String;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ycRqf-xi1DbsYoeIciwO4heMwnE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/crypto/blockchains/TRONBlockchainCryptoWalletManagerImpl;->isValidMnemonic$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TRON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-direct {p0, p1, v0}, Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;-><init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method private static final isValidMnemonic$lambda$0(Ljava/lang/String;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$mnemonic"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lwallet/core/jni/Mnemonic;->isValid(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 15
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final isValidMnemonic$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
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

    .line 21
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/Wallet$TRON;

    .line 23
    new-instance v1, Lwallet/core/jni/HDWallet;

    const/16 v2, 0x80

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lwallet/core/jni/HDWallet;-><init>(ILjava/lang/String;)V

    .line 21
    invoke-direct {v0, v3, v1}, Lcom/iMe/storage/domain/model/crypto/Wallet$TRON;-><init>(Ljava/lang/String;Lwallet/core/jni/HDWallet;)V

    .line 18
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

    .line 34
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/Wallet$TRON;

    .line 36
    new-instance v1, Lwallet/core/jni/HDWallet;

    const-string v2, ""

    invoke-direct {v1, p2, v2}, Lwallet/core/jni/HDWallet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {v0, p1, v1}, Lcom/iMe/storage/domain/model/crypto/Wallet$TRON;-><init>(Ljava/lang/String;Lwallet/core/jni/HDWallet;)V

    .line 38
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v3 .. v10}, Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->saveWalletToPrefs$default(Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 18
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

    .line 80
    sget-object v0, Lwallet/core/jni/CoinType;->TRON:Lwallet/core/jni/CoinType;

    invoke-virtual {v0, p1}, Lwallet/core/jni/CoinType;->validate(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 18
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

.method public isValidMnemonic(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
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

    const-string v0, "mnemonic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/iMe/storage/data/manager/crypto/blockchains/TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/manager/crypto/blockchains/TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 68
    sget-object v0, Lcom/iMe/storage/data/manager/crypto/blockchains/TRONBlockchainCryptoWalletManagerImpl$isValidMnemonic$2;->INSTANCE:Lcom/iMe/storage/data/manager/crypto/blockchains/TRONBlockchainCryptoWalletManagerImpl$isValidMnemonic$2;

    new-instance v1, Lcom/iMe/storage/data/manager/crypto/blockchains/TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/manager/crypto/blockchains/TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fromCallable { Mnemonic.\u2026urn { false.toSuccess() }"

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

    .line 49
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/Wallet$TRON;

    .line 51
    new-instance v1, Lwallet/core/jni/HDWallet;

    const-string v2, ""

    invoke-direct {v1, p3, v2}, Lwallet/core/jni/HDWallet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-direct {v0, p1, v1}, Lcom/iMe/storage/domain/model/crypto/Wallet$TRON;-><init>(Ljava/lang/String;Lwallet/core/jni/HDWallet;)V

    .line 54
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->getAddress()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 54
    invoke-virtual/range {v2 .. v7}, Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->rewriteWalletToNewGuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
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
