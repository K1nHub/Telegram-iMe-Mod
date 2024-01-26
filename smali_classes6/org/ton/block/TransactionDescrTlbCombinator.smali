.class final Lorg/ton/block/TransactionDescrTlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "TransactionDescr.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/block/TransactionDescr;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TransactionDescrTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/TransactionDescrTlbCombinator;

    invoke-direct {v0}, Lorg/ton/block/TransactionDescrTlbCombinator;-><init>()V

    sput-object v0, Lorg/ton/block/TransactionDescrTlbCombinator;->INSTANCE:Lorg/ton/block/TransactionDescrTlbCombinator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 17
    const-class v0, Lorg/ton/block/TransactionDescr;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Lkotlin/Pair;

    .line 19
    const-class v2, Lorg/ton/block/TransOrd;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Lorg/ton/block/TransOrd;->Companion:Lorg/ton/block/TransOrd$Companion;

    invoke-virtual {v3}, Lorg/ton/block/TransOrd$Companion;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/ton/block/TransStorage;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 20
    sget-object v3, Lorg/ton/block/TransStorage;->Companion:Lorg/ton/block/TransStorage$Companion;

    invoke-virtual {v3}, Lorg/ton/block/TransStorage$Companion;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 19
    const-class v2, Lorg/ton/block/TransTickTock;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 21
    sget-object v3, Lorg/ton/block/TransTickTock;->Companion:Lorg/ton/block/TransTickTock$Companion;

    invoke-virtual {v3}, Lorg/ton/block/TransTickTock$Companion;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 19
    const-class v2, Lorg/ton/block/TransMergeInstall;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 22
    sget-object v3, Lorg/ton/block/TransMergeInstall;->Companion:Lorg/ton/block/TransMergeInstall$Companion;

    invoke-virtual {v3}, Lorg/ton/block/TransMergeInstall$Companion;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 19
    const-class v2, Lorg/ton/block/TransMergePrepare;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 23
    sget-object v3, Lorg/ton/block/TransMergePrepare;->Companion:Lorg/ton/block/TransMergePrepare$Companion;

    invoke-virtual {v3}, Lorg/ton/block/TransMergePrepare$Companion;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 19
    const-class v2, Lorg/ton/block/TransSplitInstall;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 24
    sget-object v3, Lorg/ton/block/TransSplitInstall;->Companion:Lorg/ton/block/TransSplitInstall$Companion;

    invoke-virtual {v3}, Lorg/ton/block/TransSplitInstall$Companion;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 19
    const-class v2, Lorg/ton/block/TransSplitPrepare;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 25
    sget-object v3, Lorg/ton/block/TransSplitPrepare;->Companion:Lorg/ton/block/TransSplitPrepare$Companion;

    invoke-virtual {v3}, Lorg/ton/block/TransSplitPrepare$Companion;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 17
    invoke-direct {p0, v0, v1}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method
