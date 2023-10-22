.class public final Lorg/ton/block/ShardDescrOld$$serializer;
.super Ljava/lang/Object;
.source "ShardDescr.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/ShardDescrOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lorg/ton/block/ShardDescrOld;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ShardDescrOld$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/ShardDescrOld$$serializer;

    invoke-direct {v0}, Lorg/ton/block/ShardDescrOld$$serializer;-><init>()V

    sput-object v0, Lorg/ton/block/ShardDescrOld$$serializer;->INSTANCE:Lorg/ton/block/ShardDescrOld$$serializer;

    .line 23
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "shard_descr_old"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "seq_no"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "reg_mc_seqno"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "start_lt"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "end_lt"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "root_hash"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "file_hash"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "before_split"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "before_merge"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "want_split"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "want_merge"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "nx_cc_updated"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "flags"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "next_catchain_seqno"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "next_validator_shard"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "min_ref_mc_seqno"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "gen_utime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "split_merge_at"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "fees_collected"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "funds_created"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lorg/ton/block/ShardDescrOld$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 23
    invoke-static {}, Lorg/ton/block/ShardDescrOld;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0x13

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v3, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const/4 v4, 0x3

    aput-object v3, v1, v4

    sget-object v4, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    const/4 v5, 0x4

    aput-object v4, v1, v5

    const/4 v5, 0x5

    aput-object v4, v1, v5

    sget-object v4, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/4 v5, 0x6

    aput-object v4, v1, v5

    const/4 v5, 0x7

    aput-object v4, v1, v5

    const/16 v5, 0x8

    aput-object v4, v1, v5

    const/16 v5, 0x9

    aput-object v4, v1, v5

    const/16 v5, 0xa

    aput-object v4, v1, v5

    sget-object v4, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/16 v5, 0xb

    aput-object v4, v1, v5

    const/16 v4, 0xc

    aput-object v2, v1, v4

    const/16 v4, 0xd

    aput-object v3, v1, v4

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const/16 v2, 0x10

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    sget-object v0, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const/16 v2, 0x12

    aput-object v0, v1, v2

    return-object v1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardDescrOld$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/block/ShardDescrOld;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/block/ShardDescrOld;
    .locals 44

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lorg/ton/block/ShardDescrOld$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lorg/ton/block/ShardDescrOld;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/4 v4, 0x3

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    invoke-interface {v0, v1, v9, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v1, v8, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v11, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    invoke-interface {v0, v1, v7, v11, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v1, v4, v11, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v12, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    invoke-interface {v0, v1, v6, v12, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v1, v15, v12, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v14

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v13

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    const/16 v15, 0x9

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v15

    const/16 v10, 0xa

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v10

    move-object/from16 v23, v4

    const/16 v4, 0xb

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v4

    move/from16 v22, v4

    move-object/from16 v20, v9

    const/16 v4, 0xc

    const/4 v9, 0x0

    invoke-interface {v0, v1, v4, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v24, v4

    const/16 v4, 0xd

    invoke-interface {v0, v1, v4, v11, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v11, 0xe

    invoke-interface {v0, v1, v11, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-interface {v0, v1, v4, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x10

    aget-object v2, v2, v4

    invoke-interface {v0, v1, v4, v2, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    move-object/from16 v17, v2

    const/16 v2, 0x11

    invoke-interface {v0, v1, v2, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v8

    const/16 v8, 0x12

    invoke-interface {v0, v1, v8, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const v8, 0x7ffff

    move/from16 v35, v10

    move-object v10, v11

    move-object/from16 v19, v12

    move/from16 v21, v13

    move/from16 v38, v14

    move-object/from16 v13, v18

    move-object/from16 v9, v20

    move/from16 v25, v22

    move-object v11, v2

    move/from16 v22, v5

    move/from16 v20, v8

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object v5, v4

    move-object/from16 v4, v23

    move/from16 v23, v15

    goto/16 :goto_7

    :cond_0
    move v3, v8

    move-object/from16 v43, v10

    move v10, v9

    move-object/from16 v9, v43

    move/from16 v40, v3

    move-object v3, v9

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v13, v8

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v34, v15

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move v11, v10

    move v12, v11

    move/from16 v30, v12

    move/from16 v37, v30

    move/from16 v38, v37

    move/from16 v39, v38

    move/from16 v9, v39

    move-object/from16 v10, v36

    :goto_0
    if-eqz v40, :cond_1

    move/from16 v41, v9

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v9}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v9, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    move/from16 v42, v11

    const/16 v11, 0x12

    invoke-interface {v0, v1, v11, v9, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/high16 v9, 0x40000

    or-int/2addr v12, v9

    goto/16 :goto_5

    :pswitch_1
    move/from16 v42, v11

    const/16 v11, 0x12

    sget-object v9, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    move-object/from16 v16, v8

    move-object/from16 v11, v36

    const/16 v8, 0x11

    invoke-interface {v0, v1, v8, v9, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    const/high16 v9, 0x20000

    or-int/2addr v12, v9

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v11, v36

    const/16 v9, 0x10

    aget-object v8, v2, v9

    move-object/from16 v36, v2

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v9, v8, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    const/high16 v2, 0x10000

    or-int/2addr v12, v2

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v11, v36

    const/16 v9, 0x10

    move-object/from16 v36, v2

    move-object/from16 v2, v35

    sget-object v8, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    move-object/from16 v17, v2

    move-object/from16 v9, v34

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    const v8, 0x8000

    or-int/2addr v12, v8

    move-object/from16 v8, v16

    move-object/from16 v35, v17

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    move-object/from16 v36, v2

    const/16 v2, 0xf

    sget-object v8, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v8, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    or-int/lit16 v12, v12, 0x4000

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    move-object/from16 v36, v2

    const/16 v2, 0xe

    sget-object v8, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2, v8, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    or-int/lit16 v12, v12, 0x2000

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    move-object/from16 v36, v2

    const/16 v2, 0xd

    sget-object v8, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v8, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/lit16 v12, v12, 0x1000

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    const/16 v8, 0xb

    move-object/from16 v36, v2

    const/16 v2, 0xc

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v20

    or-int/lit16 v12, v12, 0x800

    move-object/from16 v8, v16

    move/from16 v9, v20

    move-object/from16 v2, v36

    goto/16 :goto_3

    :pswitch_8
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    const/16 v8, 0xb

    move-object/from16 v36, v2

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v30

    or-int/lit16 v12, v12, 0x400

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    const/16 v8, 0xb

    move-object/from16 v36, v2

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v39

    or-int/lit16 v12, v12, 0x200

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v16, v8

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    const/16 v8, 0xb

    move-object/from16 v36, v2

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v20

    or-int/lit16 v12, v12, 0x100

    move-object/from16 v8, v16

    move-object/from16 v2, v36

    move/from16 v9, v41

    move-object/from16 v36, v11

    move/from16 v11, v20

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    const/16 v8, 0xb

    move-object/from16 v36, v2

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v37

    or-int/lit16 v12, v12, 0x80

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    const/16 v8, 0xb

    move-object/from16 v36, v2

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v38

    or-int/lit8 v12, v12, 0x40

    goto/16 :goto_1

    :pswitch_d
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    const/16 v8, 0xb

    move-object/from16 v36, v2

    sget-object v2, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    const/4 v8, 0x5

    invoke-interface {v0, v1, v8, v2, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    or-int/lit8 v12, v12, 0x20

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    const/4 v8, 0x5

    move-object/from16 v36, v2

    sget-object v2, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    const/4 v8, 0x4

    invoke-interface {v0, v1, v8, v2, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    or-int/lit8 v12, v12, 0x10

    goto :goto_1

    :pswitch_f
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    const/4 v8, 0x4

    move-object/from16 v36, v2

    sget-object v2, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    const/4 v8, 0x3

    invoke-interface {v0, v1, v8, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    or-int/lit8 v12, v12, 0x8

    goto :goto_1

    :pswitch_10
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    const/4 v8, 0x3

    move-object/from16 v36, v2

    sget-object v2, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    const/4 v8, 0x2

    invoke-interface {v0, v1, v8, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    or-int/lit8 v12, v12, 0x4

    goto :goto_1

    :pswitch_11
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    const/4 v8, 0x2

    move-object/from16 v36, v2

    sget-object v2, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    const/4 v8, 0x1

    invoke-interface {v0, v1, v8, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    or-int/lit8 v12, v12, 0x2

    goto :goto_1

    :pswitch_12
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    const/4 v8, 0x1

    move-object/from16 v36, v2

    sget-object v2, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    const/4 v8, 0x0

    invoke-interface {v0, v1, v8, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    or-int/lit8 v12, v12, 0x1

    :goto_1
    move-object/from16 v8, v16

    :goto_2
    move-object/from16 v2, v36

    move/from16 v9, v41

    :goto_3
    move-object/from16 v36, v11

    goto :goto_6

    :pswitch_13
    move-object/from16 v16, v8

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    const/4 v8, 0x0

    move/from16 v40, v8

    :goto_4
    move-object/from16 v8, v16

    :goto_5
    move/from16 v9, v41

    :goto_6
    move/from16 v11, v42

    goto/16 :goto_0

    :cond_1
    move-object/from16 v16, v8

    move/from16 v41, v9

    move/from16 v42, v11

    move-object/from16 v9, v34

    move-object/from16 v17, v35

    move-object/from16 v11, v36

    move-object v8, v3

    move-object v3, v9

    move-object v9, v10

    move/from16 v20, v12

    move-object/from16 v24, v14

    move-object/from16 v19, v15

    move-object/from16 v2, v17

    move/from16 v35, v30

    move/from16 v21, v37

    move/from16 v23, v39

    move/from16 v25, v41

    move/from16 v22, v42

    move-object v10, v5

    move-object/from16 v5, v16

    :goto_7
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lorg/ton/block/ShardDescrOld;

    move-object v12, v0

    move-object v14, v9

    check-cast v14, Lkotlin/UInt;

    move-object v15, v8

    check-cast v15, Lkotlin/UInt;

    move-object/from16 v16, v7

    check-cast v16, Lkotlin/ULong;

    move-object/from16 v17, v4

    check-cast v17, Lkotlin/ULong;

    move-object/from16 v18, v6

    check-cast v18, Lorg/ton/bitstring/BitString;

    check-cast v19, Lorg/ton/bitstring/BitString;

    move-object/from16 v26, v24

    check-cast v26, Lkotlin/UInt;

    move-object/from16 v27, v13

    check-cast v27, Lkotlin/ULong;

    move-object/from16 v28, v10

    check-cast v28, Lkotlin/UInt;

    move-object/from16 v29, v3

    check-cast v29, Lkotlin/UInt;

    move-object/from16 v30, v2

    check-cast v30, Lorg/ton/block/FutureSplitMerge;

    move-object/from16 v31, v11

    check-cast v31, Lorg/ton/block/CurrencyCollection;

    move-object/from16 v32, v5

    check-cast v32, Lorg/ton/block/CurrencyCollection;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v13, v20

    move/from16 v20, v38

    move/from16 v24, v35

    invoke-direct/range {v12 .. v34}, Lorg/ton/block/ShardDescrOld;-><init>(ILkotlin/UInt;Lkotlin/UInt;Lkotlin/ULong;Lkotlin/ULong;Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;ZZZZZILkotlin/UInt;Lkotlin/ULong;Lkotlin/UInt;Lkotlin/UInt;Lorg/ton/block/FutureSplitMerge;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

    .line 23
    sget-object v0, Lorg/ton/block/ShardDescrOld$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lorg/ton/block/ShardDescrOld;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardDescrOld$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/block/ShardDescrOld;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/block/ShardDescrOld;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lorg/ton/block/ShardDescrOld$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lorg/ton/block/ShardDescrOld;->write$Self(Lorg/ton/block/ShardDescrOld;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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

    .line 23
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
