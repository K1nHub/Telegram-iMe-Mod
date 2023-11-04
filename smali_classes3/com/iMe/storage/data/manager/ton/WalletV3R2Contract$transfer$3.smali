.class final Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WalletV3R2Contract.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->transfer(Lorg/ton/lite/api/LiteApi;Lorg/ton/api/pk/PrivateKeyEd25519;Lkotlinx/datetime/Instant;Ljava/lang/Integer;[Lorg/ton/contract/wallet/WalletTransfer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.iMe.storage.data.manager.ton.WalletV3R2Contract$transfer$3"
    f = "WalletV3R2Contract.kt"
    l = {
        0x60
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $liteApi:Lorg/ton/lite/api/LiteApi;

.field final synthetic $privateKey:Lorg/ton/api/pk/PrivateKeyEd25519;

.field final synthetic $remoteSeqno:Ljava/lang/Integer;

.field final synthetic $transfers:[Lorg/ton/contract/wallet/WalletTransfer;

.field final synthetic $validUntil:Lkotlinx/datetime/Instant;

.field label:I

.field final synthetic this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;Lorg/ton/api/pk/PrivateKeyEd25519;Lkotlinx/datetime/Instant;[Lorg/ton/contract/wallet/WalletTransfer;Lorg/ton/lite/api/LiteApi;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;",
            "Lorg/ton/api/pk/PrivateKeyEd25519;",
            "Lkotlinx/datetime/Instant;",
            "[",
            "Lorg/ton/contract/wallet/WalletTransfer;",
            "Lorg/ton/lite/api/LiteApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$remoteSeqno:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    iput-object p3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$privateKey:Lorg/ton/api/pk/PrivateKeyEd25519;

    iput-object p4, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$validUntil:Lkotlinx/datetime/Instant;

    iput-object p5, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$transfers:[Lorg/ton/contract/wallet/WalletTransfer;

    iput-object p6, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$liteApi:Lorg/ton/lite/api/LiteApi;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;

    iget-object v1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$remoteSeqno:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    iget-object v3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$privateKey:Lorg/ton/api/pk/PrivateKeyEd25519;

    iget-object v4, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$validUntil:Lkotlinx/datetime/Instant;

    iget-object v5, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$transfers:[Lorg/ton/contract/wallet/WalletTransfer;

    iget-object v6, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$liteApi:Lorg/ton/lite/api/LiteApi;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;-><init>(Ljava/lang/Integer;Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;Lorg/ton/api/pk/PrivateKeyEd25519;Lkotlinx/datetime/Instant;[Lorg/ton/contract/wallet/WalletTransfer;Lorg/ton/lite/api/LiteApi;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 81
    iget v1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$remoteSeqno:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    move v9, p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    invoke-virtual {p1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->getState()Lorg/ton/block/AccountState;

    move-result-object p1

    instance-of p1, p1, Lorg/ton/block/AccountActive;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    invoke-static {p1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->access$getSeqno(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;)I

    move-result p1

    goto :goto_0

    .line 83
    :goto_1
    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    invoke-virtual {p1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->getState()Lorg/ton/block/AccountState;

    move-result-object p1

    instance-of p1, p1, Lorg/ton/block/AccountActive;

    if-nez p1, :cond_4

    sget p1, Lorg/ton/contract/wallet/WalletContract;->DEFAULT_WALLET_ID:I

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    invoke-static {p1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->access$getSubWalletId(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;)I

    move-result p1

    .line 84
    :goto_2
    sget-object v1, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->Companion:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;

    .line 85
    iget-object v3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    invoke-virtual {v3}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->getAddress()Lorg/ton/block/MsgAddressInt;

    move-result-object v10

    .line 86
    iget-object v3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    invoke-virtual {v3}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->getState()Lorg/ton/block/AccountState;

    move-result-object v3

    instance-of v3, v3, Lorg/ton/block/AccountActive;

    if-nez v3, :cond_5

    .line 87
    iget-object v3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$privateKey:Lorg/ton/api/pk/PrivateKeyEd25519;

    invoke-interface {v3}, Lorg/ton/api/pk/PrivateKeyEd25519;->publicKey()Lorg/ton/api/pub/PublicKeyEd25519;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v1

    move v5, p1

    .line 86
    invoke-static/range {v3 .. v8}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->createStateInit$default(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;Lorg/ton/api/pub/PublicKeyEd25519;IIILjava/lang/Object;)Lorg/ton/block/StateInit;

    move-result-object v3

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    move-object v5, v3

    .line 91
    iget-object v3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$validUntil:Lkotlinx/datetime/Instant;

    invoke-virtual {v3}, Lkotlinx/datetime/Instant;->getEpochSeconds()J

    move-result-wide v3

    long-to-int v8, v3

    .line 94
    iget-object v3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$transfers:[Lorg/ton/contract/wallet/WalletTransfer;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, [Lorg/ton/contract/wallet/WalletTransfer;

    .line 90
    iget-object v6, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$privateKey:Lorg/ton/api/pk/PrivateKeyEd25519;

    move-object v3, v1

    move-object v4, v10

    move v7, p1

    move-object v10, v11

    .line 84
    invoke-virtual/range {v3 .. v10}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->createTransferMessage(Lorg/ton/block/MsgAddressInt;Lorg/ton/block/StateInit;Lorg/ton/api/pk/PrivateKeyEd25519;III[Lorg/ton/contract/wallet/WalletTransfer;)Lorg/ton/block/Message;

    move-result-object p1

    .line 96
    iget-object v1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    iget-object v3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$liteApi:Lorg/ton/lite/api/LiteApi;

    sget-object v4, Lorg/ton/tlb/constructor/AnyTlbConstructor;->INSTANCE:Lorg/ton/tlb/constructor/AnyTlbConstructor;

    iput v2, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->label:I

    invoke-virtual {v1, v3, v4, p1, p0}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->sendExternalMessage(Lorg/ton/lite/api/LiteApi;Lorg/ton/tlb/TlbCodec;Lorg/ton/block/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 97
    :cond_6
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
