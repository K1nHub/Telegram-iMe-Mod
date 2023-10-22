.class final Lorg/ton/block/InMsgTlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "InMsg.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/block/InMsg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/InMsgTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/InMsgTlbCombinator;

    invoke-direct {v0}, Lorg/ton/block/InMsgTlbCombinator;-><init>()V

    sput-object v0, Lorg/ton/block/InMsgTlbCombinator;->INSTANCE:Lorg/ton/block/InMsgTlbCombinator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 17
    const-class v0, Lorg/ton/block/InMsg;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Lkotlin/Pair;

    .line 19
    const-class v2, Lorg/ton/block/MsgImportExt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Lorg/ton/block/MsgImportExt;->Companion:Lorg/ton/block/MsgImportExt$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/ton/block/MsgImportIhr;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 20
    sget-object v3, Lorg/ton/block/MsgImportIhr;->Companion:Lorg/ton/block/MsgImportIhr$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 19
    const-class v2, Lorg/ton/block/MsgImportImm;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 21
    sget-object v3, Lorg/ton/block/MsgImportImm;->Companion:Lorg/ton/block/MsgImportImm$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 19
    const-class v2, Lorg/ton/block/MsgImportFin;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 22
    sget-object v3, Lorg/ton/block/MsgImportFin;->Companion:Lorg/ton/block/MsgImportFin$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 19
    const-class v2, Lorg/ton/block/MsgImportTr;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 23
    sget-object v3, Lorg/ton/block/MsgImportTr;->Companion:Lorg/ton/block/MsgImportTr$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 19
    const-class v2, Lorg/ton/block/MsgDiscardFin;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 24
    sget-object v3, Lorg/ton/block/MsgDiscardFin;->Companion:Lorg/ton/block/MsgDiscardFin$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 19
    const-class v2, Lorg/ton/block/MsgDiscardTr;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 25
    sget-object v3, Lorg/ton/block/MsgDiscardTr;->Companion:Lorg/ton/block/MsgDiscardTr$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 17
    invoke-direct {p0, v0, v1}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method
