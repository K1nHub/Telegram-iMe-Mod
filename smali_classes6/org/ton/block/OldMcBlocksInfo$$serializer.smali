.class public final Lorg/ton/block/OldMcBlocksInfo$$serializer;
.super Ljava/lang/Object;
.source "OldMcBlocksInfo.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/OldMcBlocksInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lorg/ton/block/OldMcBlocksInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/OldMcBlocksInfo$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/OldMcBlocksInfo$$serializer;

    invoke-direct {v0}, Lorg/ton/block/OldMcBlocksInfo$$serializer;-><init>()V

    sput-object v0, Lorg/ton/block/OldMcBlocksInfo$$serializer;->INSTANCE:Lorg/ton/block/OldMcBlocksInfo$$serializer;

    .line 12
    new-instance v1, Lkotlinx/serialization/internal/InlineClassDescriptor;

    const-string v2, "org.ton.block.OldMcBlocksInfo"

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/internal/InlineClassDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;)V

    const-string v0, "value"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lorg/ton/block/OldMcBlocksInfo$$serializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
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

    .line 12
    invoke-static {}, Lorg/ton/block/OldMcBlocksInfo;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

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

    .line 12
    invoke-virtual {p0, p1}, Lorg/ton/block/OldMcBlocksInfo$$serializer;->deserialize-a38pvyo(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/block/OldMcBlocksInfo;->box-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/block/OldMcBlocksInfo;

    move-result-object p1

    return-object p1
.end method

.method public deserialize-a38pvyo(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/hashmap/HashmapAugE;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Decoder;",
            ")",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/KeyExtBlkRef;",
            "Lorg/ton/block/KeyMaxLt;",
            ">;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lorg/ton/block/OldMcBlocksInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p1

    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v1, Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    new-instance v3, Lorg/ton/block/OldMcBlocksInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v4, "@type"

    invoke-direct {v3, v4}, Lorg/ton/block/OldMcBlocksInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/hashmap/HashmapAugE;

    invoke-static {p1}, Lorg/ton/block/OldMcBlocksInfo;->constructor-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 12
    sget-object v0, Lorg/ton/block/OldMcBlocksInfo$$serializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lorg/ton/block/OldMcBlocksInfo;

    invoke-virtual {p2}, Lorg/ton/block/OldMcBlocksInfo;->unbox-impl()Lorg/ton/hashmap/HashmapAugE;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/OldMcBlocksInfo$$serializer;->serialize-t0Hynxs(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/hashmap/HashmapAugE;)V

    return-void
.end method

.method public serialize-t0Hynxs(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/hashmap/HashmapAugE;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/KeyExtBlkRef;",
            "Lorg/ton/block/KeyMaxLt;",
            ">;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lorg/ton/block/OldMcBlocksInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v1, Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    const/4 v3, 0x0

    new-instance v4, Lorg/ton/block/OldMcBlocksInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v5, "@type"

    invoke-direct {v4, v5}, Lorg/ton/block/OldMcBlocksInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

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

    .line 12
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
