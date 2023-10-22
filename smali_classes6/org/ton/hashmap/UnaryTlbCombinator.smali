.class final Lorg/ton/hashmap/UnaryTlbCombinator;
.super Lorg/ton/tlb/TlbNegatedCombinator;
.source "Unary.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbNegatedCombinator<",
        "Lorg/ton/hashmap/Unary;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/hashmap/UnaryTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/hashmap/UnaryTlbCombinator;

    invoke-direct {v0}, Lorg/ton/hashmap/UnaryTlbCombinator;-><init>()V

    sput-object v0, Lorg/ton/hashmap/UnaryTlbCombinator;->INSTANCE:Lorg/ton/hashmap/UnaryTlbCombinator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 32
    const-class v0, Lorg/ton/hashmap/Unary;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    .line 34
    const-class v2, Lorg/ton/hashmap/UnaryZero;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Lorg/ton/hashmap/UnaryZeroTlbConstructor;->INSTANCE:Lorg/ton/hashmap/UnaryZeroTlbConstructor;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/ton/hashmap/UnarySuccess;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 35
    sget-object v3, Lorg/ton/hashmap/UnarySuccessTlbConstructor;->INSTANCE:Lorg/ton/hashmap/UnarySuccessTlbConstructor;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 32
    invoke-direct {p0, v0, v1}, Lorg/ton/tlb/TlbNegatedCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method
