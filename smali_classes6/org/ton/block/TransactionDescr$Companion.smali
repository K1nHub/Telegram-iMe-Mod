.class public final Lorg/ton/block/TransactionDescr$Companion;
.super Ljava/lang/Object;
.source "TransactionDescr.kt"

# interfaces
.implements Lorg/ton/tlb/providers/TlbCombinatorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/TransactionDescr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/providers/TlbCombinatorProvider<",
        "Lorg/ton/block/TransactionDescr;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/block/TransactionDescr$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/TransactionDescrTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/TransactionDescr$Companion;

    invoke-direct {v0}, Lorg/ton/block/TransactionDescr$Companion;-><init>()V

    sput-object v0, Lorg/ton/block/TransactionDescr$Companion;->$$INSTANCE:Lorg/ton/block/TransactionDescr$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/TransactionDescrTlbCombinator;->INSTANCE:Lorg/ton/block/TransactionDescrTlbCombinator;

    iput-object v0, p0, Lorg/ton/block/TransactionDescr$Companion;->$$delegate_0:Lorg/ton/block/TransactionDescrTlbCombinator;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/ton/block/TransactionDescr$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/TransactionDescr;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/ton/block/TransactionDescr$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransactionDescr;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/TransactionDescr;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/TransactionDescr$Companion;->$$delegate_0:Lorg/ton/block/TransactionDescrTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/AbstractTlbCombinator;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/TransactionDescr;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransactionDescr;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/TransactionDescr$Companion;->$$delegate_0:Lorg/ton/block/TransactionDescrTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbCombinator;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/TransactionDescr;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/TransactionDescr;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-class v0, Lorg/ton/block/TransactionDescr;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v0, 0x7

    new-array v3, v0, [Lkotlin/reflect/KClass;

    const-class v1, Lorg/ton/block/TransMergeInstall;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-class v1, Lorg/ton/block/TransMergePrepare;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const-class v1, Lorg/ton/block/TransOrd;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v3, v7

    const-class v1, Lorg/ton/block/TransSplitInstall;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v8, 0x3

    aput-object v1, v3, v8

    const-class v1, Lorg/ton/block/TransSplitPrepare;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v9, 0x4

    aput-object v1, v3, v9

    const-class v1, Lorg/ton/block/TransStorage;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v10, 0x5

    aput-object v1, v3, v10

    const-class v1, Lorg/ton/block/TransTickTock;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v11, 0x6

    aput-object v1, v3, v11

    new-array v12, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lorg/ton/block/TransMergeInstall$$serializer;->INSTANCE:Lorg/ton/block/TransMergeInstall$$serializer;

    aput-object v0, v12, v4

    sget-object v0, Lorg/ton/block/TransMergePrepare$$serializer;->INSTANCE:Lorg/ton/block/TransMergePrepare$$serializer;

    aput-object v0, v12, v5

    sget-object v0, Lorg/ton/block/TransOrd$$serializer;->INSTANCE:Lorg/ton/block/TransOrd$$serializer;

    aput-object v0, v12, v7

    sget-object v0, Lorg/ton/block/TransSplitInstall$$serializer;->INSTANCE:Lorg/ton/block/TransSplitInstall$$serializer;

    aput-object v0, v12, v8

    sget-object v0, Lorg/ton/block/TransSplitPrepare$$serializer;->INSTANCE:Lorg/ton/block/TransSplitPrepare$$serializer;

    aput-object v0, v12, v9

    sget-object v0, Lorg/ton/block/TransStorage$$serializer;->INSTANCE:Lorg/ton/block/TransStorage$$serializer;

    aput-object v0, v12, v10

    sget-object v0, Lorg/ton/block/TransTickTock$$serializer;->INSTANCE:Lorg/ton/block/TransTickTock$$serializer;

    aput-object v0, v12, v11

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    .line 11
    new-instance v0, Lorg/ton/block/TransactionDescr$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v1, "@type"

    invoke-direct {v0, v1}, Lorg/ton/block/TransactionDescr$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v4

    const-string v1, "org.ton.block.TransactionDescr"

    move-object v0, v6

    move-object v4, v12

    .line 14
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lorg/ton/block/TransactionDescr;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TransactionDescr$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransactionDescr;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransactionDescr;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/TransactionDescr$Companion;->$$delegate_0:Lorg/ton/block/TransactionDescrTlbCombinator;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tlb/TlbCombinator;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method

.method public tlbCombinator()Lorg/ton/tlb/TlbCombinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/TransactionDescr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ton/block/TransactionDescr$Companion;->$$delegate_0:Lorg/ton/block/TransactionDescrTlbCombinator;

    invoke-virtual {v0}, Lorg/ton/tlb/TlbCombinator;->tlbCombinator()Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    return-object v0
.end method
