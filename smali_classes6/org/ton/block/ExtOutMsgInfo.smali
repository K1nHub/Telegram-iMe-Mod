.class public final Lorg/ton/block/ExtOutMsgInfo;
.super Ljava/lang/Object;
.source "ExtOutMsgInfo.kt"

# interfaces
.implements Lorg/ton/block/CommonMsgInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ExtOutMsgInfo$$serializer;,
        Lorg/ton/block/ExtOutMsgInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtOutMsgInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtOutMsgInfo.kt\norg/ton/block/ExtOutMsgInfo\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,58:1\n86#2,2:59\n82#2,3:61\n88#2:64\n*S KotlinDebug\n*F\n+ 1 ExtOutMsgInfo.kt\norg/ton/block/ExtOutMsgInfo\n*L\n22#1:59,2\n23#1:61,3\n22#1:64\n*E\n"
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

.field public static final Companion:Lorg/ton/block/ExtOutMsgInfo$Companion;


# instance fields
.field private final createdAt:I

.field private final createdLt:J

.field private final dest:Lorg/ton/block/MsgAddressExt;

.field private final src:Lorg/ton/block/MsgAddressInt;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lorg/ton/block/ExtOutMsgInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/ExtOutMsgInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/ExtOutMsgInfo;->Companion:Lorg/ton/block/ExtOutMsgInfo$Companion;

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 33
    new-instance v8, Lkotlinx/serialization/SealedClassSerializer;

    const-class v2, Lorg/ton/block/MsgAddressInt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v9, 0x2

    new-array v5, v9, [Lkotlin/reflect/KClass;

    const-class v2, Lorg/ton/block/AddrStd;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v5, v10

    const-class v2, Lorg/ton/block/AddrVar;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v11, 0x1

    aput-object v2, v5, v11

    new-array v6, v9, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lorg/ton/block/AddrStd$$serializer;->INSTANCE:Lorg/ton/block/AddrStd$$serializer;

    aput-object v2, v6, v10

    sget-object v2, Lorg/ton/block/AddrVar$$serializer;->INSTANCE:Lorg/ton/block/AddrVar$$serializer;

    aput-object v2, v6, v11

    new-array v7, v11, [Ljava/lang/annotation/Annotation;

    .line 18
    new-instance v2, Lorg/ton/block/ExtOutMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v12, "@type"

    invoke-direct {v2, v12}, Lorg/ton/block/ExtOutMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v2, v7, v10

    const-string v3, "org.ton.block.MsgAddressInt"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v8, v0, v10

    .line 33
    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lorg/ton/block/MsgAddressExt;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    new-array v3, v9, [Lkotlin/reflect/KClass;

    const-class v4, Lorg/ton/block/AddrExtern;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    aput-object v4, v3, v10

    const-class v4, Lorg/ton/block/AddrNone;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    aput-object v4, v3, v11

    new-array v4, v9, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lorg/ton/block/AddrExtern$$serializer;->INSTANCE:Lorg/ton/block/AddrExtern$$serializer;

    aput-object v5, v4, v10

    new-instance v5, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lorg/ton/block/AddrNone;->INSTANCE:Lorg/ton/block/AddrNone;

    new-array v7, v11, [Ljava/lang/annotation/Annotation;

    .line 19
    new-instance v8, Lorg/ton/block/ExtOutMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v8, v12}, Lorg/ton/block/ExtOutMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v10

    const-string v8, "addr_none"

    invoke-direct {v5, v8, v6, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v5, v4, v11

    new-array v5, v11, [Ljava/lang/annotation/Annotation;

    new-instance v6, Lorg/ton/block/ExtOutMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v6, v12}, Lorg/ton/block/ExtOutMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v10

    const-string v14, "org.ton.block.MsgAddressExt"

    move-object v13, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v2, v0, v11

    aput-object v1, v0, v9

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 33
    sput-object v0, Lorg/ton/block/ExtOutMsgInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private constructor <init>(ILorg/ton/block/MsgAddressInt;Lorg/ton/block/MsgAddressExt;Lkotlin/ULong;Lkotlin/UInt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p6, :cond_0

    .line 14
    sget-object p6, Lorg/ton/block/ExtOutMsgInfo$$serializer;->INSTANCE:Lorg/ton/block/ExtOutMsgInfo$$serializer;

    invoke-virtual {p6}, Lorg/ton/block/ExtOutMsgInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/ExtOutMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    iput-object p3, p0, Lorg/ton/block/ExtOutMsgInfo;->dest:Lorg/ton/block/MsgAddressExt;

    invoke-virtual {p4}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/ton/block/ExtOutMsgInfo;->createdLt:J

    invoke-virtual {p5}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    iput p1, p0, Lorg/ton/block/ExtOutMsgInfo;->createdAt:I

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/MsgAddressInt;Lorg/ton/block/MsgAddressExt;Lkotlin/ULong;Lkotlin/UInt;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/ton/block/ExtOutMsgInfo;-><init>(ILorg/ton/block/MsgAddressInt;Lorg/ton/block/MsgAddressExt;Lkotlin/ULong;Lkotlin/UInt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lorg/ton/block/MsgAddressInt;Lorg/ton/block/MsgAddressExt;JI)V
    .locals 1

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/ton/block/ExtOutMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    .line 18
    iput-object p2, p0, Lorg/ton/block/ExtOutMsgInfo;->dest:Lorg/ton/block/MsgAddressExt;

    .line 19
    iput-wide p3, p0, Lorg/ton/block/ExtOutMsgInfo;->createdLt:J

    .line 20
    iput p5, p0, Lorg/ton/block/ExtOutMsgInfo;->createdAt:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/block/MsgAddressInt;Lorg/ton/block/MsgAddressExt;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/ton/block/ExtOutMsgInfo;-><init>(Lorg/ton/block/MsgAddressInt;Lorg/ton/block/MsgAddressExt;JI)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 14
    sget-object v0, Lorg/ton/block/ExtOutMsgInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/ExtOutMsgInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 14
    sget-object v0, Lorg/ton/block/ExtOutMsgInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/ExtOutMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/block/ExtOutMsgInfo;->dest:Lorg/ton/block/MsgAddressExt;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v1, p0, Lorg/ton/block/ExtOutMsgInfo;->createdLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    iget p0, p0, Lorg/ton/block/ExtOutMsgInfo;->createdAt:I

    invoke-static {p0}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object p0

    const/4 v1, 0x3

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/ExtOutMsgInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/ExtOutMsgInfo;

    iget-object v1, p0, Lorg/ton/block/ExtOutMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    iget-object v3, p1, Lorg/ton/block/ExtOutMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/ExtOutMsgInfo;->dest:Lorg/ton/block/MsgAddressExt;

    iget-object v3, p1, Lorg/ton/block/ExtOutMsgInfo;->dest:Lorg/ton/block/MsgAddressExt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lorg/ton/block/ExtOutMsgInfo;->createdLt:J

    iget-wide v5, p1, Lorg/ton/block/ExtOutMsgInfo;->createdLt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lorg/ton/block/ExtOutMsgInfo;->createdAt:I

    iget p1, p1, Lorg/ton/block/ExtOutMsgInfo;->createdAt:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCreatedAt-pVg5ArA()I
    .locals 1

    .line 20
    iget v0, p0, Lorg/ton/block/ExtOutMsgInfo;->createdAt:I

    return v0
.end method

.method public final getCreatedLt-s-VKNKU()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lorg/ton/block/ExtOutMsgInfo;->createdLt:J

    return-wide v0
.end method

.method public final getDest()Lorg/ton/block/MsgAddressExt;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/block/ExtOutMsgInfo;->dest:Lorg/ton/block/MsgAddressExt;

    return-object v0
.end method

.method public final getSrc()Lorg/ton/block/MsgAddressInt;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/block/ExtOutMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/ton/block/ExtOutMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ExtOutMsgInfo;->dest:Lorg/ton/block/MsgAddressExt;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/ExtOutMsgInfo;->createdLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/ExtOutMsgInfo;->createdAt:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ext_out_msg_info"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lorg/ton/block/ExtOutMsgInfo;->src:Lorg/ton/block/MsgAddressInt;

    const-string v2, "src"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 25
    iget-object v1, p0, Lorg/ton/block/ExtOutMsgInfo;->dest:Lorg/ton/block/MsgAddressExt;

    const-string v2, "dest"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 26
    iget-wide v1, p0, Lorg/ton/block/ExtOutMsgInfo;->createdLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "created_lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 27
    iget v1, p0, Lorg/ton/block/ExtOutMsgInfo;->createdAt:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

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

    .line 31
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
