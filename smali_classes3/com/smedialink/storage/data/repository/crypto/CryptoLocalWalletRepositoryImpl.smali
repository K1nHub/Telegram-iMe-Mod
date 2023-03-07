.class public final Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;
.super Ljava/lang/Object;
.source "CryptoLocalWalletRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/crypto/CryptoLocalWalletRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoLocalWalletRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoLocalWalletRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl\n+ 2 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,131:1\n27#2:132\n27#2:134\n27#2:143\n15#2:144\n27#2:145\n26#3:133\n26#3:135\n26#3:146\n3785#4:136\n4300#4,2:137\n4091#4,11:147\n1547#5:139\n1618#5,3:140\n1547#5:158\n1618#5,3:159\n8#6:162\n8#6:163\n8#6:164\n8#6:165\n8#6:166\n*S KotlinDebug\n*F\n+ 1 CryptoLocalWalletRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl\n*L\n32#1:132\n49#1:134\n72#1:143\n109#1:144\n121#1:145\n38#1:133\n55#1:135\n127#1:146\n59#1:136\n59#1:137,2\n79#1:147,11\n62#1:139\n62#1:140,3\n79#1:158\n79#1:159,3\n83#1:162\n100#1:163\n104#1:164\n105#1:165\n116#1:166\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final walletManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;


# direct methods
.method public static synthetic $r8$lambda$DTVQgAOCCzSTFRTjSf4hPovmndg(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->isValidSeed$lambda-8(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_BuMNpu9MdlyyCT6__t55494YbQ(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->isValidRestoredAddress$lambda-13(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hQKcKnXhv7E1luCjVG5MpopI1q4(Lcom/smedialink/storage/domain/model/Result;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->isValidSeed$lambda-9(Lcom/smedialink/storage/domain/model/Result;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j0qv3BaTxRAhq35vEwfRLmdL3-w(Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;Ljava/lang/String;[Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->unlockAllWallets$lambda-7(Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;Ljava/lang/String;[Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wEI6mIfi8M37_xZCOq9Ndmzh_3Q(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->isValidSeed$lambda-10(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 22
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 23
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->walletManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;

    .line 24
    iput-object p4, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method

.method public static final synthetic access$getCryptoAccessManager$p(Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;)Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    return-object p0
.end method

.method public static final synthetic access$getWalletManager$p(Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;)Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->walletManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;

    return-object p0
.end method

.method private static final isValidRestoredAddress$lambda-13(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final isValidSeed$lambda-10(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final isValidSeed$lambda-8(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "$seed"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lorg/web3j/crypto/MnemonicUtils;->validateMnemonic(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final isValidSeed$lambda-9(Lcom/smedialink/storage/domain/model/Result;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/Result;->isSuccess()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final unlockAllWallets$lambda-7(Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;Ljava/lang/String;[Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "results"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4091
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4100
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    instance-of v4, v3, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1547
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/storage/domain/model/Result$Success;

    .line 80
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/Wallet;

    .line 81
    iget-object v2, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v2, v1, p1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->setWallet(Lcom/smedialink/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V

    .line 80
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    sget-object p0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p0, p2}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createWallet(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
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

    const-string v0, "blockchainType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->walletManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;

    .line 31
    invoke-interface {v0, p1, p2, p3}, Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;->createWallet(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 27
    new-instance p3, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$createWallet$$inlined$mapSuccess$1;

    invoke-direct {p3, p0, p2}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$createWallet$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public generateMnemonic(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->walletManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;->generateMnemonic(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->walletManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;

    .line 120
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;->importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 27
    new-instance p2, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$importWallet$$inlined$mapSuccess$1;

    invoke-direct {p2, p0, p3}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$importWallet$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isValidAddress(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->walletManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;

    invoke-interface {v0, p1, p2}, Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;->isValidAddress(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public isValidPasswordForWallet(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletSeeds()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;->getDataByBlockchain(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {v0, p1}, Lcom/smedialink/storage/data/utils/extentions/CryptoExtKt;->safeAesDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->isValidSeed(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public isValidRestoredAddress(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkedAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1, p3}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->isValidSeed(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda2;

    .line 116
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "isValidSeed(seed, blockc\u2026urn { false.toSuccess() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isValidSeed(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->walletManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;

    .line 103
    invoke-interface {v0, p1, p2}, Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;->generateAddressByMnemonic(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda1;

    .line 104
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 99
    :cond_1
    new-instance p2, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 104
    :goto_0
    sget-object p2, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda3;->INSTANCE:Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda3;

    .line 105
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "when (blockchainType) {\n\u2026urn { false.toSuccess() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public unlockAllWallets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "oldGuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newGuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->values()[Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    .line 3785
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4300
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 60
    iget-object v5, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v5}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletSeeds()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;->getData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1547
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    move-object v8, v2

    check-cast v8, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    .line 63
    iget-object v3, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->walletManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;

    .line 66
    iget-object v2, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2, p1, v8}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletSeedByGuid(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/smedialink/storage/data/utils/extentions/CryptoExtKt;->safeAesDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, p2

    move-object v5, p1

    move-object v7, p3

    .line 63
    invoke-interface/range {v3 .. v8}, Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;->unlockWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_2
    invoke-static {v0}, Lcom/smedialink/storage/data/utils/extentions/CollectionExtKt;->isSingletonList(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 72
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Observable;

    .line 27
    new-instance p2, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$unlockAllWallets$$inlined$mapSuccess$1;

    invoke-direct {p2, p0, p3}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$unlockAllWallets$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 78
    :cond_3
    new-instance p1, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/Observable;->zip(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "{\n            Observable\u2026)\n            }\n        }"

    .line 77
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method
