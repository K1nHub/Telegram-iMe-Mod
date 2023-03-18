.class public final Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;
.super Ljava/lang/Object;
.source "PinCodeRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/crypto/pin/PinCodeRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPinCodeRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PinCodeRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,52:1\n70#2:53\n82#2:55\n26#3:54\n26#3:56\n*S KotlinDebug\n*F\n+ 1 PinCodeRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl\n*L\n29#1:53\n35#1:55\n30#1:54\n50#1:56\n*E\n"
.end annotation


# instance fields
.field private final cryptoLocalWalletRepository:Lcom/smedialink/storage/domain/repository/crypto/CryptoLocalWalletRepository;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final pinCodeApi:Lcom/smedialink/storage/data/network/api/own/PinCodeApi;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/PinCodeApi;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/repository/crypto/CryptoLocalWalletRepository;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "pinCodeApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoLocalWalletRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->pinCodeApi:Lcom/smedialink/storage/data/network/api/own/PinCodeApi;

    .line 19
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 20
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->cryptoLocalWalletRepository:Lcom/smedialink/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    .line 21
    iput-object p4, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 22
    iput-object p5, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 23
    iput-object p6, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method

.method public static final synthetic access$getCryptoLocalWalletRepository$p(Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;)Lcom/smedialink/storage/domain/repository/crypto/CryptoLocalWalletRepository;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->cryptoLocalWalletRepository:Lcom/smedialink/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    return-object p0
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method


# virtual methods
.method public createPinCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "pinCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuid"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->pinCodeApi:Lcom/smedialink/storage/data/network/api/own/PinCodeApi;

    .line 28
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/crypto/pin/CreatePinCodeRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/smedialink/storage/data/network/model/request/crypto/pin/CreatePinCodeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/PinCodeApi;->saveCryptoWalletPinCode(Lcom/smedialink/storage/data/network/model/request/crypto/pin/CreatePinCodeRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$createPinCode$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$createPinCode$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$createPinCode$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$createPinCode$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public readPasswordByPinCode(Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "pinCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->pinCodeApi:Lcom/smedialink/storage/data/network/api/own/PinCodeApi;

    .line 34
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/crypto/pin/ReadPasswordByPinCodeRequest;

    invoke-direct {v1, p1, p2}, Lcom/smedialink/storage/data/network/model/request/crypto/pin/ReadPasswordByPinCodeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/PinCodeApi;->getCryptoWalletPassword(Lcom/smedialink/storage/data/network/model/request/crypto/pin/ReadPasswordByPinCodeRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 82
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;

    invoke-direct {v1, v0, p0, p3, p2}, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;ZLjava/lang/String;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026R>().toObservable()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
