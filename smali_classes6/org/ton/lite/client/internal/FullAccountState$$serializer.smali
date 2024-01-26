.class public final Lorg/ton/lite/client/internal/FullAccountState$$serializer;
.super Ljava/lang/Object;
.source "BlockHeaderResult.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/lite/client/internal/FullAccountState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lorg/ton/lite/client/internal/FullAccountState;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/lite/client/internal/FullAccountState$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/lite/client/internal/FullAccountState$$serializer;

    invoke-direct {v0}, Lorg/ton/lite/client/internal/FullAccountState$$serializer;-><init>()V

    sput-object v0, Lorg/ton/lite/client/internal/FullAccountState$$serializer;->INSTANCE:Lorg/ton/lite/client/internal/FullAccountState$$serializer;

    .line 20
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "org.ton.lite.client.internal.FullAccountState"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "block_id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "address"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "last_transaction_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "account"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lorg/ton/lite/client/internal/FullAccountState$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
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

    .line 20
    invoke-static {}, Lorg/ton/lite/client/internal/FullAccountState;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/ton/block/AddrStd$$serializer;->INSTANCE:Lorg/ton/block/AddrStd$$serializer;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lorg/ton/lite/client/internal/TransactionId$$serializer;->INSTANCE:Lorg/ton/lite/client/internal/TransactionId$$serializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    return-object v1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lorg/ton/lite/client/internal/FullAccountState$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/lite/client/internal/FullAccountState;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/lite/client/internal/FullAccountState;
    .locals 14

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lorg/ton/lite/client/internal/FullAccountState$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    invoke-static {}, Lorg/ton/lite/client/internal/FullAccountState;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-interface {p1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    invoke-interface {p1, v0, v5, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lorg/ton/block/AddrStd$$serializer;->INSTANCE:Lorg/ton/block/AddrStd$$serializer;

    invoke-interface {p1, v0, v7, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lorg/ton/lite/client/internal/TransactionId$$serializer;->INSTANCE:Lorg/ton/lite/client/internal/TransactionId$$serializer;

    invoke-interface {p1, v0, v3, v7, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aget-object v1, v1, v6

    invoke-interface {p1, v0, v6, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0xf

    move-object v8, v5

    move v5, v4

    goto :goto_1

    :cond_0
    move-object v2, v4

    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    move v4, v5

    move v11, v7

    :goto_0
    if-eqz v11, :cond_6

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    if-eqz v12, :cond_4

    if-eq v12, v7, :cond_3

    if-eq v12, v3, :cond_2

    if-ne v12, v6, :cond_1

    aget-object v12, v1, v6

    invoke-interface {p1, v0, v6, v12, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    or-int/lit8 v4, v4, 0x8

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v12}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p1

    :cond_2
    sget-object v12, Lorg/ton/lite/client/internal/TransactionId$$serializer;->INSTANCE:Lorg/ton/lite/client/internal/TransactionId$$serializer;

    invoke-interface {p1, v0, v3, v12, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    or-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_3
    sget-object v12, Lorg/ton/block/AddrStd$$serializer;->INSTANCE:Lorg/ton/block/AddrStd$$serializer;

    invoke-interface {p1, v0, v7, v12, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    or-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_4
    sget-object v12, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    invoke-interface {p1, v0, v5, v12, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move v11, v5

    goto :goto_0

    :cond_6
    move v5, v4

    move-object v3, v9

    move-object v1, v10

    :goto_1
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance p1, Lorg/ton/lite/client/internal/FullAccountState;

    move-object v6, v2

    check-cast v6, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-object v7, v8

    check-cast v7, Lorg/ton/block/AddrStd;

    move-object v8, v3

    check-cast v8, Lorg/ton/lite/client/internal/TransactionId;

    move-object v9, v1

    check-cast v9, Lorg/ton/tlb/CellRef;

    const/4 v10, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lorg/ton/lite/client/internal/FullAccountState;-><init>(ILorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/block/AddrStd;Lorg/ton/lite/client/internal/TransactionId;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 20
    sget-object v0, Lorg/ton/lite/client/internal/FullAccountState$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lorg/ton/lite/client/internal/FullAccountState;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/client/internal/FullAccountState$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/lite/client/internal/FullAccountState;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/lite/client/internal/FullAccountState;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lorg/ton/lite/client/internal/FullAccountState$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lorg/ton/lite/client/internal/FullAccountState;->write$Self(Lorg/ton/lite/client/internal/FullAccountState;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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

    .line 20
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
