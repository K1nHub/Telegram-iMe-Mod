.class public final Lorg/ton/block/BlockInfo$$serializer;
.super Ljava/lang/Object;
.source "BlockInfo.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/BlockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lorg/ton/block/BlockInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/BlockInfo$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/BlockInfo$$serializer;

    invoke-direct {v0}, Lorg/ton/block/BlockInfo$$serializer;-><init>()V

    sput-object v0, Lorg/ton/block/BlockInfo$$serializer;->INSTANCE:Lorg/ton/block/BlockInfo$$serializer;

    .line 10
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "block_info"

    const/16 v3, 0x18

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "version"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "not_master"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "after_merge"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "before_split"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "after_split"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "want_split"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "want_merge"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "key_block"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "ver_seqno_inc"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "flags"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "seq_no"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "vert_seq_no"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "shard"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "gen_utime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "start_lt"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "end_lt"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "gen_validator_list_hash_short"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "gen_catchain_seqno"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "min_ref_mc_seqno"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "prevKeyBlockSeqno"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "gen_software"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "master_ref"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "prev_ref"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "prev_vert_ref"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lorg/ton/block/BlockInfo$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 10
    invoke-static {}, Lorg/ton/block/BlockInfo;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0x18

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v3, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const/4 v4, 0x3

    aput-object v3, v1, v4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    const/4 v4, 0x5

    aput-object v3, v1, v4

    const/4 v4, 0x6

    aput-object v3, v1, v4

    const/4 v4, 0x7

    aput-object v3, v1, v4

    const/16 v4, 0x8

    aput-object v3, v1, v4

    sget-object v3, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/16 v4, 0x9

    aput-object v3, v1, v4

    const/16 v4, 0xa

    aput-object v3, v1, v4

    const/16 v4, 0xb

    aput-object v3, v1, v4

    sget-object v3, Lorg/ton/block/ShardIdent$$serializer;->INSTANCE:Lorg/ton/block/ShardIdent$$serializer;

    const/16 v4, 0xc

    aput-object v3, v1, v4

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v3, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    const/16 v4, 0xe

    aput-object v3, v1, v4

    const/16 v4, 0xf

    aput-object v3, v1, v4

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lorg/ton/block/GlobalVersion$$serializer;->INSTANCE:Lorg/ton/block/GlobalVersion$$serializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const/16 v2, 0x15

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/16 v2, 0x17

    aget-object v0, v0, v2

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/ton/block/BlockInfo$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/block/BlockInfo;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/block/BlockInfo;
    .locals 52

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lorg/ton/block/BlockInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lorg/ton/block/BlockInfo;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x3

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    invoke-interface {v0, v1, v9, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v7

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v15

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v14

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v13

    invoke-interface {v0, v1, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v12

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v11

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v10

    const/16 v8, 0xb

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v8

    move/from16 v24, v4

    sget-object v4, Lorg/ton/block/ShardIdent$$serializer;->INSTANCE:Lorg/ton/block/ShardIdent$$serializer;

    move/from16 v26, v5

    move-object/from16 v23, v9

    const/16 v5, 0xc

    const/4 v9, 0x0

    invoke-interface {v0, v1, v5, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0xd

    invoke-interface {v0, v1, v5, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v4

    sget-object v4, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    move-object/from16 v25, v5

    const/16 v5, 0xe

    invoke-interface {v0, v1, v5, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    const/16 v5, 0xf

    invoke-interface {v0, v1, v5, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x10

    invoke-interface {v0, v1, v5, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v4

    const/16 v4, 0x11

    invoke-interface {v0, v1, v4, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 p1, v4

    const/16 v4, 0x12

    invoke-interface {v0, v1, v4, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    const/16 v4, 0x13

    invoke-interface {v0, v1, v4, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x14

    move-object/from16 v27, v3

    sget-object v3, Lorg/ton/block/GlobalVersion$$serializer;->INSTANCE:Lorg/ton/block/GlobalVersion$$serializer;

    invoke-interface {v0, v1, v4, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    const/16 v4, 0x15

    aget-object v3, v2, v4

    invoke-interface {v0, v1, v4, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    const/16 v4, 0x16

    aget-object v3, v2, v4

    invoke-interface {v0, v1, v4, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x17

    aget-object v2, v2, v4

    invoke-interface {v0, v1, v4, v2, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const v4, 0xffffff

    move/from16 v36, v8

    move/from16 v35, v10

    move/from16 v34, v11

    move/from16 v32, v12

    move/from16 v31, v13

    move/from16 v30, v14

    move/from16 v28, v15

    move-object/from16 v15, v18

    move-object/from16 v9, v23

    move/from16 v33, v24

    move/from16 v29, v26

    move-object/from16 v13, p1

    move/from16 v24, v4

    move-object v14, v5

    move/from16 v26, v7

    move-object/from16 v4, v19

    move-object/from16 v5, v25

    move-object v7, v3

    move-object/from16 v3, v27

    move/from16 v27, v6

    goto/16 :goto_8

    :cond_0
    const/16 v3, 0x17

    move/from16 v51, v9

    move-object v9, v8

    move/from16 v8, v51

    move/from16 v48, v7

    move/from16 v20, v8

    move/from16 v25, v20

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v29, v27

    move/from16 v42, v29

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v45, v44

    move/from16 v46, v45

    move/from16 v47, v46

    move-object v4, v9

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v10, v7

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v40, v15

    move-object/from16 v41, v40

    move-object/from16 v8, v41

    move/from16 v9, v47

    :goto_0
    if-eqz v48, :cond_1

    move-object/from16 v49, v8

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v8}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    aget-object v8, v2, v3

    move-object/from16 v50, v7

    move-object/from16 v7, v41

    invoke-interface {v0, v1, v3, v8, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    const/high16 v7, 0x800000

    or-int/2addr v9, v7

    move-object/from16 v8, v49

    move-object/from16 v7, v50

    goto :goto_0

    :pswitch_1
    move-object/from16 v50, v7

    move-object/from16 v7, v41

    const/16 v8, 0x16

    aget-object v3, v2, v8

    move-object/from16 v7, v40

    invoke-interface {v0, v1, v8, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    const/high16 v3, 0x400000

    goto :goto_1

    :pswitch_2
    move-object/from16 v50, v7

    move-object/from16 v7, v40

    const/16 v3, 0x15

    aget-object v8, v2, v3

    invoke-interface {v0, v1, v3, v8, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/high16 v8, 0x200000

    or-int/2addr v9, v8

    goto/16 :goto_4

    :pswitch_3
    move-object/from16 v50, v7

    move-object/from16 v7, v40

    const/16 v3, 0x15

    const/16 v8, 0x14

    sget-object v3, Lorg/ton/block/GlobalVersion$$serializer;->INSTANCE:Lorg/ton/block/GlobalVersion$$serializer;

    invoke-interface {v0, v1, v8, v3, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/high16 v3, 0x100000

    goto :goto_1

    :pswitch_4
    move-object/from16 v50, v7

    move-object/from16 v7, v40

    const/16 v3, 0x13

    sget-object v8, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    invoke-interface {v0, v1, v3, v8, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/high16 v3, 0x80000

    goto :goto_1

    :pswitch_5
    move-object/from16 v50, v7

    move-object/from16 v7, v40

    const/16 v3, 0x12

    sget-object v8, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    invoke-interface {v0, v1, v3, v8, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/high16 v3, 0x40000

    goto :goto_1

    :pswitch_6
    move-object/from16 v50, v7

    move-object/from16 v7, v40

    sget-object v3, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    const/16 v8, 0x11

    invoke-interface {v0, v1, v8, v3, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/high16 v3, 0x20000

    :goto_1
    or-int/2addr v9, v3

    goto :goto_4

    :pswitch_7
    move-object/from16 v50, v7

    move-object/from16 v7, v40

    const/16 v8, 0x11

    sget-object v3, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    move-object/from16 p1, v2

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2, v3, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const/high16 v3, 0x10000

    goto :goto_2

    :pswitch_8
    move-object/from16 p1, v2

    move-object/from16 v50, v7

    move-object/from16 v7, v40

    const/16 v2, 0x10

    const/16 v8, 0x11

    sget-object v3, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const v3, 0x8000

    :goto_2
    or-int/2addr v9, v3

    goto :goto_3

    :pswitch_9
    move-object/from16 p1, v2

    move-object/from16 v50, v7

    move-object/from16 v7, v40

    const/16 v2, 0xf

    const/16 v8, 0x11

    sget-object v3, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v3, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    or-int/lit16 v9, v9, 0x4000

    goto :goto_3

    :pswitch_a
    move-object/from16 p1, v2

    move-object/from16 v50, v7

    move-object/from16 v7, v40

    const/16 v2, 0xe

    const/16 v8, 0x11

    sget-object v3, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2, v3, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    or-int/lit16 v9, v9, 0x2000

    :goto_3
    move-object/from16 v2, p1

    :goto_4
    move-object/from16 v8, v49

    move-object/from16 v7, v50

    const/16 v3, 0x17

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 p1, v2

    move-object/from16 v50, v7

    move-object/from16 v7, v40

    const/16 v2, 0xd

    const/16 v8, 0x11

    sget-object v3, Lorg/ton/block/ShardIdent$$serializer;->INSTANCE:Lorg/ton/block/ShardIdent$$serializer;

    move-object/from16 v23, v4

    move-object/from16 v2, v50

    const/16 v4, 0xc

    invoke-interface {v0, v1, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit16 v9, v9, 0x1000

    goto/16 :goto_5

    :pswitch_c
    move-object/from16 p1, v2

    move-object/from16 v23, v4

    move-object v2, v7

    move-object/from16 v7, v40

    const/16 v3, 0xb

    const/16 v4, 0xc

    const/16 v8, 0x11

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v29

    or-int/lit16 v9, v9, 0x800

    goto/16 :goto_5

    :pswitch_d
    move-object/from16 p1, v2

    move-object/from16 v23, v4

    move-object v2, v7

    move-object/from16 v7, v40

    const/16 v3, 0xa

    const/16 v4, 0xc

    const/16 v8, 0x11

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v42

    or-int/lit16 v9, v9, 0x400

    goto/16 :goto_5

    :pswitch_e
    move-object/from16 p1, v2

    move-object/from16 v23, v4

    move-object v2, v7

    move-object/from16 v7, v40

    const/16 v3, 0x9

    const/16 v4, 0xc

    const/16 v8, 0x11

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v43

    or-int/lit16 v9, v9, 0x200

    goto/16 :goto_5

    :pswitch_f
    move-object/from16 p1, v2

    move-object/from16 v23, v4

    move-object v2, v7

    move-object/from16 v7, v40

    const/16 v3, 0x8

    const/16 v4, 0xc

    const/16 v8, 0x11

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v20

    or-int/lit16 v9, v9, 0x100

    goto/16 :goto_5

    :pswitch_10
    move-object/from16 p1, v2

    move-object/from16 v23, v4

    move-object v2, v7

    move-object/from16 v7, v40

    const/4 v3, 0x7

    const/16 v4, 0xc

    const/16 v8, 0x11

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v44

    or-int/lit16 v9, v9, 0x80

    goto/16 :goto_5

    :pswitch_11
    move-object/from16 p1, v2

    move-object/from16 v23, v4

    move-object v2, v7

    move-object/from16 v7, v40

    const/4 v3, 0x6

    const/16 v4, 0xc

    const/16 v8, 0x11

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v45

    or-int/lit8 v9, v9, 0x40

    goto/16 :goto_5

    :pswitch_12
    move-object/from16 p1, v2

    move-object/from16 v23, v4

    move-object v2, v7

    move-object/from16 v7, v40

    const/4 v3, 0x5

    const/16 v4, 0xc

    const/16 v8, 0x11

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v46

    or-int/lit8 v9, v9, 0x20

    goto :goto_5

    :pswitch_13
    move-object/from16 p1, v2

    move-object/from16 v23, v4

    move-object v2, v7

    move-object/from16 v7, v40

    const/4 v3, 0x4

    const/16 v4, 0xc

    const/16 v8, 0x11

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v25

    or-int/lit8 v9, v9, 0x10

    goto :goto_5

    :pswitch_14
    move-object/from16 p1, v2

    move-object/from16 v23, v4

    move-object v2, v7

    move-object/from16 v7, v40

    const/4 v3, 0x3

    const/16 v4, 0xc

    const/16 v8, 0x11

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v47

    or-int/lit8 v9, v9, 0x8

    goto :goto_5

    :pswitch_15
    move-object/from16 p1, v2

    move-object/from16 v23, v4

    move-object v2, v7

    move-object/from16 v7, v40

    const/4 v3, 0x2

    const/16 v4, 0xc

    const/16 v8, 0x11

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v26

    or-int/lit8 v9, v9, 0x4

    goto :goto_5

    :pswitch_16
    move-object/from16 p1, v2

    move-object/from16 v23, v4

    move-object v2, v7

    move-object/from16 v7, v40

    const/4 v3, 0x1

    const/16 v4, 0xc

    const/16 v8, 0x11

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v27

    or-int/lit8 v9, v9, 0x2

    :goto_5
    move-object/from16 v4, v23

    move-object/from16 v8, v49

    goto :goto_6

    :pswitch_17
    move-object/from16 p1, v2

    move-object/from16 v23, v4

    move-object v2, v7

    move-object/from16 v7, v40

    const/16 v4, 0xc

    const/16 v8, 0x11

    sget-object v3, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    move-object/from16 v4, v49

    const/4 v8, 0x0

    invoke-interface {v0, v1, v8, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    or-int/lit8 v9, v9, 0x1

    move-object v8, v3

    move-object/from16 v4, v23

    :goto_6
    const/16 v3, 0x17

    move-object v7, v2

    goto :goto_7

    :pswitch_18
    move-object/from16 p1, v2

    move-object/from16 v23, v4

    move-object v2, v7

    move-object/from16 v7, v40

    move-object/from16 v4, v49

    const/4 v8, 0x0

    move/from16 v48, v8

    move-object v7, v2

    move-object v8, v4

    move-object/from16 v4, v23

    :goto_7
    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_1
    move-object/from16 v23, v4

    move-object v2, v7

    move-object v4, v8

    move-object/from16 v7, v40

    move-object/from16 v16, v5

    move-object v5, v6

    move/from16 v24, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v17, v12

    move/from16 v33, v20

    move-object/from16 v3, v23

    move/from16 v36, v29

    move/from16 v35, v42

    move/from16 v34, v43

    move/from16 v32, v44

    move/from16 v31, v45

    move/from16 v30, v46

    move/from16 v28, v47

    move-object v9, v4

    move/from16 v29, v25

    move-object v4, v2

    move-object/from16 v2, v41

    move/from16 v51, v27

    move/from16 v27, v26

    move/from16 v26, v51

    :goto_8
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lorg/ton/block/BlockInfo;

    move-object/from16 v23, v0

    move-object/from16 v25, v9

    check-cast v25, Lkotlin/UInt;

    move-object/from16 v37, v4

    check-cast v37, Lorg/ton/block/ShardIdent;

    move-object/from16 v38, v5

    check-cast v38, Lkotlin/UInt;

    move-object/from16 v39, v15

    check-cast v39, Lkotlin/ULong;

    move-object/from16 v40, v16

    check-cast v40, Lkotlin/ULong;

    move-object/from16 v41, v14

    check-cast v41, Lkotlin/UInt;

    move-object/from16 v42, v13

    check-cast v42, Lkotlin/UInt;

    move-object/from16 v43, v17

    check-cast v43, Lkotlin/UInt;

    move-object/from16 v44, v3

    check-cast v44, Lkotlin/UInt;

    move-object/from16 v45, v22

    check-cast v45, Lorg/ton/block/GlobalVersion;

    move-object/from16 v46, v21

    check-cast v46, Lorg/ton/tlb/CellRef;

    move-object/from16 v47, v7

    check-cast v47, Lorg/ton/tlb/CellRef;

    move-object/from16 v48, v2

    check-cast v48, Lorg/ton/tlb/CellRef;

    const/16 v49, 0x0

    const/16 v50, 0x0

    invoke-direct/range {v23 .. v50}, Lorg/ton/block/BlockInfo;-><init>(ILkotlin/UInt;ZZZZZZZZIIILorg/ton/block/ShardIdent;Lkotlin/UInt;Lkotlin/ULong;Lkotlin/ULong;Lkotlin/UInt;Lkotlin/UInt;Lkotlin/UInt;Lkotlin/UInt;Lorg/ton/block/GlobalVersion;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

    .line 10
    sget-object v0, Lorg/ton/block/BlockInfo$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lorg/ton/block/BlockInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/BlockInfo$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/block/BlockInfo;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/block/BlockInfo;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lorg/ton/block/BlockInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lorg/ton/block/BlockInfo;->write$Self(Lorg/ton/block/BlockInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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

    .line 10
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
