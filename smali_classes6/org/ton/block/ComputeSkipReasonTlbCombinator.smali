.class final Lorg/ton/block/ComputeSkipReasonTlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "ComputeSkipReason.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ComputeSkipReasonTlbCombinator$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/block/ComputeSkipReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ComputeSkipReasonTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ComputeSkipReasonTlbCombinator;

    invoke-direct {v0}, Lorg/ton/block/ComputeSkipReasonTlbCombinator;-><init>()V

    sput-object v0, Lorg/ton/block/ComputeSkipReasonTlbCombinator;->INSTANCE:Lorg/ton/block/ComputeSkipReasonTlbCombinator;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 37
    const-class v0, Lorg/ton/block/ComputeSkipReason;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lkotlin/Pair;

    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    sget-object v4, Lorg/ton/block/ComputeSkipReasonNoStateTlbConstructor;->INSTANCE:Lorg/ton/block/ComputeSkipReasonNoStateTlbConstructor;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 40
    sget-object v4, Lorg/ton/block/ComputeSkipReasonBadStateTlbConstructor;->INSTANCE:Lorg/ton/block/ComputeSkipReasonBadStateTlbConstructor;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 41
    sget-object v3, Lorg/ton/block/ComputeSkipReasonNoGasTlbConstructor;->INSTANCE:Lorg/ton/block/ComputeSkipReasonNoGasTlbConstructor;

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 37
    invoke-direct {p0, v1, v2}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic findTlbStorerOrNull(Ljava/lang/Object;)Lorg/ton/tlb/TlbStorer;
    .locals 0

    .line 37
    check-cast p1, Lorg/ton/block/ComputeSkipReason;

    invoke-virtual {p0, p1}, Lorg/ton/block/ComputeSkipReasonTlbCombinator;->findTlbStorerOrNull(Lorg/ton/block/ComputeSkipReason;)Lorg/ton/tlb/TlbStorer;

    move-result-object p1

    return-object p1
.end method

.method protected findTlbStorerOrNull(Lorg/ton/block/ComputeSkipReason;)Lorg/ton/tlb/TlbStorer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/ComputeSkipReason;",
            ")",
            "Lorg/ton/tlb/TlbStorer<",
            "Lorg/ton/block/ComputeSkipReason;",
            ">;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lorg/ton/block/ComputeSkipReasonTlbCombinator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 47
    sget-object p1, Lorg/ton/block/ComputeSkipReasonNoGasTlbConstructor;->INSTANCE:Lorg/ton/block/ComputeSkipReasonNoGasTlbConstructor;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 46
    :cond_1
    sget-object p1, Lorg/ton/block/ComputeSkipReasonBadStateTlbConstructor;->INSTANCE:Lorg/ton/block/ComputeSkipReasonBadStateTlbConstructor;

    goto :goto_0

    .line 45
    :cond_2
    sget-object p1, Lorg/ton/block/ComputeSkipReasonNoStateTlbConstructor;->INSTANCE:Lorg/ton/block/ComputeSkipReasonNoStateTlbConstructor;

    :goto_0
    return-object p1
.end method
