.class final Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "CommonMsgInfoRelaxed.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$ExtOutMsgInfoTlbConstructor;,
        Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$IntMsgInfoTlbConstructor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/block/CommonMsgInfoRelaxed;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;

    invoke-direct {v0}, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;-><init>()V

    sput-object v0, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;->INSTANCE:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 85
    const-class v0, Lorg/ton/block/CommonMsgInfoRelaxed;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    .line 87
    const-class v2, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$IntMsgInfoTlbConstructor;->INSTANCE:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$IntMsgInfoTlbConstructor;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 88
    sget-object v3, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$ExtOutMsgInfoTlbConstructor;->INSTANCE:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$ExtOutMsgInfoTlbConstructor;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 85
    invoke-direct {p0, v0, v1}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method
