.class final Lorg/ton/block/TrBouncePhaseTlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "TrBouncePhase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/block/TrBouncePhase;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TrBouncePhaseTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/TrBouncePhaseTlbCombinator;

    invoke-direct {v0}, Lorg/ton/block/TrBouncePhaseTlbCombinator;-><init>()V

    sput-object v0, Lorg/ton/block/TrBouncePhaseTlbCombinator;->INSTANCE:Lorg/ton/block/TrBouncePhaseTlbCombinator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 17
    const-class v0, Lorg/ton/block/TrBouncePhase;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    .line 19
    const-class v2, Lorg/ton/block/TrPhaseBounceNegFunds;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Lorg/ton/block/TrPhaseBounceNegFunds;->INSTANCE:Lorg/ton/block/TrPhaseBounceNegFunds;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/ton/block/TrPhaseBounceNoFunds;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 20
    sget-object v3, Lorg/ton/block/TrPhaseBounceNoFunds;->Companion:Lorg/ton/block/TrPhaseBounceNoFunds$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 19
    const-class v2, Lorg/ton/block/TrPhaseBounceOk;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 21
    sget-object v3, Lorg/ton/block/TrPhaseBounceOk;->Companion:Lorg/ton/block/TrPhaseBounceOk$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 17
    invoke-direct {p0, v0, v1}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method
