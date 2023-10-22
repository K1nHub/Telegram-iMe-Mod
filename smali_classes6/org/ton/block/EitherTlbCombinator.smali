.class final Lorg/ton/block/EitherTlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "Either.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/block/Either<",
        "**>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;Lorg/ton/block/LeftTlbConstructor;Lorg/ton/block/RightTlbConstructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;",
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;",
            "Lorg/ton/block/LeftTlbConstructor<",
            "TX;TY;>;",
            "Lorg/ton/block/RightTlbConstructor<",
            "TX;TY;>;)V"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "y"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "left"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "right"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const-class p1, Lorg/ton/block/Either;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Lkotlin/Pair;

    .line 111
    const-class v0, Lorg/ton/block/Either$Left;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-class p3, Lorg/ton/block/Either$Right;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p3

    .line 112
    invoke-static {p3, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    .line 109
    invoke-direct {p0, p1, p2}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;Lorg/ton/block/LeftTlbConstructor;Lorg/ton/block/RightTlbConstructor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 107
    new-instance p3, Lorg/ton/block/LeftTlbConstructor;

    invoke-direct {p3, p1}, Lorg/ton/block/LeftTlbConstructor;-><init>(Lorg/ton/tlb/TlbCodec;)V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 108
    new-instance p4, Lorg/ton/block/RightTlbConstructor;

    invoke-direct {p4, p2}, Lorg/ton/block/RightTlbConstructor;-><init>(Lorg/ton/tlb/TlbCodec;)V

    .line 105
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ton/block/EitherTlbCombinator;-><init>(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;Lorg/ton/block/LeftTlbConstructor;Lorg/ton/block/RightTlbConstructor;)V

    return-void
.end method
