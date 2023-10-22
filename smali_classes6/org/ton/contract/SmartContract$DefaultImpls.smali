.class public final Lorg/ton/contract/SmartContract$DefaultImpls;
.super Ljava/lang/Object;
.source "SmartContract.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/contract/SmartContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmartContract.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartContract.kt\norg/ton/contract/SmartContract$DefaultImpls\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n135#2,2:166\n59#3,3:168\n1#4:171\n*S KotlinDebug\n*F\n+ 1 SmartContract.kt\norg/ton/contract/SmartContract$DefaultImpls\n*L\n31#1:166,2\n32#1:168,3\n*E\n"
.end annotation


# direct methods
.method public static getData(Lorg/ton/contract/SmartContract;)Lorg/ton/cell/Cell;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/contract/SmartContract<",
            "TT;>;)",
            "Lorg/ton/cell/Cell;"
        }
    .end annotation

    .line 25
    invoke-interface {p0}, Lorg/ton/contract/SmartContract;->getState()Lorg/ton/block/AccountState;

    move-result-object p0

    instance-of v0, p0, Lorg/ton/block/AccountActive;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/ton/block/AccountActive;

    invoke-virtual {p0}, Lorg/ton/block/AccountActive;->unbox-impl()Lorg/ton/block/StateInit;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/ton/block/StateInit;->data()Lorg/ton/block/Maybe;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/ton/block/Maybe;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ton/tlb/CellRef;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/ton/cell/Cell;

    :cond_1
    return-object v1
.end method

.method public static sendExternalMessage(Lorg/ton/contract/SmartContract;Lorg/ton/lite/api/LiteApi;Lorg/ton/cell/Cell;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/contract/SmartContract<",
            "TT;>;",
            "Lorg/ton/lite/api/LiteApi;",
            "Lorg/ton/cell/Cell;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p0, p3, Lorg/ton/contract/SmartContract$sendExternalMessage$3;

    if-eqz p0, :cond_0

    move-object p0, p3

    check-cast p0, Lorg/ton/contract/SmartContract$sendExternalMessage$3;

    iget v0, p0, Lorg/ton/contract/SmartContract$sendExternalMessage$3;->label:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/ton/contract/SmartContract$sendExternalMessage$3;->label:I

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/ton/contract/SmartContract$sendExternalMessage$3;

    invoke-direct {p0, p3}, Lorg/ton/contract/SmartContract$sendExternalMessage$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p0, Lorg/ton/contract/SmartContract$sendExternalMessage$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 35
    iget v1, p0, Lorg/ton/contract/SmartContract$sendExternalMessage$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    new-instance p3, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;

    new-array v1, v2, [Lorg/ton/cell/Cell;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    invoke-static {v1}, Lorg/ton/boc/BagOfCellsKt;->BagOfCells([Lorg/ton/cell/Cell;)Lorg/ton/boc/BagOfCells;

    move-result-object p2

    invoke-interface {p2}, Lorg/ton/boc/BagOfCells;->toByteArray()[B

    move-result-object p2

    invoke-direct {p3, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;-><init>([B)V

    iput v2, p0, Lorg/ton/contract/SmartContract$sendExternalMessage$3;->label:I

    invoke-interface {p1, p3, p0}, Lorg/ton/lite/api/LiteApi;->invoke(Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p3, Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;

    invoke-virtual {p3}, Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;->getStatus()I

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static sendExternalMessage(Lorg/ton/contract/SmartContract;Lorg/ton/lite/api/LiteApi;Lorg/ton/tlb/TlbCodec;Lorg/ton/block/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/contract/SmartContract<",
            "TT;>;",
            "Lorg/ton/lite/api/LiteApi;",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;",
            "Lorg/ton/block/Message<",
            "TX;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 136
    sget-object v0, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    invoke-virtual {v0}, Lorg/ton/cell/CellBuilder$Companion;->beginCell()Lorg/ton/cell/CellBuilder;

    move-result-object v0

    .line 32
    sget-object v1, Lorg/ton/block/Message;->Companion:Lorg/ton/block/Message$Companion;

    invoke-virtual {v1, p2}, Lorg/ton/block/Message$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbConstructor;

    move-result-object p2

    .line 60
    invoke-interface {p2, v0, p3}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 33
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 136
    invoke-interface {v0}, Lorg/ton/cell/CellBuilder;->endCell()Lorg/ton/cell/Cell;

    move-result-object p2

    .line 31
    invoke-interface {p0, p1, p2, p4}, Lorg/ton/contract/SmartContract;->sendExternalMessage(Lorg/ton/lite/api/LiteApi;Lorg/ton/cell/Cell;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
