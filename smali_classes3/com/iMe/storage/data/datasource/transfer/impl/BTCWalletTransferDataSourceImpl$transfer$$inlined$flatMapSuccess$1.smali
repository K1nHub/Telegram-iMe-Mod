.class public final Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;->transfer(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;Ljava/lang/String;)Lio/reactivex/Observable;
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
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 BTCWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl\n+ 3 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n*L\n1#1,92:1\n54#2,8:93\n70#3:101\n*S KotlinDebug\n*F\n+ 1 BTCWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl\n*L\n61#1:101\n*E\n"
.end annotation


# instance fields
.field final synthetic $networkId$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;->$networkId$inlined:Ljava/lang/String;

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
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;->access$getCryptoWalletApi$p(Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendTransferTransactionRequest;

    .line 96
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;->$networkId$inlined:Ljava/lang/String;

    .line 95
    invoke-direct {v1, p1, v2}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendTransferTransactionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;->sendCryptoTransferTransaction(Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendTransferTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;->access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl$transfer$lambda$2$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl$transfer$lambda$2$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
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

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
