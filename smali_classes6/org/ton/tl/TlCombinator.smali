.class public abstract Lorg/ton/tl/TlCombinator;
.super Lorg/ton/tl/AbstractTlCombinator;
.source "TlCombinator.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tl/AbstractTlCombinator<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTlCombinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TlCombinator.kt\norg/ton/tl/TlCombinator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Grouping.kt\nkotlin/collections/GroupingKt__GroupingKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 TlEncoder.kt\norg/ton/tl/TlEncoderKt\n*L\n1#1,32:1\n1536#2:33\n1238#2,4:43\n53#3:34\n80#3,6:35\n442#4:41\n392#4:42\n23#5:47\n*S KotlinDebug\n*F\n+ 1 TlCombinator.kt\norg/ton/tl/TlCombinator\n*L\n19#1:33\n25#1:43,4\n20#1:34\n20#1:35,6\n25#1:41\n25#1:42\n30#1:47\n*E\n"
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

.field private final class2Constructor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass<",
            "+TT;>;",
            "Lorg/ton/tl/TlCodec<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field private final id2Constructor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/ton/tl/TlCodec<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkotlin/reflect/KClass;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+TT;>;+",
            "Lorg/ton/tl/TlConstructor<",
            "+TT;>;>;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lorg/ton/tl/AbstractTlCombinator;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/ton/tl/TlCombinator;->baseClass:Lkotlin/reflect/KClass;

    .line 18
    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/tl/TlCombinator;->class2Constructor:Ljava/util/Map;

    .line 19
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 1536
    new-instance p2, Lorg/ton/tl/TlCombinator$special$$inlined$groupingBy$1;

    invoke-direct {p2, p1}, Lorg/ton/tl/TlCombinator$special$$inlined$groupingBy$1;-><init>(Ljava/lang/Iterable;)V

    .line 53
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 80
    invoke-interface {p2}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 81
    invoke-interface {p2, v1}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 83
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    :cond_0
    check-cast v1, Ljava/util/Map$Entry;

    check-cast v3, Ljava/util/Map$Entry;

    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    if-nez v3, :cond_1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate ID: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 442
    :cond_2
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 392
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 1238
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1239
    check-cast v0, Ljava/util/Map$Entry;

    .line 392
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/tl/TlConstructor;

    .line 1239
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_3
    iput-object p2, p0, Lorg/ton/tl/TlCombinator;->id2Constructor:Ljava/util/Map;

    return-void
.end method

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
            "Lorg/ton/tl/TlConstructor<",
            "+TT;>;>;)V"
        }
    .end annotation

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/ton/tl/TlCombinator;-><init>(Lkotlin/reflect/KClass;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public findConstructorOrNull(I)Lorg/ton/tl/TlDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ton/tl/TlDecoder<",
            "+TT;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/ton/tl/TlCombinator;->id2Constructor:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/tl/TlDecoder;

    return-object p1
.end method

.method public findConstructorOrNull(Ljava/lang/Object;)Lorg/ton/tl/TlEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/ton/tl/TlEncoder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lorg/ton/tl/TlCombinator;->class2Constructor:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/tl/TlCodec;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
