.class public final Lorg/ton/boc/BagOfCellsKt;
.super Ljava/lang/Object;
.source "BagOfCells.kt"


# direct methods
.method public static final BagOfCells(Ljava/util/Collection;)Lorg/ton/boc/BagOfCells;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/ton/cell/Cell;",
            ">;)",
            "Lorg/ton/boc/BagOfCells;"
        }
    .end annotation

    const-string v0, "roots"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lorg/ton/boc/BagOfCells;->Companion:Lorg/ton/boc/BagOfCells$Companion;

    invoke-virtual {v0, p0}, Lorg/ton/boc/BagOfCells$Companion;->of(Ljava/lang/Iterable;)Lorg/ton/boc/BagOfCells;

    move-result-object p0

    return-object p0
.end method

.method public static final BagOfCells([B)Lorg/ton/boc/BagOfCells;
    .locals 1

    const-string v0, "byteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lorg/ton/boc/BagOfCells;->Companion:Lorg/ton/boc/BagOfCells$Companion;

    invoke-virtual {v0, p0}, Lorg/ton/boc/BagOfCells$Companion;->of([B)Lorg/ton/boc/BagOfCells;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs BagOfCells([Lorg/ton/cell/Cell;)Lorg/ton/boc/BagOfCells;
    .locals 2

    const-string v0, "roots"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lorg/ton/boc/BagOfCells;->Companion:Lorg/ton/boc/BagOfCells$Companion;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/ton/cell/Cell;

    invoke-virtual {v0, p0}, Lorg/ton/boc/BagOfCells$Companion;->of([Lorg/ton/cell/Cell;)Lorg/ton/boc/BagOfCells;

    move-result-object p0

    return-object p0
.end method
