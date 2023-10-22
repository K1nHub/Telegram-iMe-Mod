.class public final Lorg/ton/hashmap/HmLabel$Companion;
.super Ljava/lang/Object;
.source "HmLabel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HmLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/hashmap/HmLabel$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/hashmap/HmLabel$Companion;

    invoke-direct {v0}, Lorg/ton/hashmap/HmLabel$Companion;-><init>()V

    sput-object v0, Lorg/ton/hashmap/HmLabel$Companion;->$$INSTANCE:Lorg/ton/hashmap/HmLabel$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/hashmap/HmLabel;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-class v0, Lorg/ton/hashmap/HmLabel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v0, 0x3

    new-array v3, v0, [Lkotlin/reflect/KClass;

    const-class v1, Lorg/ton/hashmap/HmlLong;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-class v1, Lorg/ton/hashmap/HmlSame;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const-class v1, Lorg/ton/hashmap/HmlShort;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v3, v7

    new-array v8, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lorg/ton/hashmap/HmlLong$$serializer;->INSTANCE:Lorg/ton/hashmap/HmlLong$$serializer;

    aput-object v0, v8, v4

    sget-object v0, Lorg/ton/hashmap/HmlSame$$serializer;->INSTANCE:Lorg/ton/hashmap/HmlSame$$serializer;

    aput-object v0, v8, v5

    sget-object v0, Lorg/ton/hashmap/HmlShort$$serializer;->INSTANCE:Lorg/ton/hashmap/HmlShort$$serializer;

    aput-object v0, v8, v7

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    .line 17
    new-instance v0, Lorg/ton/hashmap/HmLabel$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v1, "@type"

    invoke-direct {v0, v1}, Lorg/ton/hashmap/HmLabel$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v4

    const-string v1, "org.ton.hashmap.HmLabel"

    move-object v0, v6

    move-object v4, v8

    .line 21
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method

.method public final tlbCodec(I)Lorg/ton/tlb/TlbNegatedCodec;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ton/tlb/TlbNegatedCodec<",
            "Lorg/ton/hashmap/HmLabel;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 47
    sget-object v0, Lorg/ton/hashmap/HashMapLabelTlbCombinator;->Companion:Lorg/ton/hashmap/HashMapLabelTlbCombinator$Companion;

    invoke-virtual {v0}, Lorg/ton/hashmap/HashMapLabelTlbCombinator$Companion;->getCACHE()[Lorg/ton/hashmap/HashMapLabelTlbCombinator;

    move-result-object v0

    aget-object p1, v0, p1

    goto :goto_0

    .line 49
    :cond_0
    new-instance v7, Lorg/ton/hashmap/HashMapLabelTlbCombinator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/ton/hashmap/HashMapLabelTlbCombinator;-><init>(ILorg/ton/tlb/TlbNegatedConstructor;Lorg/ton/tlb/TlbNegatedConstructor;Lorg/ton/tlb/TlbNegatedConstructor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v7

    :goto_0
    return-object p1
.end method
