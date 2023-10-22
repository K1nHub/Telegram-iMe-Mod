.class public final Lorg/ton/block/MsgEnvelope;
.super Ljava/lang/Object;
.source "MsgEnvelope.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/MsgEnvelope$$serializer;,
        Lorg/ton/block/MsgEnvelope$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgEnvelope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgEnvelope.kt\norg/ton/block/MsgEnvelope\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,59:1\n86#2,2:60\n82#2,3:62\n88#2:65\n*S KotlinDebug\n*F\n+ 1 MsgEnvelope.kt\norg/ton/block/MsgEnvelope\n*L\n20#1:60,2\n21#1:62,3\n20#1:65\n*E\n"
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

.field public static final Companion:Lorg/ton/block/MsgEnvelope$Companion;


# instance fields
.field private final curAddr:Lorg/ton/block/IntermediateAddress;

.field private final fwdFeeRemaining:Lorg/ton/block/Coins;

.field private final msg:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Message<",
            "Lorg/ton/cell/Cell;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nextAddr:Lorg/ton/block/IntermediateAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const-class v0, Lorg/ton/block/IntermediateAddressSimple;

    const-class v1, Lorg/ton/block/IntermediateAddressRegular;

    const-class v2, Lorg/ton/block/IntermediateAddressExt;

    const-class v3, Lorg/ton/block/IntermediateAddress;

    new-instance v4, Lorg/ton/block/MsgEnvelope$Companion;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/ton/block/MsgEnvelope$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lorg/ton/block/MsgEnvelope;->Companion:Lorg/ton/block/MsgEnvelope$Companion;

    const/4 v4, 0x4

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    .line 31
    new-instance v12, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v13, 0x3

    new-array v9, v13, [Lkotlin/reflect/KClass;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v14, 0x0

    aput-object v6, v9, v14

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v15, 0x1

    aput-object v6, v9, v15

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/16 v16, 0x2

    aput-object v6, v9, v16

    new-array v10, v13, [Lkotlinx/serialization/KSerializer;

    sget-object v17, Lorg/ton/block/IntermediateAddressExt$$serializer;->INSTANCE:Lorg/ton/block/IntermediateAddressExt$$serializer;

    aput-object v17, v10, v14

    sget-object v18, Lorg/ton/block/IntermediateAddressRegular$$serializer;->INSTANCE:Lorg/ton/block/IntermediateAddressRegular$$serializer;

    aput-object v18, v10, v15

    sget-object v19, Lorg/ton/block/IntermediateAddressSimple$$serializer;->INSTANCE:Lorg/ton/block/IntermediateAddressSimple$$serializer;

    aput-object v19, v10, v16

    new-array v11, v15, [Ljava/lang/annotation/Annotation;

    .line 10
    new-instance v6, Lorg/ton/block/MsgEnvelope$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v7, "@type"

    invoke-direct {v6, v7}, Lorg/ton/block/MsgEnvelope$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v6, v11, v14

    const-string v20, "org.ton.block.IntermediateAddress"

    move-object v6, v12

    move-object v5, v7

    move-object/from16 v7, v20

    invoke-direct/range {v6 .. v11}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v12, v4, v14

    .line 31
    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v23

    new-array v3, v13, [Lkotlin/reflect/KClass;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    aput-object v2, v3, v14

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    aput-object v1, v3, v15

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    aput-object v0, v3, v16

    new-array v0, v13, [Lkotlinx/serialization/KSerializer;

    aput-object v17, v0, v14

    aput-object v18, v0, v15

    aput-object v19, v0, v16

    new-array v1, v15, [Ljava/lang/annotation/Annotation;

    .line 10
    new-instance v2, Lorg/ton/block/MsgEnvelope$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v2, v5}, Lorg/ton/block/MsgEnvelope$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v14

    const-string v22, "org.ton.block.IntermediateAddress"

    move-object/from16 v21, v6

    move-object/from16 v24, v3

    move-object/from16 v25, v0

    move-object/from16 v26, v1

    invoke-direct/range {v21 .. v26}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v6, v4, v15

    const/4 v0, 0x0

    aput-object v0, v4, v16

    .line 31
    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v1, Lorg/ton/tlb/CellRef;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    aput-object v0, v4, v13

    sput-object v4, Lorg/ton/block/MsgEnvelope;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/IntermediateAddress;Lorg/ton/block/IntermediateAddress;Lorg/ton/block/Coins;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p6, :cond_0

    .line 12
    sget-object p6, Lorg/ton/block/MsgEnvelope$$serializer;->INSTANCE:Lorg/ton/block/MsgEnvelope$$serializer;

    invoke-virtual {p6}, Lorg/ton/block/MsgEnvelope$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/MsgEnvelope;->curAddr:Lorg/ton/block/IntermediateAddress;

    iput-object p3, p0, Lorg/ton/block/MsgEnvelope;->nextAddr:Lorg/ton/block/IntermediateAddress;

    iput-object p4, p0, Lorg/ton/block/MsgEnvelope;->fwdFeeRemaining:Lorg/ton/block/Coins;

    iput-object p5, p0, Lorg/ton/block/MsgEnvelope;->msg:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/IntermediateAddress;Lorg/ton/block/IntermediateAddress;Lorg/ton/block/Coins;Lorg/ton/tlb/CellRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/IntermediateAddress;",
            "Lorg/ton/block/IntermediateAddress;",
            "Lorg/ton/block/Coins;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Message<",
            "Lorg/ton/cell/Cell;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "curAddr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextAddr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fwdFeeRemaining"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/ton/block/MsgEnvelope;->curAddr:Lorg/ton/block/IntermediateAddress;

    .line 16
    iput-object p2, p0, Lorg/ton/block/MsgEnvelope;->nextAddr:Lorg/ton/block/IntermediateAddress;

    .line 17
    iput-object p3, p0, Lorg/ton/block/MsgEnvelope;->fwdFeeRemaining:Lorg/ton/block/Coins;

    .line 18
    iput-object p4, p0, Lorg/ton/block/MsgEnvelope;->msg:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 12
    sget-object v0, Lorg/ton/block/MsgEnvelope;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/MsgEnvelope;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 12
    sget-object v0, Lorg/ton/block/MsgEnvelope;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/MsgEnvelope;->curAddr:Lorg/ton/block/IntermediateAddress;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/MsgEnvelope;->nextAddr:Lorg/ton/block/IntermediateAddress;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lorg/ton/block/Coins$$serializer;->INSTANCE:Lorg/ton/block/Coins$$serializer;

    iget-object v2, p0, Lorg/ton/block/MsgEnvelope;->fwdFeeRemaining:Lorg/ton/block/Coins;

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/MsgEnvelope;->msg:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/MsgEnvelope;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/MsgEnvelope;

    iget-object v1, p0, Lorg/ton/block/MsgEnvelope;->curAddr:Lorg/ton/block/IntermediateAddress;

    iget-object v3, p1, Lorg/ton/block/MsgEnvelope;->curAddr:Lorg/ton/block/IntermediateAddress;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/MsgEnvelope;->nextAddr:Lorg/ton/block/IntermediateAddress;

    iget-object v3, p1, Lorg/ton/block/MsgEnvelope;->nextAddr:Lorg/ton/block/IntermediateAddress;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/MsgEnvelope;->fwdFeeRemaining:Lorg/ton/block/Coins;

    iget-object v3, p1, Lorg/ton/block/MsgEnvelope;->fwdFeeRemaining:Lorg/ton/block/Coins;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/block/MsgEnvelope;->msg:Lorg/ton/tlb/CellRef;

    iget-object p1, p1, Lorg/ton/block/MsgEnvelope;->msg:Lorg/ton/tlb/CellRef;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCurAddr()Lorg/ton/block/IntermediateAddress;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ton/block/MsgEnvelope;->curAddr:Lorg/ton/block/IntermediateAddress;

    return-object v0
.end method

.method public final getFwdFeeRemaining()Lorg/ton/block/Coins;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/block/MsgEnvelope;->fwdFeeRemaining:Lorg/ton/block/Coins;

    return-object v0
.end method

.method public final getMsg()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Message<",
            "Lorg/ton/cell/Cell;",
            ">;>;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lorg/ton/block/MsgEnvelope;->msg:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getNextAddr()Lorg/ton/block/IntermediateAddress;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/block/MsgEnvelope;->nextAddr:Lorg/ton/block/IntermediateAddress;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/MsgEnvelope;->curAddr:Lorg/ton/block/IntermediateAddress;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/MsgEnvelope;->nextAddr:Lorg/ton/block/IntermediateAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/MsgEnvelope;->fwdFeeRemaining:Lorg/ton/block/Coins;

    invoke-virtual {v1}, Lorg/ton/block/Coins;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/MsgEnvelope;->msg:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg_envelope"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lorg/ton/block/MsgEnvelope;->curAddr:Lorg/ton/block/IntermediateAddress;

    const-string v2, "cur_addr"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 23
    iget-object v1, p0, Lorg/ton/block/MsgEnvelope;->nextAddr:Lorg/ton/block/IntermediateAddress;

    const-string v2, "next_addr"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 24
    iget-object v1, p0, Lorg/ton/block/MsgEnvelope;->fwdFeeRemaining:Lorg/ton/block/Coins;

    const-string v2, "fwd_fee_remaining"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 25
    iget-object v1, p0, Lorg/ton/block/MsgEnvelope;->msg:Lorg/ton/tlb/CellRef;

    const-string v2, "msg"

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

    .line 29
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
