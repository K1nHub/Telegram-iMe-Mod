.class final Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TonControllerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->createWallet()Lio/reactivex/Observable;
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
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/Wallet;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonControllerImpl.kt\ncom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1\n+ 2 ed25519.kt\norg/ton/api/pk/Ed25519Kt\n+ 3 ed25519.kt\norg/ton/api/pub/Ed25519Kt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n*L\n1#1,209:1\n20#2:210\n17#3:211\n15#4:212\n*S KotlinDebug\n*F\n+ 1 TonControllerImpl.kt\ncom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1\n*L\n75#1:210\n82#1:211\n83#1:212\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.iMe.storage.data.manager.ton.TonControllerImpl$createWallet$1"
    f = "TonControllerImpl.kt"
    l = {
        0x4a,
        0x4d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/manager/ton/TonControllerImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;

    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    invoke-direct {p1, v0, p2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 73
    iget v1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xf

    const/4 v10, 0x0

    .line 74
    iput v2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->label:I

    move-object v8, p0

    invoke-static/range {v4 .. v10}, Lorg/ton/mnemonic/Mnemonic;->generate$default(Ljava/lang/String;ILjava/util/List;Lkotlin/random/Random;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 73
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 75
    iget-object v1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    const/4 v2, 0x0

    invoke-static {p1, v2, v3, v2}, Lorg/ton/mnemonic/Mnemonic;->toSeed$default(Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)[B

    move-result-object v2

    .line 20
    sget-object v4, Lorg/ton/api/pk/PrivateKeyEd25519;->Companion:Lorg/ton/api/pk/PrivateKeyEd25519$Companion;

    invoke-virtual {v4, v2}, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->of([B)Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$setPrivateKey$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lorg/ton/api/pk/PrivateKeyEd25519;)V

    .line 77
    iget-object v1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->label:I

    invoke-static {v1, p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$initWallet(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    .line 73
    :goto_1
    iget-object v1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    check-cast p1, Lorg/ton/contract/wallet/WalletContract;

    .line 78
    new-instance v2, Lcom/iMe/storage/domain/model/crypto/Wallet$TON;

    .line 80
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->joinBySpace(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 81
    sget-object v3, Lorg/ton/block/MsgAddressInt;->Companion:Lorg/ton/block/MsgAddressInt$Companion;

    invoke-interface {p1}, Lorg/ton/contract/SmartContract;->getAddress()Lorg/ton/block/MsgAddressInt;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lorg/ton/block/MsgAddressInt$Companion;->toString$default(Lorg/ton/block/MsgAddressInt$Companion;Lorg/ton/block/MsgAddressInt;ZZZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {v1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getPrivateKeySafe(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object v1

    .line 17
    sget-object v3, Lorg/ton/api/pub/PublicKeyEd25519;->Companion:Lorg/ton/api/pub/PublicKeyEd25519$Companion;

    invoke-virtual {v3, v1}, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->of(Lorg/ton/api/pk/PrivateKeyEd25519;)Lorg/ton/api/pub/PublicKeyEd25519;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lorg/ton/api/pub/PublicKeyEd25519;->getKey()Lorg/ton/tl/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ton/tl/ByteString;->encodeHex()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    .line 78
    invoke-direct {v2, v3, v0, p1, v1}, Lcom/iMe/storage/domain/model/crypto/Wallet$TON;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
