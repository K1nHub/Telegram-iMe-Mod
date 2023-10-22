.class public final Lorg/ton/block/IntMsgInfo;
.super Ljava/lang/Object;
.source "IntMsgInfo.kt"

# interfaces
.implements Lorg/ton/block/CommonMsgInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/IntMsgInfo$$serializer;,
        Lorg/ton/block/IntMsgInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntMsgInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntMsgInfo.kt\norg/ton/block/IntMsgInfo\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,84:1\n86#2,2:85\n82#2,3:87\n88#2:90\n*S KotlinDebug\n*F\n+ 1 IntMsgInfo.kt\norg/ton/block/IntMsgInfo\n*L\n28#1:85,2\n29#1:87,3\n28#1:90\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/ton/block/IntMsgInfo$Companion;


# instance fields
.field private final bounce:Z

.field private final bounced:Z

.field private final created_at:I

.field private final created_lt:J

.field private final dest:Lorg/ton/block/MsgAddressInt;

.field private final fwd_fee:Lorg/ton/block/Coins;

.field private final ihrDisabled:Z

.field private final ihr_fee:Lorg/ton/block/Coins;

.field private final src:Lorg/ton/block/MsgAddressInt;

.field private final value:Lorg/ton/block/CurrencyCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const-class v0, Lorg/ton/block/AddrVar;

    const-class v1, Lorg/ton/block/AddrStd;

    const-class v2, Lorg/ton/block/MsgAddressInt;

    new-instance v3, Lorg/ton/block/IntMsgInfo$Companion;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/ton/block/IntMsgInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lorg/ton/block/IntMsgInfo;->Companion:Lorg/ton/block/IntMsgInfo$Companion;

    const/16 v3, 0xa

    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 45
    new-instance v14, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v11, v7, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    aput-object v8, v11, v5

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    aput-object v8, v11, v6

    new-array v12, v7, [Lkotlinx/serialization/KSerializer;

    sget-object v15, Lorg/ton/block/AddrStd$$serializer;->INSTANCE:Lorg/ton/block/AddrStd$$serializer;

    aput-object v15, v12, v5

    sget-object v16, Lorg/ton/block/AddrVar$$serializer;->INSTANCE:Lorg/ton/block/AddrVar$$serializer;

    aput-object v16, v12, v6

    new-array v13, v6, [Ljava/lang/annotation/Annotation;

    .line 17
    new-instance v8, Lorg/ton/block/IntMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v9, "@type"

    invoke-direct {v8, v9}, Lorg/ton/block/IntMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v8, v13, v5

    const-string v17, "org.ton.block.MsgAddressInt"

    move-object v8, v14

    move-object v4, v9

    move-object/from16 v9, v17

    invoke-direct/range {v8 .. v13}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v8, 0x3

    aput-object v14, v3, v8

    .line 45
    new-instance v8, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v20

    new-array v2, v7, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    aput-object v0, v2, v6

    new-array v0, v7, [Lkotlinx/serialization/KSerializer;

    aput-object v15, v0, v5

    aput-object v16, v0, v6

    new-array v1, v6, [Ljava/lang/annotation/Annotation;

    .line 17
    new-instance v6, Lorg/ton/block/IntMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v6, v4}, Lorg/ton/block/IntMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v6, v1, v5

    const-string v19, "org.ton.block.MsgAddressInt"

    move-object/from16 v18, v8

    move-object/from16 v21, v2

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    invoke-direct/range {v18 .. v23}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput-object v1, v3, v0

    const/4 v0, 0x6

    aput-object v1, v3, v0

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const/16 v0, 0x8

    aput-object v1, v3, v0

    const/16 v0, 0x9

    aput-object v1, v3, v0

    .line 45
    sput-object v3, Lorg/ton/block/IntMsgInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(IZZZLorg/ton/block/MsgAddressInt;Lorg/ton/block/MsgAddressInt;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/Coins;Lorg/ton/block/Coins;JILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit16 p13, p1, 0x3ff

    const/16 v0, 0x3ff

    if-eq v0, p13, :cond_0

    .line 14
    sget-object p13, Lorg/ton/block/IntMsgInfo$$serializer;->INSTANCE:Lorg/ton/block/IntMsgInfo$$serializer;

    invoke-virtual {p13}, Lorg/ton/block/IntMsgInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p13

    invoke-static {p1, v0, p13}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/ton/block/IntMsgInfo;->ihrDisabled:Z

    iput-boolean p3, p0, Lorg/ton/block/IntMsgInfo;->bounce:Z

    iput-boolean p4, p0, Lorg/ton/block/IntMsgInfo;->bounced:Z

    iput-object p5, p0, Lorg/ton/block/IntMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    iput-object p6, p0, Lorg/ton/block/IntMsgInfo;->dest:Lorg/ton/block/MsgAddressInt;

    iput-object p7, p0, Lorg/ton/block/IntMsgInfo;->value:Lorg/ton/block/CurrencyCollection;

    iput-object p8, p0, Lorg/ton/block/IntMsgInfo;->ihr_fee:Lorg/ton/block/Coins;

    iput-object p9, p0, Lorg/ton/block/IntMsgInfo;->fwd_fee:Lorg/ton/block/Coins;

    iput-wide p10, p0, Lorg/ton/block/IntMsgInfo;->created_lt:J

    iput p12, p0, Lorg/ton/block/IntMsgInfo;->created_at:I

    return-void
.end method

.method public constructor <init>(ZZZLorg/ton/block/MsgAddressInt;Lorg/ton/block/MsgAddressInt;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/Coins;Lorg/ton/block/Coins;JI)V
    .locals 1

    const-string v0, "src"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dest"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ihr_fee"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fwd_fee"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lorg/ton/block/IntMsgInfo;->ihrDisabled:Z

    .line 18
    iput-boolean p2, p0, Lorg/ton/block/IntMsgInfo;->bounce:Z

    .line 19
    iput-boolean p3, p0, Lorg/ton/block/IntMsgInfo;->bounced:Z

    .line 20
    iput-object p4, p0, Lorg/ton/block/IntMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    .line 21
    iput-object p5, p0, Lorg/ton/block/IntMsgInfo;->dest:Lorg/ton/block/MsgAddressInt;

    .line 22
    iput-object p6, p0, Lorg/ton/block/IntMsgInfo;->value:Lorg/ton/block/CurrencyCollection;

    .line 23
    iput-object p7, p0, Lorg/ton/block/IntMsgInfo;->ihr_fee:Lorg/ton/block/Coins;

    .line 24
    iput-object p8, p0, Lorg/ton/block/IntMsgInfo;->fwd_fee:Lorg/ton/block/Coins;

    .line 25
    iput-wide p9, p0, Lorg/ton/block/IntMsgInfo;->created_lt:J

    .line 26
    iput p11, p0, Lorg/ton/block/IntMsgInfo;->created_at:I

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 14
    sget-object v0, Lorg/ton/block/IntMsgInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/IntMsgInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 14
    sget-object v0, Lorg/ton/block/IntMsgInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    iget-boolean v1, p0, Lorg/ton/block/IntMsgInfo;->ihrDisabled:Z

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v1, p0, Lorg/ton/block/IntMsgInfo;->bounce:Z

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v1, p0, Lorg/ton/block/IntMsgInfo;->bounced:Z

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v1, 0x3

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/IntMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/block/IntMsgInfo;->dest:Lorg/ton/block/MsgAddressInt;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->value:Lorg/ton/block/CurrencyCollection;

    const/4 v2, 0x5

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/block/Coins$$serializer;->INSTANCE:Lorg/ton/block/Coins$$serializer;

    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->ihr_fee:Lorg/ton/block/Coins;

    const/4 v2, 0x6

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->fwd_fee:Lorg/ton/block/Coins;

    const/4 v2, 0x7

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-wide v0, p0, Lorg/ton/block/IntMsgInfo;->created_lt:J

    const/16 v2, 0x8

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    iget p0, p0, Lorg/ton/block/IntMsgInfo;->created_at:I

    const/16 v0, 0x9

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/IntMsgInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/IntMsgInfo;

    iget-boolean v1, p0, Lorg/ton/block/IntMsgInfo;->ihrDisabled:Z

    iget-boolean v3, p1, Lorg/ton/block/IntMsgInfo;->ihrDisabled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/ton/block/IntMsgInfo;->bounce:Z

    iget-boolean v3, p1, Lorg/ton/block/IntMsgInfo;->bounce:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/ton/block/IntMsgInfo;->bounced:Z

    iget-boolean v3, p1, Lorg/ton/block/IntMsgInfo;->bounced:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    iget-object v3, p1, Lorg/ton/block/IntMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->dest:Lorg/ton/block/MsgAddressInt;

    iget-object v3, p1, Lorg/ton/block/IntMsgInfo;->dest:Lorg/ton/block/MsgAddressInt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->value:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/IntMsgInfo;->value:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->ihr_fee:Lorg/ton/block/Coins;

    iget-object v3, p1, Lorg/ton/block/IntMsgInfo;->ihr_fee:Lorg/ton/block/Coins;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->fwd_fee:Lorg/ton/block/Coins;

    iget-object v3, p1, Lorg/ton/block/IntMsgInfo;->fwd_fee:Lorg/ton/block/Coins;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lorg/ton/block/IntMsgInfo;->created_lt:J

    iget-wide v5, p1, Lorg/ton/block/IntMsgInfo;->created_lt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lorg/ton/block/IntMsgInfo;->created_at:I

    iget p1, p1, Lorg/ton/block/IntMsgInfo;->created_at:I

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getBounce()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lorg/ton/block/IntMsgInfo;->bounce:Z

    return v0
.end method

.method public final getBounced()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lorg/ton/block/IntMsgInfo;->bounced:Z

    return v0
.end method

.method public final getCreated_at()I
    .locals 1

    .line 26
    iget v0, p0, Lorg/ton/block/IntMsgInfo;->created_at:I

    return v0
.end method

.method public final getCreated_lt()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lorg/ton/block/IntMsgInfo;->created_lt:J

    return-wide v0
.end method

.method public final getDest()Lorg/ton/block/MsgAddressInt;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/ton/block/IntMsgInfo;->dest:Lorg/ton/block/MsgAddressInt;

    return-object v0
.end method

.method public final getFwd_fee()Lorg/ton/block/Coins;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/ton/block/IntMsgInfo;->fwd_fee:Lorg/ton/block/Coins;

    return-object v0
.end method

.method public final getIhrDisabled()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lorg/ton/block/IntMsgInfo;->ihrDisabled:Z

    return v0
.end method

.method public final getIhr_fee()Lorg/ton/block/Coins;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/ton/block/IntMsgInfo;->ihr_fee:Lorg/ton/block/Coins;

    return-object v0
.end method

.method public final getSrc()Lorg/ton/block/MsgAddressInt;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/ton/block/IntMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    return-object v0
.end method

.method public final getValue()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/ton/block/IntMsgInfo;->value:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lorg/ton/block/IntMsgInfo;->ihrDisabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/ton/block/IntMsgInfo;->bounce:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/ton/block/IntMsgInfo;->bounced:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->dest:Lorg/ton/block/MsgAddressInt;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->value:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->ihr_fee:Lorg/ton/block/Coins;

    invoke-virtual {v1}, Lorg/ton/block/Coins;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->fwd_fee:Lorg/ton/block/Coins;

    invoke-virtual {v1}, Lorg/ton/block/Coins;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/IntMsgInfo;->created_lt:J

    invoke-static {v1, v2}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/IntMsgInfo;->created_at:I

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "int_msg_info"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 30
    iget-boolean v1, p0, Lorg/ton/block/IntMsgInfo;->ihrDisabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ihr_disabled"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 31
    iget-boolean v1, p0, Lorg/ton/block/IntMsgInfo;->bounce:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "bounce"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 32
    iget-boolean v1, p0, Lorg/ton/block/IntMsgInfo;->bounced:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "bounced"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 33
    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    const-string v2, "src"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 34
    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->dest:Lorg/ton/block/MsgAddressInt;

    const-string v2, "dest"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 35
    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->value:Lorg/ton/block/CurrencyCollection;

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 36
    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->ihr_fee:Lorg/ton/block/Coins;

    const-string v2, "ihr_fee"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 37
    iget-object v1, p0, Lorg/ton/block/IntMsgInfo;->fwd_fee:Lorg/ton/block/Coins;

    const-string v2, "fwd_fee"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 38
    iget-wide v1, p0, Lorg/ton/block/IntMsgInfo;->created_lt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "created_lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 39
    iget v1, p0, Lorg/ton/block/IntMsgInfo;->created_at:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "created_at"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
