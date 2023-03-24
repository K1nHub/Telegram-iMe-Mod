.class public final Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl$sendTransaction$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->sendTransaction(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 WalletConnectDataSourceImpl.kt\ncom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl\n+ 3 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n*L\n1#1,81:1\n30#2,5:82\n70#3:87\n*S KotlinDebug\n*F\n+ 1 WalletConnectDataSourceImpl.kt\ncom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl\n*L\n34#1:87\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl$sendTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl$sendTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->access$getWalletConnectApi$p(Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;)Lcom/smedialink/storage/data/network/api/own/WalletConnectApi;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/crypto/wallet/SendCryptoTransferTransactionRequest;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-direct {v1, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/wallet/SendCryptoTransferTransactionRequest;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/WalletConnectApi;->sendWalletConnectCryptoTransaction(Lcom/smedialink/storage/data/network/model/request/crypto/wallet/SendCryptoTransferTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl$sendTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->access$getFirebaseErrorHandler$p(Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;)Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl$sendTransaction$lambda$1$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl$sendTransaction$lambda$1$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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

    const-string v0, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

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

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl$sendTransaction$$inlined$flatMapSuccess$1;->invoke(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
