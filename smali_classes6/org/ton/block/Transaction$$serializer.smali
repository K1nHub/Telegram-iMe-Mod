.class public final Lorg/ton/block/Transaction$$serializer;
.super Ljava/lang/Object;
.source "Transaction.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lorg/ton/block/Transaction;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/Transaction$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/Transaction$$serializer;

    invoke-direct {v0}, Lorg/ton/block/Transaction$$serializer;-><init>()V

    sput-object v0, Lorg/ton/block/Transaction$$serializer;->INSTANCE:Lorg/ton/block/Transaction$$serializer;

    .line 16
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "transaction"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "account_addr"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "lt"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "prev_trans_hash"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "prev_trans_lt"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "now"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "outmsg_cnt"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "orig_status"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "end_status"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "r1"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "total_fees"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "state_update"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "description"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lorg/ton/block/Transaction$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
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

    .line 16
    invoke-static {}, Lorg/ton/block/Transaction;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v3, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    sget-object v2, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const/16 v2, 0xa

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    return-object v1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lorg/ton/block/Transaction$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/block/Transaction;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/block/Transaction;
    .locals 27

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lorg/ton/block/Transaction$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lorg/ton/block/Transaction;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/16 v4, 0x9

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x1

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    invoke-interface {v0, v1, v15, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    sget-object v10, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    invoke-interface {v0, v1, v13, v10, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v0, v1, v8, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v6, v10, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    invoke-interface {v0, v1, v7, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v5

    aget-object v8, v2, v12

    invoke-interface {v0, v1, v12, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aget-object v10, v2, v11

    invoke-interface {v0, v1, v11, v10, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aget-object v11, v2, v14

    invoke-interface {v0, v1, v14, v11, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    invoke-interface {v0, v1, v4, v12, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v12, 0xa

    aget-object v14, v2, v12

    invoke-interface {v0, v1, v12, v14, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/16 v14, 0xb

    aget-object v2, v2, v14

    invoke-interface {v0, v1, v14, v2, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v9, 0xfff

    move-object/from16 v22, v12

    move v12, v5

    move-object v5, v6

    move v6, v9

    goto/16 :goto_5

    :cond_0
    const/16 v3, 0xb

    move-object v4, v9

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v11, v8

    move-object v12, v11

    move-object v14, v12

    move-object/from16 v22, v14

    move/from16 v23, v13

    move v10, v15

    move-object/from16 v13, v22

    move v9, v10

    move-object v15, v13

    :goto_0
    move/from16 v24, v9

    if-eqz v23, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v9}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    aget-object v9, v2, v3

    move-object/from16 v25, v15

    move-object/from16 v15, v22

    invoke-interface {v0, v1, v3, v9, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    or-int/lit16 v10, v10, 0x800

    move/from16 v9, v24

    goto/16 :goto_3

    :pswitch_1
    move-object/from16 v25, v15

    move-object/from16 v15, v22

    const/16 v9, 0xa

    aget-object v3, v2, v9

    invoke-interface {v0, v1, v9, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    or-int/lit16 v10, v10, 0x400

    move/from16 v9, v24

    move-object/from16 v15, v25

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v25, v15

    move-object/from16 v15, v22

    const/16 v9, 0xa

    sget-object v3, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    move-object/from16 v22, v4

    const/16 v4, 0x9

    invoke-interface {v0, v1, v4, v3, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/lit16 v10, v10, 0x200

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v25, v15

    move-object/from16 v15, v22

    const/16 v3, 0x8

    const/16 v9, 0xa

    move-object/from16 v22, v4

    aget-object v4, v2, v3

    invoke-interface {v0, v1, v3, v4, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit16 v10, v10, 0x100

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v25, v15

    move-object/from16 v15, v22

    const/16 v9, 0xa

    move-object/from16 v22, v4

    const/4 v4, 0x7

    aget-object v3, v2, v4

    invoke-interface {v0, v1, v4, v3, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    or-int/lit16 v10, v10, 0x80

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v25, v15

    move-object/from16 v15, v22

    const/4 v3, 0x6

    const/16 v9, 0xa

    move-object/from16 v22, v4

    aget-object v4, v2, v3

    invoke-interface {v0, v1, v3, v4, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    or-int/lit8 v10, v10, 0x40

    goto :goto_1

    :pswitch_6
    move-object/from16 v25, v15

    move-object/from16 v15, v22

    const/4 v3, 0x6

    const/16 v9, 0xa

    move-object/from16 v22, v4

    const/4 v4, 0x5

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v21

    or-int/lit8 v10, v10, 0x20

    move/from16 v9, v21

    move-object/from16 v4, v22

    goto :goto_2

    :pswitch_7
    move-object/from16 v25, v15

    move-object/from16 v15, v22

    const/16 v9, 0xa

    move-object/from16 v22, v4

    const/4 v4, 0x5

    sget-object v3, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    const/4 v4, 0x4

    invoke-interface {v0, v1, v4, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    or-int/lit8 v10, v10, 0x10

    goto :goto_1

    :pswitch_8
    move-object/from16 v25, v15

    move-object/from16 v15, v22

    const/16 v9, 0xa

    move-object/from16 v22, v4

    const/4 v4, 0x4

    sget-object v3, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4, v3, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    or-int/lit8 v10, v10, 0x8

    goto :goto_1

    :pswitch_9
    move-object/from16 v25, v15

    move-object/from16 v15, v22

    const/16 v9, 0xa

    move-object/from16 v22, v4

    const/4 v4, 0x3

    sget-object v3, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    const/4 v4, 0x2

    invoke-interface {v0, v1, v4, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    or-int/lit8 v10, v10, 0x4

    goto :goto_1

    :pswitch_a
    move-object/from16 v25, v15

    move-object/from16 v15, v22

    const/16 v9, 0xa

    move-object/from16 v22, v4

    const/4 v4, 0x2

    sget-object v3, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    const/4 v4, 0x1

    invoke-interface {v0, v1, v4, v3, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    or-int/lit8 v10, v10, 0x2

    :goto_1
    move-object/from16 v4, v22

    move/from16 v9, v24

    :goto_2
    const/16 v3, 0xb

    move-object/from16 v22, v15

    :goto_3
    move-object/from16 v15, v25

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v25, v15

    move-object/from16 v15, v22

    const/16 v9, 0xa

    move-object/from16 v22, v4

    const/4 v4, 0x1

    sget-object v3, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    move-object/from16 v4, v25

    const/4 v9, 0x0

    invoke-interface {v0, v1, v9, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    or-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v22

    move/from16 v9, v24

    move-object/from16 v22, v15

    move-object v15, v3

    :goto_4
    const/16 v3, 0xb

    goto/16 :goto_0

    :pswitch_c
    const/4 v9, 0x0

    move-object/from16 v26, v22

    move-object/from16 v22, v4

    move-object v4, v15

    move-object/from16 v15, v26

    move/from16 v23, v9

    move/from16 v9, v24

    move-object v15, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v26

    goto/16 :goto_0

    :cond_1
    move-object/from16 v26, v22

    move-object/from16 v22, v4

    move-object v4, v15

    move-object/from16 v15, v26

    move-object v3, v8

    move-object v2, v15

    move-object v15, v4

    move-object v8, v5

    move-object v5, v6

    move v6, v10

    move-object v10, v12

    move-object v4, v14

    move/from16 v12, v24

    :goto_5
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lorg/ton/block/Transaction;

    move-object v1, v15

    check-cast v1, Lorg/ton/bitstring/BitString;

    move-object v9, v13

    check-cast v9, Lkotlin/ULong;

    check-cast v3, Lorg/ton/bitstring/BitString;

    move-object v13, v5

    check-cast v13, Lkotlin/ULong;

    move-object v14, v7

    check-cast v14, Lkotlin/UInt;

    move-object v15, v8

    check-cast v15, Lorg/ton/block/AccountStatus;

    move-object/from16 v16, v10

    check-cast v16, Lorg/ton/block/AccountStatus;

    move-object/from16 v17, v11

    check-cast v17, Lorg/ton/tlb/CellRef;

    check-cast v4, Lorg/ton/block/CurrencyCollection;

    move-object/from16 v18, v22

    check-cast v18, Lorg/ton/tlb/CellRef;

    check-cast v2, Lorg/ton/tlb/CellRef;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v5, v0

    move-object v7, v1

    move-object v8, v9

    move-object v9, v3

    move-object v10, v13

    move-object v11, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v4

    move-object/from16 v17, v18

    move-object/from16 v18, v2

    invoke-direct/range {v5 .. v20}, Lorg/ton/block/Transaction;-><init>(ILorg/ton/bitstring/BitString;Lkotlin/ULong;Lorg/ton/bitstring/BitString;Lkotlin/ULong;Lkotlin/UInt;ILorg/ton/block/AccountStatus;Lorg/ton/block/AccountStatus;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 16
    sget-object v0, Lorg/ton/block/Transaction$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lorg/ton/block/Transaction;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/Transaction$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/block/Transaction;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/block/Transaction;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lorg/ton/block/Transaction$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lorg/ton/block/Transaction;->write$Self(Lorg/ton/block/Transaction;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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

    .line 16
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
