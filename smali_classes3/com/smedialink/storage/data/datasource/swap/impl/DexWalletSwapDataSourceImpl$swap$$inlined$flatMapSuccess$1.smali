.class public final Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;
.super Ljava/lang/Object;
.source "ObservableExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->swap(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 DexWalletSwapDataSourceImpl.kt\ncom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl\n+ 3 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n*L\n1#1,81:1\n40#2,13:82\n70#3:95\n*S KotlinDebug\n*F\n+ 1 DexWalletSwapDataSourceImpl.kt\ncom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl\n*L\n52#1:95\n*E\n"
.end annotation


# instance fields
.field final synthetic $args$inlined:Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;

.field final synthetic this$0:Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;

    iput-object p2, p0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;->$args$inlined:Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 9
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

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->access$getSwapApi$p(Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;)Lcom/smedialink/storage/data/network/api/own/SwapApi;

    move-result-object v0

    .line 84
    iget-object v2, p0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;->$args$inlined:Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;

    check-cast v2, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;

    .line 86
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v4, p1

    .line 87
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getQuoteId()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getOutputNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v8, v1

    .line 90
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapProtocol()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 85
    new-instance p1, Lcom/smedialink/storage/data/network/model/request/crypto/swap/SendCryptoSwapTransactionRequest;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/smedialink/storage/data/network/model/request/crypto/swap/SendCryptoSwapTransactionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {v0, p1}, Lcom/smedialink/storage/data/network/api/own/SwapApi;->sendCryptoSwapTransaction(Lcom/smedialink/storage/data/network/model/request/crypto/swap/SendCryptoSwapTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->access$getFirebaseErrorHandler$p(Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;)Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$lambda-2$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$lambda-2$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_2
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;->apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
