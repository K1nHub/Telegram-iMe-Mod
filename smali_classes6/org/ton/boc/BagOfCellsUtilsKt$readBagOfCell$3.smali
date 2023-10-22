.class final Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BagOfCellsUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/boc/BagOfCellsUtilsKt;->readBagOfCell(Lio/ktor/utils/io/core/ByteReadPacket;)Lorg/ton/boc/BagOfCells;
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
    c = "org.ton.boc.BagOfCellsUtilsKt$readBagOfCell$3"
    f = "BagOfCellsUtils.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cellBits:[Lorg/ton/bitstring/BitString;

.field final synthetic $cellCount:I

.field final synthetic $cellDescriptors:[Lorg/ton/cell/CellDescriptor;

.field final synthetic $cellRefs:[[I

.field final synthetic $cells:[Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(I[Lkotlinx/coroutines/CompletableDeferred;[Lorg/ton/bitstring/BitString;[[I[Lorg/ton/cell/CellDescriptor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lorg/ton/cell/Cell;",
            ">;[",
            "Lorg/ton/bitstring/BitString;",
            "[[I[",
            "Lorg/ton/cell/CellDescriptor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cellCount:I

    iput-object p2, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cells:[Lkotlinx/coroutines/CompletableDeferred;

    iput-object p3, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cellBits:[Lorg/ton/bitstring/BitString;

    iput-object p4, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cellRefs:[[I

    iput-object p5, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cellDescriptors:[Lorg/ton/cell/CellDescriptor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v7, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;

    iget v1, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cellCount:I

    iget-object v2, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cells:[Lkotlinx/coroutines/CompletableDeferred;

    iget-object v3, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cellBits:[Lorg/ton/bitstring/BitString;

    iget-object v4, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cellRefs:[[I

    iget-object v5, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cellDescriptors:[Lorg/ton/cell/CellDescriptor;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;-><init>(I[Lkotlinx/coroutines/CompletableDeferred;[Lorg/ton/bitstring/BitString;[[I[Lorg/ton/cell/CellDescriptor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 111
    iget v1, v0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->label:I

    if-nez v1, :cond_1

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 112
    iget v8, v0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cellCount:I

    iget-object v7, v0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cells:[Lkotlinx/coroutines/CompletableDeferred;

    iget-object v6, v0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cellBits:[Lorg/ton/bitstring/BitString;

    iget-object v5, v0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cellRefs:[[I

    iget-object v4, v0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->$cellDescriptors:[Lorg/ton/cell/CellDescriptor;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v8, :cond_0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 113
    new-instance v18, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;

    const/4 v15, 0x0

    move-object/from16 v9, v18

    move v10, v3

    move-object v11, v7

    move-object v12, v6

    move-object v13, v5

    move-object v14, v4

    invoke-direct/range {v9 .. v15}, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;-><init>(I[Lkotlinx/coroutines/CompletableDeferred;[Lorg/ton/bitstring/BitString;[[I[Lorg/ton/cell/CellDescriptor;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v2, v1

    move v11, v3

    move-object/from16 v3, v16

    move-object v12, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object v14, v6

    move v6, v9

    move-object v9, v7

    move-object v7, v10

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    add-int/lit8 v3, v11, 0x1

    move-object v7, v9

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    goto :goto_0

    .line 117
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 111
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
