.class public final Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->swap(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 DexWalletSwapDataSourceImpl.kt\ncom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl\n+ 3 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n*L\n1#1,92:1\n35#2,13:93\n70#3:106\n*S KotlinDebug\n*F\n+ 1 DexWalletSwapDataSourceImpl.kt\ncom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl\n*L\n47#1:106\n*E\n"
.end annotation


# instance fields
.field final synthetic $args$inlined:Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

.field final synthetic this$0:Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;->$args$inlined:Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 8
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

    .line 16
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->access$getSwapApi$p(Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/SwapApi;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;->$args$inlined:Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    check-cast v1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    .line 97
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v3, p1

    .line 98
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getQuoteId()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNetworkId()Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getOutputNetworkId()Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 96
    new-instance p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/SendCryptoSwapTransactionRequest;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/iMe/storage/data/network/model/request/crypto/swap/SendCryptoSwapTransactionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {v0, p1}, Lcom/iMe/storage/data/network/api/own/SwapApi;->sendCryptoSwapTransaction(Lcom/iMe/storage/data/network/model/request/crypto/swap/SendCryptoSwapTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$lambda$2$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$lambda$2$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

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

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
