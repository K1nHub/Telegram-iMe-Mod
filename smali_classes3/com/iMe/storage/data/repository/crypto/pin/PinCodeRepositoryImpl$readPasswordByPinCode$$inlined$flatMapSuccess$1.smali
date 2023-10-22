.class public final Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FirebaseExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->readPasswordByPinCode(Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
        "Lcom/iMe/storage/data/network/model/response/crypto/pin/PasswordByPinCodeResponse;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n+ 2 PinCodeRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n*L\n1#1,86:1\n47#2,2:87\n46#2,9:89\n18#3:98\n18#3:101\n8#4,2:99\n*S KotlinDebug\n*F\n+ 1 PinCodeRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n*L\n54#1:98\n84#2:101\n84#2:99,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field final synthetic $pinCode$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;

    iput-object p3, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->$pinCode$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/pin/PasswordByPinCodeResponse;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->isSuccess()Z

    move-result v0

    const-string v1, "just(this)"

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletPassword()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/pin/PasswordByPinCodeResponse;

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/crypto/pin/PasswordByPinCodeResponse;->getPassword()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {v0, p1}, Lcom/iMe/storage/data/utils/extentions/CryptoExtKt;->aesDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    .line 94
    iget-object v2, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->$pinCode$inlined:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/iMe/storage/data/utils/extentions/CryptoExtKt;->aesEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setWalletPassword(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 95
    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setLocalEncryptionCompleted(Z)V

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1$1;->INSTANCE:Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1$1;

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;->handleError(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    .line 9
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v2, v3}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
