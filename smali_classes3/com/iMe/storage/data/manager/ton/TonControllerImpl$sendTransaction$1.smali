.class final Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TonControllerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->sendTransaction(Ljava/lang/String;JILcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;I)Lio/reactivex/Observable;
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
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.iMe.storage.data.manager.ton.TonControllerImpl$sendTransaction$1"
    f = "TonControllerImpl.kt"
    l = {
        0x73
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $amount:J

.field final synthetic $payload:Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;

.field final synthetic $seqno:I

.field final synthetic $to:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;JILcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/manager/ton/TonControllerImpl;",
            "Ljava/lang/String;",
            "JI",
            "Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->$to:Ljava/lang/String;

    iput-wide p3, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->$amount:J

    iput p5, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->$seqno:I

    iput-object p6, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->$payload:Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;

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

    new-instance p1, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;

    iget-object v1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    iget-object v2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->$to:Ljava/lang/String;

    iget-wide v3, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->$amount:J

    iget v5, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->$seqno:I

    iget-object v6, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->$payload:Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;JILcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 114
    iget v1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->$to:Ljava/lang/String;

    iget-wide v3, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->$amount:J

    iget v5, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->$seqno:I

    iget-object v6, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->$payload:Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;

    iput v2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;->label:I

    move-object v2, p1

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$sendInternal(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;JILcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
