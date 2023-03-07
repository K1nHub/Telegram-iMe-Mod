.class public final Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl;
.super Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;
.source "EVMBlockchainCryptoWalletManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEVMBlockchainCryptoWalletManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EVMBlockchainCryptoWalletManagerImpl.kt\ncom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl\n+ 2 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n+ 4 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,73:1\n15#2:74\n8#3:75\n8#3:77\n8#3:79\n8#3:81\n8#3:82\n8#3:83\n8#3:84\n18#4:76\n18#4:78\n18#4:80\n*S KotlinDebug\n*F\n+ 1 EVMBlockchainCryptoWalletManagerImpl.kt\ncom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl\n*L\n25#1:74\n38#1:75\n50#1:77\n69#1:79\n56#1:81\n58#1:82\n64#1:83\n66#1:84\n38#1:76\n50#1:78\n69#1:80\n*E\n"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$HGU1QIWTz7FI-gnU5xIQEc8IBow(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl;->generateMnemonic$lambda-4(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NZbJ_eOy5laKx6nUcwjVoWLsR7o(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl;->generateAddressByMnemonic$lambda-2(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bfeU-BROvENhlWb8LPru73zh3Rg(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl;->generateAddressByMnemonic$lambda-1(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j-3tRoiRZIDgZJ9Y1NoAv3WhP_8()Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    invoke-static {}, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl;->generateMnemonic$lambda-3()Lcom/smedialink/storage/domain/model/Result;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-direct {p0, p1, v0}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;-><init>(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method private static final generateAddressByMnemonic$lambda-1(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "$mnemonic"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;->INSTANCE:Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;->createBip44Wallet(Ljava/lang/String;)Lorg/web3j/crypto/Credentials;

    move-result-object p0

    invoke-virtual {p0}, Lorg/web3j/crypto/Credentials;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/web3j/crypto/Keys;->toChecksumAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final generateAddressByMnemonic$lambda-2(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object p0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final generateMnemonic$lambda-3()Lcom/smedialink/storage/domain/model/Result;
    .locals 4

    .line 64
    sget-object v0, Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;->INSTANCE:Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;->generateNewEntropy$default(Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;IILjava/lang/Object;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/web3j/crypto/MnemonicUtils;->generateMnemonic([B)Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v0

    return-object v0
.end method

.method private static final generateMnemonic$lambda-4(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object p0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createWallet(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
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

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl;->generateMnemonic(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$createWallet$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$createWallet$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public generateAddressByMnemonic(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
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

    const-string v0, "mnemonic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1;

    .line 58
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fromCallable {\n         \u2026MPTY_STRING.toSuccess() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public generateMnemonic(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
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

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "password"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda3;->INSTANCE:Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda3;

    .line 63
    invoke-static {p1}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda0;

    .line 66
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "fromCallable {\n         \u2026MPTY_STRING.toSuccess() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 10
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

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mnemonic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;->INSTANCE:Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;

    invoke-virtual {v0, p2}, Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;->createBip44Wallet(Ljava/lang/String;)Lorg/web3j/crypto/Credentials;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lorg/web3j/crypto/Credentials;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/web3j/crypto/Keys;->toChecksumAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "toChecksumAddress(credentials.address)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v9}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->saveWalletToPrefs$default(Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 34
    new-instance p3, Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    invoke-direct {p3, p1, p2, v0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/web3j/crypto/Credentials;)V

    .line 8
    sget-object p1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p1, p3}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

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
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lorg/web3j/crypto/WalletUtils;->isValidAddress(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

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
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
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

    .line 42
    sget-object v0, Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;->INSTANCE:Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;

    invoke-virtual {v0, p3}, Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;->createBip44Wallet(Ljava/lang/String;)Lorg/web3j/crypto/Credentials;

    move-result-object v0

    .line 44
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/web3j/crypto/Credentials;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/web3j/crypto/Keys;->toChecksumAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "toChecksumAddress(credentials.address)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->rewriteWalletToNewGuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    new-instance p2, Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    invoke-direct {p2, p1, p3, v0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/web3j/crypto/Credentials;)V

    .line 8
    sget-object p1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p1, p2}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "just(this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
