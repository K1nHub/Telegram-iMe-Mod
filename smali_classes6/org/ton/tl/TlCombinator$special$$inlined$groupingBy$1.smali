.class public final Lorg/ton/tl/TlCombinator$special$$inlined$groupingBy$1;
.super Ljava/lang/Object;
.source "_Collections.kt"

# interfaces
.implements Lkotlin/collections/Grouping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/tl/TlCombinator;-><init>(Lkotlin/reflect/KClass;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/collections/Grouping<",
        "Ljava/util/Map$Entry<",
        "+",
        "Lkotlin/reflect/KClass<",
        "+TT;>;+",
        "Lorg/ton/tl/TlConstructor<",
        "+TT;>;>;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Collections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt$groupingBy$1\n+ 2 TlCombinator.kt\norg/ton/tl/TlCombinator\n*L\n1#1,3683:1\n19#2:3684\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_groupingBy:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lorg/ton/tl/TlCombinator$special$$inlined$groupingBy$1;->$this_groupingBy:Ljava/lang/Iterable;

    .line 1536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+TT;>;+",
            "Lorg/ton/tl/TlConstructor<",
            "+TT;>;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1538
    check-cast p1, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/tl/TlConstructor;

    invoke-virtual {p1}, Lorg/ton/tl/TlConstructor;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public sourceIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+TT;>;+",
            "Lorg/ton/tl/TlConstructor<",
            "+TT;>;>;>;"
        }
    .end annotation

    .line 1537
    iget-object v0, p0, Lorg/ton/tl/TlCombinator$special$$inlined$groupingBy$1;->$this_groupingBy:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
