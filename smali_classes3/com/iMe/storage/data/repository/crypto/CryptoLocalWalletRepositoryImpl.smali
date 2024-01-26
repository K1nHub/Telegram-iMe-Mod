.class public final Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;
.super Ljava/lang/Object;
.source "CryptoLocalWalletRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoLocalWalletRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoLocalWalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl\n+ 2 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n26#2:164\n26#2:172\n26#2:208\n29#3,7:165\n29#3,7:180\n29#3,7:187\n29#3,7:194\n29#3,7:201\n3792#4:173\n4307#4,2:174\n1549#5:176\n1620#5,3:177\n*S KotlinDebug\n*F\n+ 1 CryptoLocalWalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl\n*L\n30#1:164\n55#1:172\n161#1:208\n49#1:165,7\n81#1:180,7\n109#1:187,7\n143#1:194,7\n155#1:201,7\n63#1:173\n63#1:174,2\n66#1:176\n66#1:177,3\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final walletManager:Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;


# direct methods
.method public static synthetic $r8$lambda$bGlOD8WGgoM5vubySpjIkwfbfwE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->unlockAllWallets$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;)V
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
    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 22
    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 23
    iput-object p3, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->walletManager:Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;

    .line 24
    iput-object p4, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method

.method public static final synthetic access$getCryptoAccessManager$p(Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-object p0
.end method

.method private static final unlockAllWallets$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method


# virtual methods
.method public createWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->walletManager:Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;

    .line 29
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;->createWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$createWallet$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$createWallet$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getPasswordByPinCodeWithValidation(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "pinCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/iMe/storage/data/utils/extentions/CryptoExtKt;->safeAesDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->isValidPasswordForWallet(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p2

    .line 29
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$getPasswordByPinCodeWithValidation$$inlined$mapSuccess$1;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$getPasswordByPinCodeWithValidation$$inlined$mapSuccess$1;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v0}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
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

    .line 153
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->walletManager:Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;

    .line 154
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;->importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$importWallet$$inlined$mapSuccess$1;

    invoke-direct {p2, p0, p3}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$importWallet$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;Ljava/lang/String;)V

    new-instance p3, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p3, p2}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$importWallet$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$importWallet$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isValidAddress(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->walletManager:Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;

    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;->isValidAddress(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public isValidPasswordForWallet(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletSeeds()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;->getDataByBlockchain(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 123
    :cond_0
    invoke-static {v0, p1}, Lcom/iMe/storage/data/utils/extentions/CryptoExtKt;->safeAesDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->isValidSeed(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public isValidSeed(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->walletManager:Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;

    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;->isValidMnemonic(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

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
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "oldGuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newGuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->values()[Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    .line 3792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4307
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 64
    iget-object v5, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v5}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletSeeds()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;->getData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4307
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1549
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    move-object v8, v2

    check-cast v8, Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 67
    iget-object v3, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->walletManager:Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;

    .line 71
    iget-object v2, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2, p1, v8}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletSeedByGuid(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {v2, p3}, Lcom/iMe/storage/data/utils/extentions/CryptoExtKt;->safeAesDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, p2

    move-object v5, p1

    move-object v7, p3

    .line 67
    invoke-interface/range {v3 .. v8}, Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;->unlockWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v2

    .line 1621
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :cond_2
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/CollectionExtKt;->isSingletonList(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 81
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Observable;

    .line 29
    new-instance p2, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$unlockAllWallets$$inlined$mapSuccess$1;

    invoke-direct {p2, p0, p3}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$unlockAllWallets$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;Ljava/lang/String;)V

    new-instance p3, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p3, p2}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 87
    :cond_3
    new-instance p1, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$unlockAllWallets$2;

    invoke-direct {p1, p0, p3}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$unlockAllWallets$2;-><init>(Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;Ljava/lang/String;)V

    new-instance p2, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, p2}, Lio/reactivex/Observable;->zip(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "override fun unlockAllWa\u2026        }\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method
