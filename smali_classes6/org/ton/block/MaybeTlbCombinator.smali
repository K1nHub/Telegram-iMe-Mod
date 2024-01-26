.class final Lorg/ton/block/MaybeTlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "Maybe.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/block/Maybe<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/ton/tlb/TlbCodec;Lorg/ton/block/JustConstructor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "*>;",
            "Lorg/ton/block/JustConstructor<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "typeCodec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "justConstructor"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-class p1, Lorg/ton/block/Maybe;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 69
    const-class v1, Lorg/ton/block/Nothing;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lorg/ton/block/NothingConstructor;->INSTANCE:Lorg/ton/block/NothingConstructor;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lorg/ton/block/Just;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 70
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 67
    invoke-direct {p0, p1, v0}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/tlb/TlbCodec;Lorg/ton/block/JustConstructor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 66
    new-instance p2, Lorg/ton/block/JustConstructor;

    invoke-direct {p2, p1}, Lorg/ton/block/JustConstructor;-><init>(Lorg/ton/tlb/TlbCodec;)V

    .line 64
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/ton/block/MaybeTlbCombinator;-><init>(Lorg/ton/tlb/TlbCodec;Lorg/ton/block/JustConstructor;)V

    return-void
.end method
