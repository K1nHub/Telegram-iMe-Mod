.class public final Lorg/ton/block/BinTree$Companion;
.super Ljava/lang/Object;
.source "BinTree.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/BinTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/block/BinTree$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/BinTree$Companion;

    invoke-direct {v0}, Lorg/ton/block/BinTree$Companion;-><init>()V

    sput-object v0, Lorg/ton/block/BinTree$Companion;->$$INSTANCE:Lorg/ton/block/BinTree$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT0;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/BinTree<",
            "TT0;>;>;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    const-string v1, "typeSerial0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance p1, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lorg/ton/block/BinTree;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v1, 0x2

    new-array v5, v1, [Lkotlin/reflect/KClass;

    const-class v2, Lorg/ton/block/BinTreeFork;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const-class v2, Lorg/ton/block/BinTreeLeaf;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v5, v6

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    new-instance v2, Lorg/ton/block/BinTreeFork$$serializer;

    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v8, v9}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-direct {v2, v7}, Lorg/ton/block/BinTreeFork$$serializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/ton/block/BinTreeLeaf$$serializer;

    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v8, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v0, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-direct {v2, v7}, Lorg/ton/block/BinTreeLeaf$$serializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    aput-object v2, v1, v6

    new-array v7, v6, [Ljava/lang/annotation/Annotation;

    .line 13
    new-instance v0, Lorg/ton/block/BinTree$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v2, "@type"

    invoke-direct {v0, v2}, Lorg/ton/block/BinTree$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v7, v3

    const-string v3, "org.ton.block.BinTree"

    move-object v2, p1

    move-object v6, v1

    .line 19
    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object p1
.end method

.method public final tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCombinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;)",
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/BinTree<",
            "TX;>;>;"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lorg/ton/block/BinTreeTlbCombinator;

    invoke-direct {v0, p1}, Lorg/ton/block/BinTreeTlbCombinator;-><init>(Lorg/ton/tlb/TlbCodec;)V

    return-object v0
.end method
