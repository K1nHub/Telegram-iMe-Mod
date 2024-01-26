.class public abstract Lorg/ton/tlb/TlbCombinator;
.super Lorg/ton/tlb/AbstractTlbCombinator;
.source "TlbCombinator.kt"

# interfaces
.implements Lorg/ton/tlb/providers/TlbCombinatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/tlb/TlbCombinator$TlbTrie;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/AbstractTlbCombinator<",
        "TT;>;",
        "Lorg/ton/tlb/providers/TlbCombinatorProvider<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTlbCombinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TlbCombinator.kt\norg/ton/tlb/TlbCombinator\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,120:1\n13579#2,2:121\n215#3,2:123\n*S KotlinDebug\n*F\n+ 1 TlbCombinator.kt\norg/ton/tlb/TlbCombinator\n*L\n21#1:121,2\n36#1:123,2\n*E\n"
.end annotation


# instance fields
.field private final baseClass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final class2codec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass<",
            "+TT;>;",
            "Lorg/ton/tlb/TlbCodec<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field private final trie:Lorg/ton/tlb/TlbCombinator$TlbTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCombinator$TlbTrie<",
            "Lorg/ton/tlb/TlbCodec<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TT;>;[",
            "Lkotlin/Pair<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+TT;>;+",
            "Lorg/ton/tlb/TlbCodec<",
            "+TT;>;>;)V"
        }
    .end annotation

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lorg/ton/tlb/AbstractTlbCombinator;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/ton/tlb/TlbCombinator;->baseClass:Lkotlin/reflect/KClass;

    .line 16
    new-instance p1, Lorg/ton/tlb/TlbCombinator$TlbTrie;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/ton/tlb/TlbCombinator$TlbTrie;-><init>(Lorg/ton/tlb/TlbCombinator$TlbTrie;Lorg/ton/tlb/TlbCombinator$TlbTrie;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lorg/ton/tlb/TlbCombinator;->trie:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    .line 19
    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMap([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/tlb/TlbCombinator;->class2codec:Ljava/util/Map;

    .line 13579
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_4

    aget-object v1, p2, v0

    .line 21
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ton/tlb/TlbCodec;

    .line 23
    instance-of v2, v1, Lorg/ton/tlb/TlbConstructor;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/ton/tlb/TlbConstructor;

    invoke-direct {p0, v1}, Lorg/ton/tlb/TlbCombinator;->addConstructor(Lorg/ton/tlb/TlbConstructor;)V

    goto :goto_1

    .line 24
    :cond_0
    instance-of v2, v1, Lorg/ton/tlb/providers/TlbConstructorProvider;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/ton/tlb/providers/TlbConstructorProvider;

    invoke-interface {v1}, Lorg/ton/tlb/providers/TlbConstructorProvider;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/ton/tlb/TlbCombinator;->addConstructor(Lorg/ton/tlb/TlbConstructor;)V

    goto :goto_1

    .line 25
    :cond_1
    instance-of v2, v1, Lorg/ton/tlb/TlbCombinator;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/ton/tlb/TlbCombinator;

    invoke-direct {p0, v1}, Lorg/ton/tlb/TlbCombinator;->addCombinator(Lorg/ton/tlb/TlbCombinator;)V

    goto :goto_1

    .line 26
    :cond_2
    instance-of v2, v1, Lorg/ton/tlb/providers/TlbCombinatorProvider;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/ton/tlb/providers/TlbCombinatorProvider;

    invoke-interface {v1}, Lorg/ton/tlb/providers/TlbCombinatorProvider;->tlbCombinator()Lorg/ton/tlb/TlbCombinator;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/ton/tlb/TlbCombinator;->addCombinator(Lorg/ton/tlb/TlbCombinator;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final addCombinator(Lorg/ton/tlb/TlbCombinator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCombinator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p1, Lorg/ton/tlb/TlbCombinator;->class2codec:Ljava/util/Map;

    .line 215
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ton/tlb/TlbCodec;

    .line 38
    instance-of v2, v1, Lorg/ton/tlb/TlbConstructor;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/ton/tlb/TlbConstructor;

    invoke-direct {p0, v1}, Lorg/ton/tlb/TlbCombinator;->addConstructor(Lorg/ton/tlb/TlbConstructor;)V

    goto :goto_0

    .line 39
    :cond_1
    instance-of v2, v1, Lorg/ton/tlb/providers/TlbConstructorProvider;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/ton/tlb/providers/TlbConstructorProvider;

    invoke-interface {v1}, Lorg/ton/tlb/providers/TlbConstructorProvider;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/ton/tlb/TlbCombinator;->addConstructor(Lorg/ton/tlb/TlbConstructor;)V

    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Lorg/ton/tlb/TlbCombinator;->class2codec:Ljava/util/Map;

    iget-object p1, p1, Lorg/ton/tlb/TlbCombinator;->class2codec:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private final addConstructor(Lorg/ton/tlb/TlbConstructor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbConstructor<",
            "+TT;>;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/ton/tlb/TlbCombinator;->trie:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    invoke-virtual {p1}, Lorg/ton/tlb/AbstractTlbConstructor;->getId()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/ton/tlb/TlbCombinator$TlbTrie;->set(Lorg/ton/bitstring/BitString;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected findTlbLoaderOrNull(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/tlb/TlbLoader<",
            "+TT;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lorg/ton/tlb/TlbCombinator;->trie:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->getBitsPosition()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/ton/tlb/TlbCombinator$TlbTrie;->get(Lorg/ton/bitstring/BitString;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/tlb/TlbLoader;

    return-object p1
.end method

.method protected findTlbStorerOrNull(Ljava/lang/Object;)Lorg/ton/tlb/TlbStorer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/ton/tlb/TlbStorer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lorg/ton/tlb/TlbCombinator;->class2codec:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/tlb/TlbCodec;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")TT;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1}, Lorg/ton/tlb/TlbCombinator;->findTlbLoaderOrNull(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    instance-of v1, v0, Lorg/ton/tlb/TlbConstructor;

    if-eqz v1, :cond_0

    .line 52
    move-object v1, v0

    check-cast v1, Lorg/ton/tlb/TlbConstructor;

    invoke-virtual {v1}, Lorg/ton/tlb/AbstractTlbConstructor;->getId()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->skipBits(I)Lorg/ton/cell/CellSlice;

    .line 54
    :cond_0
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 48
    :cond_1
    new-instance v0, Lorg/ton/tlb/exception/UnknownTlbConstructorException;

    const/16 v1, 0x20

    .line 49
    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->preloadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Lorg/ton/tlb/exception/UnknownTlbConstructorException;-><init>(Lorg/ton/bitstring/BitString;)V

    throw v0
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 2
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

    .line 58
    invoke-virtual {p0, p2}, Lorg/ton/tlb/TlbCombinator;->findTlbStorerOrNull(Ljava/lang/Object;)Lorg/ton/tlb/TlbStorer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    instance-of v1, v0, Lorg/ton/tlb/providers/TlbConstructorProvider;

    if-eqz v1, :cond_0

    .line 60
    move-object v1, v0

    check-cast v1, Lorg/ton/tlb/providers/TlbConstructorProvider;

    invoke-interface {v1}, Lorg/ton/tlb/providers/TlbConstructorProvider;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ton/tlb/AbstractTlbConstructor;->getId()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    goto :goto_0

    .line 61
    :cond_0
    instance-of v1, v0, Lorg/ton/tlb/TlbConstructor;

    if-eqz v1, :cond_1

    .line 62
    move-object v1, v0

    check-cast v1, Lorg/ton/tlb/TlbConstructor;

    invoke-virtual {v1}, Lorg/ton/tlb/AbstractTlbConstructor;->getId()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 64
    :cond_1
    :goto_0
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void

    .line 58
    :cond_2
    new-instance p1, Lorg/ton/tlb/exception/UnknownTlbConstructorException;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Lorg/ton/tlb/exception/UnknownTlbConstructorException;-><init>(Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public tlbCombinator()Lorg/ton/tlb/TlbCombinator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCombinator<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method
