.class public final Lorg/ton/block/TransMergeInstall$$serializer;
.super Ljava/lang/Object;
.source "TransMergeInstall.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/TransMergeInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lorg/ton/block/TransMergeInstall;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TransMergeInstall$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/TransMergeInstall$$serializer;

    invoke-direct {v0}, Lorg/ton/block/TransMergeInstall$$serializer;-><init>()V

    sput-object v0, Lorg/ton/block/TransMergeInstall$$serializer;->INSTANCE:Lorg/ton/block/TransMergeInstall$$serializer;

    .line 11
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "trans_merge_install"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "split_info"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "prepare_transaction"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "storage_ph"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "credit_ph"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "compute_ph"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "action"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "aborted"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "destroyed"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    new-instance v0, Lorg/ton/block/TransMergeInstall$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v2, "@type"

    invoke-direct {v0, v2}, Lorg/ton/block/TransMergeInstall$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->pushClassAnnotation(Ljava/lang/annotation/Annotation;)V

    sput-object v1, Lorg/ton/block/TransMergeInstall$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 11
    invoke-static {}, Lorg/ton/block/TransMergeInstall;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lorg/ton/block/SplitMergeInfo$$serializer;->INSTANCE:Lorg/ton/block/SplitMergeInfo$$serializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const/4 v2, 0x7

    aput-object v0, v1, v2

    return-object v1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/ton/block/TransMergeInstall$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/block/TransMergeInstall;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/block/TransMergeInstall;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lorg/ton/block/TransMergeInstall$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lorg/ton/block/TransMergeInstall;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v3, :cond_0

    sget-object v3, Lorg/ton/block/SplitMergeInfo$$serializer;->INSTANCE:Lorg/ton/block/SplitMergeInfo$$serializer;

    invoke-interface {v0, v1, v11, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aget-object v11, v2, v12

    invoke-interface {v0, v1, v12, v11, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aget-object v12, v2, v9

    invoke-interface {v0, v1, v9, v12, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aget-object v12, v2, v7

    invoke-interface {v0, v1, v7, v12, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aget-object v12, v2, v8

    invoke-interface {v0, v1, v8, v12, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aget-object v2, v2, v6

    invoke-interface {v0, v1, v6, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    const/16 v6, 0xff

    move v13, v4

    move v12, v5

    move v5, v6

    goto/16 :goto_4

    :cond_0
    move-object v7, v10

    move-object v9, v7

    move-object v14, v9

    move-object v15, v14

    move v3, v11

    move v13, v3

    move/from16 v16, v12

    move-object v12, v15

    move v10, v13

    move-object v11, v12

    :goto_0
    if-eqz v16, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v8}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    or-int/lit16 v13, v13, 0x80

    goto :goto_1

    :pswitch_1
    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v10

    or-int/lit8 v13, v13, 0x40

    goto :goto_1

    :pswitch_2
    aget-object v8, v2, v6

    invoke-interface {v0, v1, v6, v8, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    or-int/lit8 v13, v13, 0x20

    :goto_1
    const/4 v8, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v8, 0x4

    aget-object v4, v2, v8

    invoke-interface {v0, v1, v8, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    or-int/lit8 v13, v13, 0x10

    goto :goto_3

    :pswitch_4
    const/4 v4, 0x3

    const/4 v8, 0x4

    aget-object v5, v2, v4

    invoke-interface {v0, v1, v4, v5, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    or-int/lit8 v13, v13, 0x8

    goto :goto_2

    :pswitch_5
    const/4 v5, 0x2

    const/4 v8, 0x4

    aget-object v4, v2, v5

    invoke-interface {v0, v1, v5, v4, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit8 v13, v13, 0x4

    goto :goto_2

    :pswitch_6
    const/4 v4, 0x1

    const/4 v8, 0x4

    aget-object v5, v2, v4

    invoke-interface {v0, v1, v4, v5, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    or-int/lit8 v13, v13, 0x2

    goto :goto_2

    :pswitch_7
    const/4 v4, 0x1

    const/4 v8, 0x4

    sget-object v5, Lorg/ton/block/SplitMergeInfo$$serializer;->INSTANCE:Lorg/ton/block/SplitMergeInfo$$serializer;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4, v5, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/lit8 v13, v13, 0x1

    :goto_2
    const/4 v4, 0x7

    const/4 v5, 0x6

    goto :goto_0

    :pswitch_8
    const/4 v4, 0x0

    const/4 v8, 0x4

    move/from16 v16, v4

    :goto_3
    const/4 v4, 0x7

    goto :goto_0

    :cond_1
    move-object v2, v7

    move-object v8, v9

    move-object v9, v11

    move-object v7, v12

    move v5, v13

    move-object v11, v15

    move v13, v3

    move v12, v10

    move-object v3, v14

    :goto_4
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lorg/ton/block/TransMergeInstall;

    move-object v6, v3

    check-cast v6, Lorg/ton/block/SplitMergeInfo;

    move-object v1, v11

    check-cast v1, Lorg/ton/tlb/CellRef;

    move-object v3, v9

    check-cast v3, Lorg/ton/block/Maybe;

    move-object v9, v7

    check-cast v9, Lorg/ton/block/Maybe;

    move-object v10, v8

    check-cast v10, Lorg/ton/block/TrComputePhase;

    move-object v11, v2

    check-cast v11, Lorg/ton/block/Maybe;

    const/4 v14, 0x0

    move-object v4, v0

    move-object v7, v1

    move-object v8, v3

    invoke-direct/range {v4 .. v14}, Lorg/ton/block/TransMergeInstall;-><init>(ILorg/ton/block/SplitMergeInfo;Lorg/ton/tlb/CellRef;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/block/TrComputePhase;Lorg/ton/block/Maybe;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/block/TransMergeInstall$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lorg/ton/block/TransMergeInstall;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TransMergeInstall$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/block/TransMergeInstall;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/block/TransMergeInstall;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lorg/ton/block/TransMergeInstall$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lorg/ton/block/TransMergeInstall;->write$Self(Lorg/ton/block/TransMergeInstall;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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

    .line 11
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
