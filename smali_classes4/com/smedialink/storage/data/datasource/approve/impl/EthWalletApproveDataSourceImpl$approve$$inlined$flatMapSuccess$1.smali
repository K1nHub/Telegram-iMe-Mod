.class public final Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;
.super Ljava/lang/Object;
.source "ObservableExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->approve(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 EthWalletApproveDataSourceImpl.kt\ncom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl\n+ 3 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n*L\n1#1,81:1\n37#2,9:82\n70#3:91\n*S KotlinDebug\n*F\n+ 1 EthWalletApproveDataSourceImpl.kt\ncom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl\n*L\n45#1:91\n*E\n"
.end annotation


# instance fields
.field final synthetic $args$inlined:Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;

.field final synthetic this$0:Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;

    iput-object p2, p0, Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;->$args$inlined:Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->access$getSwapApi$p(Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;)Lcom/smedialink/storage/data/network/api/own/SwapApi;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;->$args$inlined:Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;

    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;->$args$inlined:Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;

    check-cast v2, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getProtocol()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 84
    new-instance v3, Lcom/smedialink/storage/data/network/model/request/crypto/swap/SendCryptoApproveTransactionRequest;

    invoke-direct {v3, p1, v2, v1}, Lcom/smedialink/storage/data/network/model/request/crypto/swap/SendCryptoApproveTransactionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {v0, v3}, Lcom/smedialink/storage/data/network/api/own/SwapApi;->sendCryptoApproveTransaction(Lcom/smedialink/storage/data/network/model/request/crypto/swap/SendCryptoApproveTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->access$getFirebaseErrorHandler$p(Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;)Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$lambda-1$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$lambda-1$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;->apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
