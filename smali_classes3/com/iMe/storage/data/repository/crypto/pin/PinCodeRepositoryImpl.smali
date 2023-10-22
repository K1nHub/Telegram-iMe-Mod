.class public final Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;
.super Ljava/lang/Object;
.source "PinCodeRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/crypto/pin/PinCodeRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPinCodeRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PinCodeRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n*L\n1#1,78:1\n82#2:79\n26#3:80\n16#4,7:81\n*S KotlinDebug\n*F\n+ 1 PinCodeRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl\n*L\n45#1:79\n56#1:80\n65#1:81,7\n*E\n"
.end annotation


# instance fields
.field private final cryptoLocalWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final pinCodeApi:Lcom/iMe/storage/data/network/api/own/PinCodeApi;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/api/own/PinCodeApi;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "cryptoLocalWalletRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinCodeApi"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->cryptoLocalWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    .line 26
    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 27
    iput-object p3, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 28
    iput-object p4, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 29
    iput-object p5, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->pinCodeApi:Lcom/iMe/storage/data/network/api/own/PinCodeApi;

    .line 30
    iput-object p6, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$getCryptoLocalWalletRepository$p(Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;)Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->cryptoLocalWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    return-object p0
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method


# virtual methods
.method public readPasswordByPinCode(Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "pinCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 39
    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isLocalEncryptionCompleted()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 43
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->pinCodeApi:Lcom/iMe/storage/data/network/api/own/PinCodeApi;

    .line 44
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/pin/PasswordByPinCodeRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/data/network/model/request/crypto/pin/PasswordByPinCodeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/PinCodeApi;->getCryptoWalletPassword(Lcom/iMe/storage/data/network/model/request/crypto/pin/PasswordByPinCodeRequest;)Lio/reactivex/Observable;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 82
    new-instance v2, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;

    invoke-direct {v2, v1, p0, p1}, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026R>().toObservable()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->cryptoLocalWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    .line 60
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->Companion:Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;

    iget-object v2, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletSeeds()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;->getData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    .line 58
    invoke-interface {v0, p1, v1}, Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;->getPasswordByPinCodeWithValidation(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    :goto_2
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$2;

    invoke-direct {v0, p3, p0, p2}, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$2;-><init>(ZLcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;Ljava/lang/String;)V

    new-instance p2, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
