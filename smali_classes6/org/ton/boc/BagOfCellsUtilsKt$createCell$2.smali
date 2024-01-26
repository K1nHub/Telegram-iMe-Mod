.class final Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BagOfCellsUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/boc/BagOfCellsUtilsKt;->createCell(I[Lkotlinx/coroutines/CompletableDeferred;[Lorg/ton/bitstring/BitString;[[I[Lorg/ton/cell/CellDescriptor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBagOfCellsUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BagOfCellsUtils.kt\norg/ton/boc/BagOfCellsUtilsKt$createCell$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n*L\n1#1,314:1\n11365#2:315\n11700#2,3:316\n135#3,2:319\n*S KotlinDebug\n*F\n+ 1 BagOfCellsUtils.kt\norg/ton/boc/BagOfCellsUtilsKt$createCell$2\n*L\n142#1:315\n142#1:316,3\n145#1:319,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ton.boc.BagOfCellsUtilsKt$createCell$2"
    f = "BagOfCellsUtils.kt"
    l = {
        0x8f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bits:[Lorg/ton/bitstring/BitString;

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

.field final synthetic $descriptors:[Lorg/ton/cell/CellDescriptor;

.field final synthetic $index:I

.field final synthetic $refs:[[I

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>([Lorg/ton/bitstring/BitString;I[[I[Lkotlinx/coroutines/CompletableDeferred;[Lorg/ton/cell/CellDescriptor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/ton/bitstring/BitString;",
            "I[[I[",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lorg/ton/cell/Cell;",
            ">;[",
            "Lorg/ton/cell/CellDescriptor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$bits:[Lorg/ton/bitstring/BitString;

    iput p2, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$index:I

    iput-object p3, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$refs:[[I

    iput-object p4, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$cells:[Lkotlinx/coroutines/CompletableDeferred;

    iput-object p5, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$descriptors:[Lorg/ton/cell/CellDescriptor;

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

    new-instance p1, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;

    iget-object v1, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$bits:[Lorg/ton/bitstring/BitString;

    iget v2, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$index:I

    iget-object v3, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$refs:[[I

    iget-object v4, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$cells:[Lkotlinx/coroutines/CompletableDeferred;

    iget-object v5, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$descriptors:[Lorg/ton/cell/CellDescriptor;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;-><init>([Lorg/ton/bitstring/BitString;I[[I[Lkotlinx/coroutines/CompletableDeferred;[Lorg/ton/cell/CellDescriptor;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 139
    iget v1, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->I$1:I

    iget v3, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->I$0:I

    iget-object v4, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v5, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v6, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->L$2:Ljava/lang/Object;

    check-cast v6, [I

    iget-object v7, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->L$1:Ljava/lang/Object;

    check-cast v7, [Lkotlinx/coroutines/CompletableDeferred;

    iget-object v8, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->L$0:Ljava/lang/Object;

    check-cast v8, Lorg/ton/bitstring/BitString;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move v3, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    iget-object p1, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$bits:[Lorg/ton/bitstring/BitString;

    iget v1, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$index:I

    aget-object p1, p1, v1

    .line 141
    iget-object v3, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$refs:[[I

    aget-object v1, v3, v1

    .line 142
    iget-object v3, p0, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$cells:[Lkotlinx/coroutines/CompletableDeferred;

    .line 11365
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    .line 11700
    array-length v6, v1

    move-object v8, p1

    move-object v7, v3

    move v3, v5

    move-object p1, p0

    move v10, v6

    move-object v6, v1

    :goto_0
    move v1, v10

    if-ge v3, v1, :cond_3

    aget v5, v6, v3

    .line 143
    aget-object v5, v7, v5

    iput-object v8, p1, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->L$0:Ljava/lang/Object;

    iput-object v7, p1, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->L$1:Ljava/lang/Object;

    iput-object v6, p1, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->L$2:Ljava/lang/Object;

    iput-object v4, p1, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->L$3:Ljava/lang/Object;

    iput-object v4, p1, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->L$4:Ljava/lang/Object;

    iput v3, p1, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->I$0:I

    iput v1, p1, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->I$1:I

    iput v2, p1, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->label:I

    invoke-interface {v5, p1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_2

    return-object v0

    :cond_2
    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v4

    move v4, v3

    move v3, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v6

    :goto_1
    check-cast p1, Lorg/ton/cell/Cell;

    .line 11701
    invoke-interface {v5, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, v4, 0x1

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v10, v3

    move v3, p1

    move-object p1, v0

    move-object v0, v1

    goto :goto_0

    .line 11702
    :cond_3
    check-cast v4, Ljava/util/List;

    .line 145
    iget-object v0, p1, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$descriptors:[Lorg/ton/cell/CellDescriptor;

    iget v1, p1, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$index:I

    .line 136
    sget-object v2, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    invoke-virtual {v2}, Lorg/ton/cell/CellBuilder$Companion;->beginCell()Lorg/ton/cell/CellBuilder;

    move-result-object v2

    .line 146
    aget-object v3, v0, v1

    invoke-interface {v3}, Lorg/ton/cell/CellDescriptor;->isExotic()Z

    move-result v3

    invoke-interface {v2, v3}, Lorg/ton/cell/CellBuilder;->setExotic(Z)V

    .line 147
    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/ton/cell/CellDescriptor;->getLevelMask-Kat384U()I

    move-result v0

    invoke-static {v0}, Lorg/ton/cell/LevelMask;->box-impl(I)Lorg/ton/cell/LevelMask;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/ton/cell/CellBuilder;->setLevelMask-fuO3_sE(Lorg/ton/cell/LevelMask;)V

    .line 148
    invoke-interface {v2, v8}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 149
    invoke-interface {v2, v4}, Lorg/ton/cell/CellBuilder;->storeRefs(Ljava/util/Collection;)Lorg/ton/cell/CellBuilder;

    .line 136
    invoke-interface {v2}, Lorg/ton/cell/CellBuilder;->endCell()Lorg/ton/cell/Cell;

    move-result-object v0

    .line 151
    iget-object v1, p1, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$cells:[Lkotlinx/coroutines/CompletableDeferred;

    iget p1, p1, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;->$index:I

    aget-object p1, v1, p1

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
