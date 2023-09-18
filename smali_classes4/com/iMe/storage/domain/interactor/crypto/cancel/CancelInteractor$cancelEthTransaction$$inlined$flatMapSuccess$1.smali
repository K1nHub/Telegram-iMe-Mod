.class public final Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;->cancelEthTransaction(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
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
        "Lcom/iMe/storage/domain/model/crypto/cancel/CryptoCancelMetadata;",
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 CancelInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor\n*L\n1#1,100:1\n25#2,19:101\n*E\n"
.end annotation


# instance fields
.field final synthetic $networkId$inlined:Ljava/lang/String;

.field final synthetic $txHash$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;

    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->$networkId$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->$txHash$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/cancel/CryptoCancelMetadata;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "result"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v2, v1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/iMe/storage/domain/model/crypto/cancel/CryptoCancelMetadata;

    .line 102
    iget-object v2, v0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;

    invoke-static {v2}, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;->access$getCancelRepository$p(Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;)Lcom/iMe/storage/domain/repository/crypto/cancel/CancelRepository;

    move-result-object v2

    .line 104
    new-instance v4, Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;

    .line 105
    iget-object v5, v0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->$networkId$inlined:Ljava/lang/String;

    .line 106
    iget-object v6, v0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->$txHash$inlined:Ljava/lang/String;

    .line 108
    sget-object v7, Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;->ETHER:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    invoke-virtual {v7}, Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;->getFactor()I

    move-result v11

    .line 109
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cancel/CryptoCancelMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getChainId()J

    move-result-wide v13

    .line 110
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cancel/CryptoCancelMetadata;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 111
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cancel/CryptoCancelMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getFastest()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v17

    .line 112
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cancel/CryptoCancelMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getFastest()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v16

    .line 113
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cancel/CryptoCancelMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getNonce()Ljava/math/BigInteger;

    move-result-object v15

    .line 114
    iget-object v1, v0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;

    invoke-static {v1}, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;->access$getCryptoAccessManager$p(Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->getAddress()Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    const-string v1, ""

    move-object v12, v1

    goto :goto_0

    :cond_1
    move-object v12, v3

    .line 107
    :goto_0
    new-instance v1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    const/16 v18, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v18}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;-><init>(DILjava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 104
    invoke-direct {v4, v5, v6, v1}, Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;)V

    .line 103
    invoke-interface {v2, v4}, Lcom/iMe/storage/domain/repository/crypto/cancel/CancelRepository;->cancel(Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs;)Lio/reactivex/Observable;

    move-result-object v1

    .line 119
    iget-object v2, v0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;

    invoke-static {v2}, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;->access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "with(result.data!!) {\n  \u2026r.io())\n                }"

    .line 101
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_2
    instance-of v2, v1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast v1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v2, v1, v3, v4, v3}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
