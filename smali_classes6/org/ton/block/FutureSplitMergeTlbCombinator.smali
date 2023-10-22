.class final Lorg/ton/block/FutureSplitMergeTlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "FutureSplitMerge.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/block/FutureSplitMerge;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/FutureSplitMergeTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/FutureSplitMergeTlbCombinator;

    invoke-direct {v0}, Lorg/ton/block/FutureSplitMergeTlbCombinator;-><init>()V

    sput-object v0, Lorg/ton/block/FutureSplitMergeTlbCombinator;->INSTANCE:Lorg/ton/block/FutureSplitMergeTlbCombinator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 69
    const-class v0, Lorg/ton/block/FutureSplitMerge;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    .line 71
    const-class v2, Lorg/ton/block/FutureSplitMerge$FsmNone;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Lorg/ton/block/FutureSplitMerge$FsmNone;->INSTANCE:Lorg/ton/block/FutureSplitMerge$FsmNone;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/ton/block/FutureSplitMerge$FsmSplit;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 72
    sget-object v3, Lorg/ton/block/FutureSplitMerge$FsmSplit;->Companion:Lorg/ton/block/FutureSplitMerge$FsmSplit$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 71
    const-class v2, Lorg/ton/block/FutureSplitMerge$FsmMerge;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 73
    sget-object v3, Lorg/ton/block/FutureSplitMerge$FsmMerge;->Companion:Lorg/ton/block/FutureSplitMerge$FsmMerge$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 69
    invoke-direct {p0, v0, v1}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method
