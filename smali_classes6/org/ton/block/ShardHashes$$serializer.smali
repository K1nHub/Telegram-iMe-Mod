.class public final Lorg/ton/block/ShardHashes$$serializer;
.super Ljava/lang/Object;
.source "ShardHashes.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/ShardHashes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lorg/ton/block/ShardHashes;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ShardHashes$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/ShardHashes$$serializer;

    invoke-direct {v0}, Lorg/ton/block/ShardHashes$$serializer;-><init>()V

    sput-object v0, Lorg/ton/block/ShardHashes$$serializer;->INSTANCE:Lorg/ton/block/ShardHashes$$serializer;

    .line 13
    new-instance v1, Lkotlinx/serialization/internal/InlineClassDescriptor;

    const-string v2, "org.ton.block.ShardHashes"

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/internal/InlineClassDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;)V

    const-string v0, "value"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lorg/ton/block/ShardHashes$$serializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lorg/ton/block/ShardHashes;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    return-object v1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardHashes$$serializer;->deserialize-nCYawEE(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/hashmap/HashMapE;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/block/ShardHashes;->box-impl(Lorg/ton/hashmap/HashMapE;)Lorg/ton/block/ShardHashes;

    move-result-object p1

    return-object p1
.end method

.method public deserialize-nCYawEE(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/hashmap/HashMapE;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Decoder;",
            ")",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BinTree<",
            "Lorg/ton/block/ShardDescr;",
            ">;>;>;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    const-string v1, "decoder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lorg/ton/block/ShardHashes$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/Decoder;->decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p1

    new-instance v7, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lorg/ton/hashmap/HashMapE;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v1, 0x2

    new-array v4, v1, [Lkotlin/reflect/KClass;

    const-class v2, Lorg/ton/hashmap/HmeEmpty;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-class v2, Lorg/ton/hashmap/HmeRoot;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v4, v6

    new-array v8, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/hashmap/HmeEmpty;->Companion:Lorg/ton/hashmap/HmeEmpty$Companion;

    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v9, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v1, v2}, Lorg/ton/hashmap/HmeEmpty$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v8, v5

    sget-object v1, Lorg/ton/hashmap/HmeRoot;->Companion:Lorg/ton/hashmap/HmeRoot$Companion;

    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v9, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v0, v9}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v1, v2}, Lorg/ton/hashmap/HmeRoot$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v8, v6

    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    new-instance v0, Lorg/ton/block/ShardHashes$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v1, "@type"

    invoke-direct {v0, v1}, Lorg/ton/block/ShardHashes$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v6, v5

    const-string v2, "org.ton.hashmap.HashMapE"

    move-object v1, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    invoke-interface {p1, v7}, Lkotlinx/serialization/encoding/Decoder;->decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/hashmap/HashMapE;

    invoke-static {p1}, Lorg/ton/block/ShardHashes;->constructor-impl(Lorg/ton/hashmap/HashMapE;)Lorg/ton/hashmap/HashMapE;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 13
    sget-object v0, Lorg/ton/block/ShardHashes$$serializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lorg/ton/block/ShardHashes;

    invoke-virtual {p2}, Lorg/ton/block/ShardHashes;->unbox-impl()Lorg/ton/hashmap/HashMapE;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardHashes$$serializer;->serialize-ZFAh1YI(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/hashmap/HashMapE;)V

    return-void
.end method

.method public serialize-ZFAh1YI(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/hashmap/HashMapE;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BinTree<",
            "Lorg/ton/block/ShardDescr;",
            ">;>;>;)V"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    const-string v1, "encoder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lorg/ton/block/ShardHashes$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/Encoder;->encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lorg/ton/hashmap/HashMapE;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v1, 0x2

    new-array v4, v1, [Lkotlin/reflect/KClass;

    const-class v2, Lorg/ton/hashmap/HmeEmpty;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-class v2, Lorg/ton/hashmap/HmeRoot;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v4, v6

    new-array v8, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/hashmap/HmeEmpty;->Companion:Lorg/ton/hashmap/HmeEmpty$Companion;

    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v9, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v1, v2}, Lorg/ton/hashmap/HmeEmpty$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v8, v5

    sget-object v1, Lorg/ton/hashmap/HmeRoot;->Companion:Lorg/ton/hashmap/HmeRoot$Companion;

    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v9, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v0, v9}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v1, v2}, Lorg/ton/hashmap/HmeRoot$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v8, v6

    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    new-instance v0, Lorg/ton/block/ShardHashes$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v1, "@type"

    invoke-direct {v0, v1}, Lorg/ton/block/ShardHashes$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v6, v5

    const-string v2, "org.ton.hashmap.HashMapE"

    move-object v1, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    invoke-interface {p1, v7, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
