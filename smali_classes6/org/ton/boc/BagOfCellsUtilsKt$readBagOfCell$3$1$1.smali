.class final Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BagOfCellsUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "org.ton.boc.BagOfCellsUtilsKt$readBagOfCell$3$1$1"
    f = "BagOfCellsUtils.kt"
    l = {
        0x72
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cellBits:[Lorg/ton/bitstring/BitString;

.field final synthetic $cellDescriptors:[Lorg/ton/cell/CellDescriptor;

.field final synthetic $cellIndex:I

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
            "Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cellIndex:I

    iput-object p2, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cells:[Lkotlinx/coroutines/CompletableDeferred;

    iput-object p3, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cellBits:[Lorg/ton/bitstring/BitString;

    iput-object p4, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cellRefs:[[I

    iput-object p5, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cellDescriptors:[Lorg/ton/cell/CellDescriptor;

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

    new-instance p1, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;

    iget v1, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cellIndex:I

    iget-object v2, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cells:[Lkotlinx/coroutines/CompletableDeferred;

    iget-object v3, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cellBits:[Lorg/ton/bitstring/BitString;

    iget-object v4, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cellRefs:[[I

    iget-object v5, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cellDescriptors:[Lorg/ton/cell/CellDescriptor;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;-><init>(I[Lkotlinx/coroutines/CompletableDeferred;[Lorg/ton/bitstring/BitString;[[I[Lorg/ton/cell/CellDescriptor;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 113
    iget v1, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->label:I

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

    .line 114
    iget v1, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cellIndex:I

    iget-object p1, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cells:[Lkotlinx/coroutines/CompletableDeferred;

    iget-object v3, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cellBits:[Lorg/ton/bitstring/BitString;

    iget-object v4, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cellRefs:[[I

    iget-object v5, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->$cellDescriptors:[Lorg/ton/cell/CellDescriptor;

    iput v2, p0, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3$1$1;->label:I

    move-object v2, p1

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lorg/ton/boc/BagOfCellsUtilsKt;->access$createCell(I[Lkotlinx/coroutines/CompletableDeferred;[Lorg/ton/bitstring/BitString;[[I[Lorg/ton/cell/CellDescriptor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 115
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
