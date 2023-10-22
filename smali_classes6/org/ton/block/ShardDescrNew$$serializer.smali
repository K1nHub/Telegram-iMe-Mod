.class public final Lorg/ton/block/ShardDescrNew$$serializer;
.super Ljava/lang/Object;
.source "ShardDescr.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/ShardDescrNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lorg/ton/block/ShardDescrNew;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ShardDescrNew$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/ShardDescrNew$$serializer;

    invoke-direct {v0}, Lorg/ton/block/ShardDescrNew$$serializer;-><init>()V

    sput-object v0, Lorg/ton/block/ShardDescrNew$$serializer;->INSTANCE:Lorg/ton/block/ShardDescrNew$$serializer;

    .line 97
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "org.ton.block.ShardDescrNew"

    const/16 v3, 0x12

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

    const-string v0, "r1"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lorg/ton/block/ShardDescrNew$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 97
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

    .line 97
    invoke-static {}, Lorg/ton/block/ShardDescrNew;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0x12

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

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/16 v2, 0x11

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    return-object v1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardDescrNew$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/block/ShardDescrNew;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/block/ShardDescrNew;
    .locals 37

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lorg/ton/block/ShardDescrNew$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lorg/ton/block/ShardDescrNew;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/16 v15, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    invoke-interface {v0, v1, v7, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v1, v6, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v9, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    invoke-interface {v0, v1, v5, v9, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v1, v14, v9, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    sget-object v10, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    invoke-interface {v0, v1, v4, v10, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v13, v10, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v1, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v12

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v11

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v13

    const/16 v15, 0x9

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v15

    const/16 v8, 0xa

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v8

    move-object/from16 v22, v4

    const/16 v4, 0xb

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v4

    move/from16 v21, v4

    move-object/from16 v19, v7

    const/16 v4, 0xc

    const/4 v7, 0x0

    invoke-interface {v0, v1, v4, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v23, v4

    const/16 v4, 0xd

    invoke-interface {v0, v1, v4, v9, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v9, 0xe

    invoke-interface {v0, v1, v9, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v4

    const/16 v4, 0xf

    invoke-interface {v0, v1, v4, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 p1, v3

    const/16 v4, 0x10

    aget-object v3, v2, v4

    invoke-interface {v0, v1, v4, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x11

    aget-object v2, v2, v4

    invoke-interface {v0, v1, v4, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const v4, 0x3ffff

    move-object/from16 v27, v3

    move-object v7, v6

    move/from16 v26, v8

    move/from16 v30, v12

    move/from16 v31, v13

    move/from16 v17, v21

    move-object/from16 v3, p1

    move-object v8, v5

    move-object v12, v9

    move v13, v11

    move-object v9, v14

    move-object/from16 v14, v22

    move v5, v4

    move-object v11, v10

    goto/16 :goto_4

    :cond_0
    const/16 v3, 0x11

    move-object/from16 v36, v8

    move v8, v7

    move-object/from16 v7, v36

    move/from16 v33, v6

    move-object v4, v7

    move-object v5, v4

    move-object v6, v5

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v27, v15

    move-object/from16 v28, v27

    move v9, v8

    move/from16 v26, v9

    move/from16 v29, v26

    move/from16 v30, v29

    move/from16 v31, v30

    move/from16 v32, v31

    move/from16 v7, v32

    move-object/from16 v8, v28

    :goto_0
    move/from16 v34, v9

    if-eqz v33, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v9}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    aget-object v9, v2, v3

    move-object/from16 v35, v10

    move-object/from16 v10, v28

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    const/high16 v9, 0x20000

    or-int/2addr v7, v9

    move/from16 v9, v34

    goto/16 :goto_3

    :pswitch_1
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/16 v9, 0x10

    aget-object v3, v2, v9

    move-object/from16 v28, v2

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v9, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    const/high16 v2, 0x10000

    or-int/2addr v7, v2

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/16 v9, 0x10

    move-object/from16 v28, v2

    move-object/from16 v2, v27

    sget-object v3, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2, v3, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const v3, 0x8000

    or-int/2addr v7, v3

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/16 v9, 0x10

    move-object/from16 v28, v2

    const/16 v2, 0xf

    sget-object v3, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v3, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit16 v7, v7, 0x4000

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/16 v9, 0x10

    move-object/from16 v28, v2

    const/16 v2, 0xe

    sget-object v3, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2, v3, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    or-int/lit16 v7, v7, 0x2000

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/16 v9, 0x10

    move-object/from16 v28, v2

    const/16 v2, 0xd

    sget-object v3, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v3, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    or-int/lit16 v7, v7, 0x1000

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/16 v3, 0xb

    const/16 v9, 0x10

    move-object/from16 v28, v2

    const/16 v2, 0xc

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v19

    or-int/lit16 v7, v7, 0x800

    move/from16 v9, v19

    move-object/from16 v2, v28

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/16 v3, 0xb

    const/16 v9, 0x10

    move-object/from16 v28, v2

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v26

    or-int/lit16 v7, v7, 0x400

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/16 v3, 0xb

    const/16 v9, 0x10

    move-object/from16 v28, v2

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v32

    or-int/lit16 v7, v7, 0x200

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/16 v3, 0xb

    const/16 v9, 0x10

    move-object/from16 v28, v2

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v31

    or-int/lit16 v7, v7, 0x100

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/16 v3, 0xb

    const/16 v9, 0x10

    move-object/from16 v28, v2

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v29

    or-int/lit16 v7, v7, 0x80

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/16 v3, 0xb

    const/16 v9, 0x10

    move-object/from16 v28, v2

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v30

    or-int/lit8 v7, v7, 0x40

    goto :goto_1

    :pswitch_c
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/16 v3, 0xb

    const/16 v9, 0x10

    move-object/from16 v28, v2

    sget-object v2, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    const/4 v3, 0x5

    invoke-interface {v0, v1, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    or-int/lit8 v7, v7, 0x20

    goto :goto_1

    :pswitch_d
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/4 v3, 0x5

    const/16 v9, 0x10

    move-object/from16 v28, v2

    sget-object v2, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    const/4 v3, 0x4

    invoke-interface {v0, v1, v3, v2, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/lit8 v7, v7, 0x10

    goto :goto_1

    :pswitch_e
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/4 v3, 0x4

    const/16 v9, 0x10

    move-object/from16 v28, v2

    sget-object v2, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    or-int/lit8 v7, v7, 0x8

    goto :goto_1

    :pswitch_f
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/4 v3, 0x3

    const/16 v9, 0x10

    move-object/from16 v28, v2

    sget-object v2, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    const/4 v3, 0x2

    invoke-interface {v0, v1, v3, v2, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    or-int/lit8 v7, v7, 0x4

    goto :goto_1

    :pswitch_10
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/4 v3, 0x2

    const/16 v9, 0x10

    move-object/from16 v28, v2

    sget-object v2, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    or-int/lit8 v7, v7, 0x2

    :goto_1
    move-object/from16 v2, v28

    move/from16 v9, v34

    :goto_2
    const/16 v3, 0x11

    move-object/from16 v28, v10

    :goto_3
    move-object/from16 v10, v35

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v35, v10

    move-object/from16 v10, v28

    const/4 v3, 0x1

    const/16 v9, 0x10

    move-object/from16 v28, v2

    sget-object v2, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    move-object/from16 v3, v35

    const/4 v9, 0x0

    invoke-interface {v0, v1, v9, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit8 v7, v7, 0x1

    move/from16 v9, v34

    const/16 v3, 0x11

    move-object/from16 v36, v10

    move-object v10, v2

    move-object/from16 v2, v28

    move-object/from16 v28, v36

    goto/16 :goto_0

    :pswitch_12
    move-object v3, v10

    move-object/from16 v10, v28

    const/4 v9, 0x0

    move/from16 v33, v9

    move/from16 v9, v34

    move-object v10, v3

    const/16 v3, 0x11

    goto/16 :goto_0

    :cond_1
    move-object v3, v10

    move-object/from16 v10, v28

    move-object/from16 v19, v3

    move-object v9, v5

    move v5, v7

    move-object v7, v8

    move-object v2, v10

    move-object/from16 v16, v12

    move-object/from16 v23, v13

    move-object v3, v15

    move/from16 v13, v29

    move/from16 v15, v32

    move/from16 v17, v34

    move-object v8, v6

    move-object v12, v11

    move-object v11, v4

    :goto_4
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lorg/ton/block/ShardDescrNew;

    move-object v4, v0

    move-object/from16 v6, v19

    check-cast v6, Lkotlin/UInt;

    check-cast v7, Lkotlin/UInt;

    check-cast v8, Lkotlin/ULong;

    check-cast v9, Lkotlin/ULong;

    move-object v10, v14

    check-cast v10, Lorg/ton/bitstring/BitString;

    check-cast v11, Lorg/ton/bitstring/BitString;

    move-object/from16 v18, v23

    check-cast v18, Lkotlin/UInt;

    move-object/from16 v19, v16

    check-cast v19, Lkotlin/ULong;

    move-object/from16 v20, v12

    check-cast v20, Lkotlin/UInt;

    move-object/from16 v21, v3

    check-cast v21, Lkotlin/UInt;

    move-object/from16 v22, v27

    check-cast v22, Lorg/ton/block/FutureSplitMerge;

    move-object/from16 v23, v2

    check-cast v23, Lorg/ton/tlb/CellRef;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v12, v30

    move/from16 v14, v31

    move/from16 v16, v26

    invoke-direct/range {v4 .. v25}, Lorg/ton/block/ShardDescrNew;-><init>(ILkotlin/UInt;Lkotlin/UInt;Lkotlin/ULong;Lkotlin/ULong;Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;ZZZZZILkotlin/UInt;Lkotlin/ULong;Lkotlin/UInt;Lkotlin/UInt;Lorg/ton/block/FutureSplitMerge;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 97
    sget-object v0, Lorg/ton/block/ShardDescrNew$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p2, Lorg/ton/block/ShardDescrNew;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardDescrNew$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/block/ShardDescrNew;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/block/ShardDescrNew;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lorg/ton/block/ShardDescrNew$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lorg/ton/block/ShardDescrNew;->write$Self(Lorg/ton/block/ShardDescrNew;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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

    .line 97
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
