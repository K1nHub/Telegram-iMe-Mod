.class public final Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl$sendApprovalExecute$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;->sendApprovalExecute(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt$flatMapSuccess$1\n+ 2 CryptoBoxDataSourceImpl.kt\ncom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl\n+ 3 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n*L\n1#1,101:1\n31#2,3:102\n70#3:105\n*S KotlinDebug\n*F\n+ 1 CryptoBoxDataSourceImpl.kt\ncom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl\n*L\n33#1:105\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl$sendApprovalExecute$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl$sendApprovalExecute$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;->access$getCryptoBoxApi$p(Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/CryptoBoxApi;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendTransactionBodyRequest;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendTransactionBodyRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/CryptoBoxApi;->sendApprovalExecute(Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendTransactionBodyRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl$sendApprovalExecute$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;->access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl$sendApprovalExecute$lambda$1$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl$sendApprovalExecute$lambda$1$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl$sendApprovalExecute$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
