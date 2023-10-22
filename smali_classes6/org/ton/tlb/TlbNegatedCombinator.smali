.class public abstract Lorg/ton/tlb/TlbNegatedCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "TlbNegatedCombinator.kt"

# interfaces
.implements Lorg/ton/tlb/TlbNegatedCodec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbCombinator<",
        "TT;>;",
        "Lorg/ton/tlb/TlbNegatedCodec<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TT;>;[",
            "Lkotlin/Pair<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+TT;>;+",
            "Lorg/ton/tlb/TlbNegatedConstructor<",
            "+TT;>;>;)V"
        }
    .end annotation

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    .line 11
    invoke-direct {p0, p1, p2}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method


# virtual methods
.method public loadNegatedTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbNegatedResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/tlb/TlbNegatedResult<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p1}, Lorg/ton/tlb/TlbCombinator;->findTlbLoaderOrNull(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbLoader;

    move-result-object v0

    instance-of v1, v0, Lorg/ton/tlb/TlbNegatedConstructor;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lorg/ton/tlb/TlbNegatedConstructor;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Lorg/ton/tlb/AbstractTlbConstructor;->getId()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->skipBits(I)Lorg/ton/cell/CellSlice;

    .line 33
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbNegatedLoader;->loadNegatedTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbNegatedResult;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.ton.tlb.TlbNegatedResult<T of org.ton.tlb.TlbNegatedCombinator>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 31
    :cond_1
    new-instance p1, Lorg/ton/tlb/exception/UnknownTlbConstructorException;

    const/4 v0, 0x1

    invoke-direct {p1, v2, v0, v2}, Lorg/ton/tlb/exception/UnknownTlbConstructorException;-><init>(Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")TT;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p1}, Lorg/ton/tlb/TlbNegatedCombinator;->loadNegatedTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbNegatedResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/ton/tlb/TlbNegatedResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "TT;)I"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Lorg/ton/tlb/TlbCombinator;->findTlbStorerOrNull(Ljava/lang/Object;)Lorg/ton/tlb/TlbStorer;

    move-result-object v0

    instance-of v1, v0, Lorg/ton/tlb/TlbNegatedConstructor;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lorg/ton/tlb/TlbNegatedConstructor;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0}, Lorg/ton/tlb/AbstractTlbConstructor;->getId()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 25
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbNegatedStorer;->storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 23
    :cond_1
    new-instance p1, Lorg/ton/tlb/exception/UnknownTlbConstructorException;

    const/4 p2, 0x1

    invoke-direct {p1, v2, p2, v2}, Lorg/ton/tlb/exception/UnknownTlbConstructorException;-><init>(Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/ton/tlb/TlbNegatedCombinator;->storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I

    return-void
.end method
