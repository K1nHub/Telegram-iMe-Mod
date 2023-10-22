.class public final Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->approve(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt$flatMapSuccess$1\n+ 2 EthWalletApproveDataSourceImpl.kt\ncom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl\n+ 3 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n*L\n1#1,101:1\n30#2,9:102\n70#3:111\n*S KotlinDebug\n*F\n+ 1 EthWalletApproveDataSourceImpl.kt\ncom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl\n*L\n38#1:111\n*E\n"
.end annotation


# instance fields
.field final synthetic $args$inlined:Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

.field final synthetic this$0:Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;->$args$inlined:Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 4
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
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->access$getSwapApi$p(Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/SwapApi;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;->$args$inlined:Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    check-cast v1, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;->$args$inlined:Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 104
    new-instance v3, Lcom/iMe/storage/data/network/model/request/crypto/swap/SendCryptoApproveTransactionRequest;

    invoke-direct {v3, p1, v2, v1}, Lcom/iMe/storage/data/network/model/request/crypto/swap/SendCryptoApproveTransactionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-interface {v0, v3}, Lcom/iMe/storage/data/network/api/own/SwapApi;->sendCryptoApproveTransaction(Lcom/iMe/storage/data/network/model/request/crypto/swap/SendCryptoApproveTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$lambda$1$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$lambda$1$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

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

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
