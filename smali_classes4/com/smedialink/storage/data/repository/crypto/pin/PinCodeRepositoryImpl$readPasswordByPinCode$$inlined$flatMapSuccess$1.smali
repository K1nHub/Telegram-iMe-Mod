.class public final Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;
.super Ljava/lang/Object;
.source "FirebaseExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->readPasswordByPinCode(Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n+ 2 PinCodeRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl\n+ 3 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 4 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 5 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,86:1\n36#2,7:87\n45#2,3:95\n27#3:94\n18#4:98\n18#4:100\n6#5:99\n*S KotlinDebug\n*F\n+ 1 PinCodeRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n*L\n42#1:94\n47#1:98\n84#2:100\n84#2:99\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field final synthetic $shouldUnlockWallet$inlined:Z

.field final synthetic $uuid$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    iput-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;

    iput-boolean p3, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->$shouldUnlockWallet$inlined:Z

    iput-object p4, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->$uuid$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/smedialink/storage/domain/model/Result<",
            "TR;>;>;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;->isSuccess()Z

    move-result v0

    const-string v1, "just(this)"

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/data/network/model/response/crypto/pin/PasswordByPinCodeRequest;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/crypto/pin/PasswordByPinCodeRequest;->getPassword()Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/smedialink/storage/data/utils/extentions/CryptoExtKt;->aesDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-boolean v0, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->$shouldUnlockWallet$inlined:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->access$getCryptoLocalWalletRepository$p(Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;)Lcom/smedialink/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->$uuid$inlined:Ljava/lang/String;

    invoke-interface {v0, v1, v1, p1}, Lcom/smedialink/storage/domain/repository/crypto/CryptoLocalWalletRepository;->unlockAllWallets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$lambda-2$$inlined$mapSuccess$1;

    invoke-direct {v1, p1}, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$lambda-2$$inlined$mapSuccess$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;->access$getSchedulersProvider$p(Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "{\n                      \u2026                        }"

    .line 90
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    :goto_0
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1$1;

    invoke-direct {v0}, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1$1;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_1

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;->handleError(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v2, v3}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->apply(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
