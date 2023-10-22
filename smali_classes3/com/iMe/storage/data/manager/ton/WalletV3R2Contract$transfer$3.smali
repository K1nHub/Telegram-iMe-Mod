.class final Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WalletV3R2Contract.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->transfer(Lorg/ton/lite/api/LiteApi;Lorg/ton/api/pk/PrivateKeyEd25519;Lkotlinx/datetime/Instant;[Lorg/ton/contract/wallet/WalletTransfer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x69
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $liteApi:Lorg/ton/lite/api/LiteApi;

.field final synthetic $privateKey:Lorg/ton/api/pk/PrivateKeyEd25519;

.field final synthetic $transfers:[Lorg/ton/contract/wallet/WalletTransfer;

.field final synthetic $validUntil:Lkotlinx/datetime/Instant;

.field label:I

.field final synthetic this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;Lorg/ton/api/pk/PrivateKeyEd25519;Lkotlinx/datetime/Instant;[Lorg/ton/contract/wallet/WalletTransfer;Lorg/ton/lite/api/LiteApi;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$privateKey:Lorg/ton/api/pk/PrivateKeyEd25519;

    iput-object p3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$validUntil:Lkotlinx/datetime/Instant;

    iput-object p4, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$transfers:[Lorg/ton/contract/wallet/WalletTransfer;

    iput-object p5, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$liteApi:Lorg/ton/lite/api/LiteApi;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    iget-object v1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    iget-object v2, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$privateKey:Lorg/ton/api/pk/PrivateKeyEd25519;

    iget-object v3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$validUntil:Lkotlinx/datetime/Instant;

    iget-object v4, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$transfers:[Lorg/ton/contract/wallet/WalletTransfer;

    iget-object v5, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$liteApi:Lorg/ton/lite/api/LiteApi;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;-><init>(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;Lorg/ton/api/pk/PrivateKeyEd25519;Lkotlinx/datetime/Instant;[Lorg/ton/contract/wallet/WalletTransfer;Lorg/ton/lite/api/LiteApi;Lkotlin/coroutines/Continuation;)V

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

    .line 90
    iget v1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    invoke-virtual {p1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->getState()Lorg/ton/block/AccountState;

    move-result-object p1

    instance-of p1, p1, Lorg/ton/block/AccountActive;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    invoke-virtual {p1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->getSeqno()I

    move-result p1

    :goto_0
    move v9, p1

    .line 92
    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    invoke-virtual {p1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->getState()Lorg/ton/block/AccountState;

    move-result-object p1

    instance-of p1, p1, Lorg/ton/block/AccountActive;

    if-nez p1, :cond_3

    sget p1, Lorg/ton/contract/wallet/WalletContract;->DEFAULT_WALLET_ID:I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    invoke-virtual {p1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->getSubWalletId()I

    move-result p1

    .line 93
    :goto_1
    sget-object v1, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->Companion:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;

    .line 94
    iget-object v3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    invoke-virtual {v3}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->getAddress()Lorg/ton/block/MsgAddressInt;

    move-result-object v10

    .line 95
    iget-object v3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    invoke-virtual {v3}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->getState()Lorg/ton/block/AccountState;

    move-result-object v3

    instance-of v3, v3, Lorg/ton/block/AccountActive;

    if-nez v3, :cond_4

    .line 96
    iget-object v3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$privateKey:Lorg/ton/api/pk/PrivateKeyEd25519;

    invoke-interface {v3}, Lorg/ton/api/pk/PrivateKeyEd25519;->publicKey()Lorg/ton/api/pub/PublicKeyEd25519;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v1

    move v5, p1

    .line 95
    invoke-static/range {v3 .. v8}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->createStateInit$default(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;Lorg/ton/api/pub/PublicKeyEd25519;IIILjava/lang/Object;)Lorg/ton/block/StateInit;

    move-result-object v3

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    move-object v5, v3

    .line 100
    iget-object v3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$validUntil:Lkotlinx/datetime/Instant;

    invoke-virtual {v3}, Lkotlinx/datetime/Instant;->getEpochSeconds()J

    move-result-wide v3

    long-to-int v8, v3

    .line 103
    iget-object v3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$transfers:[Lorg/ton/contract/wallet/WalletTransfer;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, [Lorg/ton/contract/wallet/WalletTransfer;

    .line 99
    iget-object v6, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$privateKey:Lorg/ton/api/pk/PrivateKeyEd25519;

    move-object v3, v1

    move-object v4, v10

    move v7, p1

    move-object v10, v11

    .line 93
    invoke-virtual/range {v3 .. v10}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->createTransferMessage(Lorg/ton/block/MsgAddressInt;Lorg/ton/block/StateInit;Lorg/ton/api/pk/PrivateKeyEd25519;III[Lorg/ton/contract/wallet/WalletTransfer;)Lorg/ton/block/Message;

    move-result-object p1

    .line 105
    iget-object v1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    iget-object v3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->$liteApi:Lorg/ton/lite/api/LiteApi;

    sget-object v4, Lorg/ton/tlb/constructor/AnyTlbConstructor;->INSTANCE:Lorg/ton/tlb/constructor/AnyTlbConstructor;

    iput v2, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;->label:I

    invoke-virtual {v1, v3, v4, p1, p0}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->sendExternalMessage(Lorg/ton/lite/api/LiteApi;Lorg/ton/tlb/TlbCodec;Lorg/ton/block/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 106
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
