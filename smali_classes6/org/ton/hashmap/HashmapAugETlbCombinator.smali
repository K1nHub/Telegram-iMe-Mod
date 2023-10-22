.class final Lorg/ton/hashmap/HashmapAugETlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "HashmapAugE.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/hashmap/HashmapAugE<",
        "**>;>;"
    }
.end annotation


# instance fields
.field private final x:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;"
        }
    .end annotation
.end field

.field private final y:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;",
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashmapAugE$AhmeEmpty<",
            "TX;TY;>;>;",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashmapAugE$AhmeRoot<",
            "TX;TY;>;>;)V"
        }
    .end annotation

    const-string p1, "x"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "y"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ahmeEmptyCodec"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ahmeRootCodec"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    const-class p1, Lorg/ton/hashmap/HashmapAugE;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 115
    const-class v1, Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v1, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const-class p4, Lorg/ton/hashmap/HashmapAugE$AhmeRoot;

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p4

    .line 116
    invoke-static {p4, p5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, v0, p5

    .line 113
    invoke-direct {p0, p1, v0}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    .line 109
    iput-object p2, p0, Lorg/ton/hashmap/HashmapAugETlbCombinator;->x:Lorg/ton/tlb/TlbCodec;

    .line 110
    iput-object p3, p0, Lorg/ton/hashmap/HashmapAugETlbCombinator;->y:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 111
    sget-object p4, Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;->Companion:Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$Companion;

    invoke-virtual {p4, p1, p3}, Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 112
    sget-object p4, Lorg/ton/hashmap/HashmapAugE$AhmeRoot;->Companion:Lorg/ton/hashmap/HashmapAugE$AhmeRoot$Companion;

    invoke-virtual {p4, p1, p2, p3}, Lorg/ton/hashmap/HashmapAugE$AhmeRoot$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p5

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 107
    invoke-direct/range {v0 .. v5}, Lorg/ton/hashmap/HashmapAugETlbCombinator;-><init>(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)V

    return-void
.end method
