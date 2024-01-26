.class final Lorg/ton/block/CommonMsgInfoTlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "CommonMsgInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/block/CommonMsgInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/CommonMsgInfoTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/CommonMsgInfoTlbCombinator;

    invoke-direct {v0}, Lorg/ton/block/CommonMsgInfoTlbCombinator;-><init>()V

    sput-object v0, Lorg/ton/block/CommonMsgInfoTlbCombinator;->INSTANCE:Lorg/ton/block/CommonMsgInfoTlbCombinator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 21
    const-class v0, Lorg/ton/block/CommonMsgInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    .line 23
    const-class v2, Lorg/ton/block/IntMsgInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Lorg/ton/block/IntMsgInfo;->Companion:Lorg/ton/block/IntMsgInfo$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/ton/block/ExtInMsgInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 24
    sget-object v3, Lorg/ton/block/ExtInMsgInfo;->Companion:Lorg/ton/block/ExtInMsgInfo$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 23
    const-class v2, Lorg/ton/block/ExtOutMsgInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 25
    sget-object v3, Lorg/ton/block/ExtOutMsgInfo;->Companion:Lorg/ton/block/ExtOutMsgInfo$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 21
    invoke-direct {p0, v0, v1}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method
