.class public final Lorg/ton/block/IntMsgInfo$$serializer;
.super Ljava/lang/Object;
.source "IntMsgInfo.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/IntMsgInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lorg/ton/block/IntMsgInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/IntMsgInfo$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/IntMsgInfo$$serializer;

    invoke-direct {v0}, Lorg/ton/block/IntMsgInfo$$serializer;-><init>()V

    sput-object v0, Lorg/ton/block/IntMsgInfo$$serializer;->INSTANCE:Lorg/ton/block/IntMsgInfo$$serializer;

    .line 14
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "int_msg_info"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "ihr_disabled"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "bounce"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "bounced"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "src"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "dest"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "value"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "ihr_fee"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "fwd_fee"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "created_lt"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "created_at"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 10
    new-instance v0, Lorg/ton/block/IntMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v2, "@type"

    invoke-direct {v0, v2}, Lorg/ton/block/IntMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->pushClassAnnotation(Ljava/lang/annotation/Annotation;)V

    sput-object v1, Lorg/ton/block/IntMsgInfo$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
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

    .line 14
    invoke-static {}, Lorg/ton/block/IntMsgInfo;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    sget-object v0, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sget-object v0, Lorg/ton/block/Coins$$serializer;->INSTANCE:Lorg/ton/block/Coins$$serializer;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    return-object v1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/ton/block/IntMsgInfo$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/block/IntMsgInfo;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/block/IntMsgInfo;
    .locals 23

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lorg/ton/block/IntMsgInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lorg/ton/block/IntMsgInfo;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/16 v4, 0x9

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/16 v8, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v11

    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v9

    aget-object v14, v2, v10

    invoke-interface {v0, v1, v10, v14, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aget-object v2, v2, v12

    invoke-interface {v0, v1, v12, v2, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v12, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    invoke-interface {v0, v1, v7, v12, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v12, Lorg/ton/block/Coins$$serializer;->INSTANCE:Lorg/ton/block/Coins$$serializer;

    invoke-interface {v0, v1, v6, v12, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v1, v5, v12, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v12

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v4

    const/16 v8, 0x3ff

    move v15, v4

    move v4, v8

    move-object v14, v10

    move-wide/from16 v18, v12

    move-object v12, v5

    move-object v10, v6

    move v6, v11

    move v5, v3

    move/from16 v22, v9

    move-object v9, v7

    move/from16 v7, v22

    goto/16 :goto_3

    :cond_0
    const-wide/16 v15, 0x0

    move/from16 v21, v11

    move-object v9, v13

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move v3, v14

    move/from16 v17, v3

    move-wide/from16 v18, v15

    move/from16 v15, v17

    move/from16 v16, v15

    move/from16 v13, v16

    move-object v14, v12

    :goto_0
    if-eqz v21, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v7}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v13

    or-int/lit16 v15, v15, 0x200

    goto/16 :goto_2

    :pswitch_1
    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v18

    or-int/lit16 v15, v15, 0x100

    goto :goto_2

    :pswitch_2
    sget-object v7, Lorg/ton/block/Coins$$serializer;->INSTANCE:Lorg/ton/block/Coins$$serializer;

    invoke-interface {v0, v1, v5, v7, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    or-int/lit16 v15, v15, 0x80

    goto :goto_2

    :pswitch_3
    sget-object v7, Lorg/ton/block/Coins$$serializer;->INSTANCE:Lorg/ton/block/Coins$$serializer;

    invoke-interface {v0, v1, v6, v7, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    or-int/lit8 v15, v15, 0x40

    goto :goto_2

    :pswitch_4
    sget-object v7, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    const/4 v4, 0x5

    invoke-interface {v0, v1, v4, v7, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    or-int/lit8 v15, v15, 0x20

    move v7, v4

    const/16 v4, 0x9

    goto :goto_0

    :pswitch_5
    const/4 v7, 0x4

    aget-object v4, v2, v7

    invoke-interface {v0, v1, v7, v4, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit8 v15, v15, 0x10

    const/16 v4, 0x9

    goto :goto_2

    :pswitch_6
    const/4 v4, 0x3

    const/4 v7, 0x4

    aget-object v5, v2, v4

    invoke-interface {v0, v1, v4, v5, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/lit8 v15, v15, 0x8

    goto :goto_1

    :pswitch_7
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x4

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v16

    or-int/lit8 v15, v15, 0x4

    goto :goto_1

    :pswitch_8
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x4

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v17

    or-int/lit8 v15, v15, 0x2

    goto :goto_1

    :pswitch_9
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x4

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v20

    or-int/lit8 v15, v15, 0x1

    move/from16 v3, v20

    goto :goto_1

    :pswitch_a
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v20, 0x0

    move/from16 v21, v20

    :goto_1
    const/16 v4, 0x9

    const/4 v5, 0x7

    :goto_2
    const/4 v7, 0x5

    goto :goto_0

    :cond_1
    move v5, v3

    move-object v2, v11

    move v4, v15

    move/from16 v7, v16

    move/from16 v6, v17

    move v15, v13

    :goto_3
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lorg/ton/block/IntMsgInfo;

    move-object v8, v14

    check-cast v8, Lorg/ton/block/MsgAddressInt;

    move-object v1, v2

    check-cast v1, Lorg/ton/block/MsgAddressInt;

    move-object v2, v9

    check-cast v2, Lorg/ton/block/CurrencyCollection;

    move-object v11, v10

    check-cast v11, Lorg/ton/block/Coins;

    check-cast v12, Lorg/ton/block/Coins;

    const/16 v16, 0x0

    move-object v3, v0

    move-object v9, v1

    move-object v10, v2

    move-wide/from16 v13, v18

    invoke-direct/range {v3 .. v16}, Lorg/ton/block/IntMsgInfo;-><init>(IZZZLorg/ton/block/MsgAddressInt;Lorg/ton/block/MsgAddressInt;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/Coins;Lorg/ton/block/Coins;JILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_9
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

    .line 14
    sget-object v0, Lorg/ton/block/IntMsgInfo$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lorg/ton/block/IntMsgInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/IntMsgInfo$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/block/IntMsgInfo;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/block/IntMsgInfo;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lorg/ton/block/IntMsgInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lorg/ton/block/IntMsgInfo;->write$Self(Lorg/ton/block/IntMsgInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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

    .line 14
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
