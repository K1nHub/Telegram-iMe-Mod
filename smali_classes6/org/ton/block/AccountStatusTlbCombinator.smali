.class final Lorg/ton/block/AccountStatusTlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "AccountStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/AccountStatusTlbCombinator$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/block/AccountStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/AccountStatusTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/AccountStatusTlbCombinator;

    invoke-direct {v0}, Lorg/ton/block/AccountStatusTlbCombinator;-><init>()V

    sput-object v0, Lorg/ton/block/AccountStatusTlbCombinator;->INSTANCE:Lorg/ton/block/AccountStatusTlbCombinator;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 36
    const-class v0, Lorg/ton/block/AccountStatus;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Lkotlin/Pair;

    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    sget-object v4, Lorg/ton/block/AccountStatusUninitTlbConstructor;->INSTANCE:Lorg/ton/block/AccountStatusUninitTlbConstructor;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 39
    sget-object v4, Lorg/ton/block/AccountStatusFrozenTlbConstructor;->INSTANCE:Lorg/ton/block/AccountStatusFrozenTlbConstructor;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 40
    sget-object v4, Lorg/ton/block/AccountStatusActiveTlbConstructor;->INSTANCE:Lorg/ton/block/AccountStatusActiveTlbConstructor;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 41
    sget-object v3, Lorg/ton/block/AccountStatusNonExistTlbConstructor;->INSTANCE:Lorg/ton/block/AccountStatusNonExistTlbConstructor;

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 36
    invoke-direct {p0, v1, v2}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method


# virtual methods
.method protected findTlbStorerOrNull(Lorg/ton/block/AccountStatus;)Lorg/ton/tlb/TlbConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/AccountStatus;",
            ")",
            "Lorg/ton/tlb/TlbConstructor<",
            "Lorg/ton/block/AccountStatus;",
            ">;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lorg/ton/block/AccountStatusTlbCombinator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 48
    sget-object p1, Lorg/ton/block/AccountStatusNonExistTlbConstructor;->INSTANCE:Lorg/ton/block/AccountStatusNonExistTlbConstructor;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 47
    :cond_1
    sget-object p1, Lorg/ton/block/AccountStatusActiveTlbConstructor;->INSTANCE:Lorg/ton/block/AccountStatusActiveTlbConstructor;

    goto :goto_0

    .line 46
    :cond_2
    sget-object p1, Lorg/ton/block/AccountStatusFrozenTlbConstructor;->INSTANCE:Lorg/ton/block/AccountStatusFrozenTlbConstructor;

    goto :goto_0

    .line 45
    :cond_3
    sget-object p1, Lorg/ton/block/AccountStatusUninitTlbConstructor;->INSTANCE:Lorg/ton/block/AccountStatusUninitTlbConstructor;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic findTlbStorerOrNull(Ljava/lang/Object;)Lorg/ton/tlb/TlbStorer;
    .locals 0

    .line 36
    check-cast p1, Lorg/ton/block/AccountStatus;

    invoke-virtual {p0, p1}, Lorg/ton/block/AccountStatusTlbCombinator;->findTlbStorerOrNull(Lorg/ton/block/AccountStatus;)Lorg/ton/tlb/TlbConstructor;

    move-result-object p1

    return-object p1
.end method
