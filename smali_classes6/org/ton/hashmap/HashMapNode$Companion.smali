.class public final Lorg/ton/hashmap/HashMapNode$Companion;
.super Ljava/lang/Object;
.source "HashMapNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HashMapNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/hashmap/HashMapNode$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/hashmap/HashMapNode$Companion;

    invoke-direct {v0}, Lorg/ton/hashmap/HashMapNode$Companion;-><init>()V

    sput-object v0, Lorg/ton/hashmap/HashMapNode$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashMapNode$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
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
            "Lorg/ton/hashmap/HashMapNode<",
            "TT0;>;>;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    const-string v1, "typeSerial0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance p1, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lorg/ton/hashmap/HashMapNode;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v1, 0x2

    new-array v5, v1, [Lkotlin/reflect/KClass;

    const-class v2, Lorg/ton/hashmap/HmnFork;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const-class v2, Lorg/ton/hashmap/HmnLeaf;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v5, v6

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    new-instance v2, Lorg/ton/hashmap/HmnFork$$serializer;

    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v8, v9}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-direct {v2, v7}, Lorg/ton/hashmap/HmnFork$$serializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/ton/hashmap/HmnLeaf$$serializer;

    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v8, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v0, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-direct {v2, v7}, Lorg/ton/hashmap/HmnLeaf$$serializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    aput-object v2, v1, v6

    new-array v7, v6, [Ljava/lang/annotation/Annotation;

    .line 12
    new-instance v0, Lorg/ton/hashmap/HashMapNode$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v2, "@type"

    invoke-direct {v0, v2}, Lorg/ton/hashmap/HashMapNode$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v7, v3

    const-string v3, "org.ton.hashmap.HashMapNode"

    move-object v2, p1

    move-object v6, v1

    .line 14
    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object p1
.end method

.method public final tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;)",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashMapNode<",
            "TX;>;>;"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 19
    sget-object p1, Lorg/ton/hashmap/HmnLeaf;->Companion:Lorg/ton/hashmap/HmnLeaf$Companion;

    invoke-virtual {p1, p2}, Lorg/ton/hashmap/HmnLeaf$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lorg/ton/hashmap/HmnFork;->Companion:Lorg/ton/hashmap/HmnFork$Companion;

    invoke-virtual {v0, p1, p2}, Lorg/ton/hashmap/HmnFork$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p1

    :goto_0
    const-string p2, "null cannot be cast to non-null type org.ton.tlb.TlbCodec<org.ton.hashmap.HashMapNode<X of org.ton.hashmap.HashMapNode.Companion.tlbCodec>>"

    .line 18
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
