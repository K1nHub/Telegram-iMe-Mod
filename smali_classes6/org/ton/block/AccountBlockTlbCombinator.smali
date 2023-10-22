.class final Lorg/ton/block/AccountBlockTlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "AccountBlock.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/block/AccountBlock;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/AccountBlockTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/AccountBlockTlbCombinator;

    invoke-direct {v0}, Lorg/ton/block/AccountBlockTlbCombinator;-><init>()V

    sput-object v0, Lorg/ton/block/AccountBlockTlbCombinator;->INSTANCE:Lorg/ton/block/AccountBlockTlbCombinator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 33
    const-class v0, Lorg/ton/block/AccountBlock;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    sget-object v3, Lorg/ton/block/AccountBlockTlbConstructor;->INSTANCE:Lorg/ton/block/AccountBlockTlbConstructor;

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 33
    invoke-direct {p0, v1, v2}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method
