.class public final Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;
.super Ljava/lang/Object;
.source "ObservableExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;->cancelEthTransaction(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)Lio/reactivex/Observable;
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 CancelInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor\n*L\n1#1,81:1\n26#2,19:82\n*E\n"
.end annotation


# instance fields
.field final synthetic $tokenCode$inlined:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field final synthetic $txHash$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;

    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->$tokenCode$inlined:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    iput-object p3, p0, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->$txHash$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "result"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v2, v1, Lcom/smedialink/storage/domain/model/Result$Success;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/cancel/CryptoCancelMetadata;

    .line 84
    iget-object v2, v0, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;

    invoke-static {v2}, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;->access$getCancelRepository$p(Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;)Lcom/smedialink/storage/domain/repository/crypto/cancel/CancelRepository;

    move-result-object v2

    .line 86
    new-instance v4, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;

    .line 87
    iget-object v5, v0, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;

    iget-object v6, v0, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->$tokenCode$inlined:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-static {v5, v6}, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;->access$getCancelTokenBySourceTxToken(Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v5

    .line 88
    iget-object v6, v0, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->$txHash$inlined:Ljava/lang/String;

    .line 90
    sget-object v10, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->ETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 91
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/cancel/CryptoCancelMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getChain()Lcom/smedialink/storage/domain/model/crypto/Chain;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/crypto/Chain;->getId()J

    move-result-wide v12

    .line 92
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/cancel/CryptoCancelMetadata;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 93
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/cancel/CryptoCancelMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getFastest()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v16

    .line 94
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/cancel/CryptoCancelMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getFastest()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v15

    .line 95
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/cancel/CryptoCancelMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getNonce()Ljava/math/BigInteger;

    move-result-object v14

    .line 96
    iget-object v1, v0, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;

    invoke-static {v1}, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;->access$getCryptoAccessManager$p(Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;)Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    const-string v1, ""

    move-object v11, v1

    goto :goto_1

    :cond_1
    move-object v11, v3

    .line 89
    :goto_1
    new-instance v1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    const/16 v17, 0x0

    const/16 v18, 0x80

    const/16 v19, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v19}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;-><init>(DLcom/smedialink/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 86
    invoke-direct {v4, v5, v6, v1}, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;)V

    .line 85
    invoke-interface {v2, v4}, Lcom/smedialink/storage/domain/repository/crypto/cancel/CancelRepository;->cancel(Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs;)Lio/reactivex/Observable;

    move-result-object v1

    .line 100
    iget-object v2, v0, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;

    invoke-static {v2}, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;->access$getSchedulersProvider$p(Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "cancelRepository\n       \u2026(schedulersProvider.io())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 18
    :cond_2
    instance-of v2, v1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    check-cast v1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v2, v1, v3, v4, v3}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_2

    .line 19
    :cond_3
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;->apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
