.class public final Lorg/ton/block/MsgDiscardFin;
.super Ljava/lang/Object;
.source "MsgDiscardFin.kt"

# interfaces
.implements Lorg/ton/block/InMsg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/MsgDiscardFin$$serializer;,
        Lorg/ton/block/MsgDiscardFin$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgDiscardFin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgDiscardFin.kt\norg/ton/block/MsgDiscardFin\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,52:1\n86#2,2:53\n82#2,3:55\n88#2:58\n*S KotlinDebug\n*F\n+ 1 MsgDiscardFin.kt\norg/ton/block/MsgDiscardFin\n*L\n18#1:53,2\n19#1:55,3\n18#1:58\n*E\n"
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

.field public static final Companion:Lorg/ton/block/MsgDiscardFin$Companion;


# instance fields
.field private final fwdFee:Lorg/ton/block/Coins;

.field private final inMsg:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/MsgEnvelope;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/ton/block/MsgDiscardFin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/MsgDiscardFin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/MsgDiscardFin;->Companion:Lorg/ton/block/MsgDiscardFin$Companion;

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 28
    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v3, Lorg/ton/tlb/CellRef;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v3, v5}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    aput-object v2, v0, v4

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/ton/block/MsgDiscardFin;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private constructor <init>(ILorg/ton/tlb/CellRef;Lkotlin/ULong;Lorg/ton/block/Coins;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/MsgEnvelope;",
            ">;",
            "Lkotlin/ULong;",
            "Lorg/ton/block/Coins;",
            "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
            ")V"
        }
    .end annotation

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 11
    sget-object p5, Lorg/ton/block/MsgDiscardFin$$serializer;->INSTANCE:Lorg/ton/block/MsgDiscardFin$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/MsgDiscardFin$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/MsgDiscardFin;->inMsg:Lorg/ton/tlb/CellRef;

    invoke-virtual {p3}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/ton/block/MsgDiscardFin;->transactionId:J

    iput-object p4, p0, Lorg/ton/block/MsgDiscardFin;->fwdFee:Lorg/ton/block/Coins;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/tlb/CellRef;Lkotlin/ULong;Lorg/ton/block/Coins;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/ton/block/MsgDiscardFin;-><init>(ILorg/ton/tlb/CellRef;Lkotlin/ULong;Lorg/ton/block/Coins;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lorg/ton/tlb/CellRef;JLorg/ton/block/Coins;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/MsgEnvelope;",
            ">;J",
            "Lorg/ton/block/Coins;",
            ")V"
        }
    .end annotation

    const-string v0, "inMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fwdFee"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ton/block/MsgDiscardFin;->inMsg:Lorg/ton/tlb/CellRef;

    .line 15
    iput-wide p2, p0, Lorg/ton/block/MsgDiscardFin;->transactionId:J

    .line 16
    iput-object p4, p0, Lorg/ton/block/MsgDiscardFin;->fwdFee:Lorg/ton/block/Coins;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/tlb/CellRef;JLorg/ton/block/Coins;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ton/block/MsgDiscardFin;-><init>(Lorg/ton/tlb/CellRef;JLorg/ton/block/Coins;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/block/MsgDiscardFin;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/MsgDiscardFin;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 11
    sget-object v0, Lorg/ton/block/MsgDiscardFin;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/block/MsgDiscardFin;->inMsg:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v1, p0, Lorg/ton/block/MsgDiscardFin;->transactionId:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/block/Coins$$serializer;->INSTANCE:Lorg/ton/block/Coins$$serializer;

    iget-object p0, p0, Lorg/ton/block/MsgDiscardFin;->fwdFee:Lorg/ton/block/Coins;

    const/4 v1, 0x2

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
    instance-of v1, p1, Lorg/ton/block/MsgDiscardFin;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/MsgDiscardFin;

    iget-object v1, p0, Lorg/ton/block/MsgDiscardFin;->inMsg:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/MsgDiscardFin;->inMsg:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/ton/block/MsgDiscardFin;->transactionId:J

    iget-wide v5, p1, Lorg/ton/block/MsgDiscardFin;->transactionId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/MsgDiscardFin;->fwdFee:Lorg/ton/block/Coins;

    iget-object p1, p1, Lorg/ton/block/MsgDiscardFin;->fwdFee:Lorg/ton/block/Coins;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFwdFee()Lorg/ton/block/Coins;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/block/MsgDiscardFin;->fwdFee:Lorg/ton/block/Coins;

    return-object v0
.end method

.method public final getInMsg()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/MsgEnvelope;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lorg/ton/block/MsgDiscardFin;->inMsg:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getTransactionId-s-VKNKU()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lorg/ton/block/MsgDiscardFin;->transactionId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/ton/block/MsgDiscardFin;->inMsg:Lorg/ton/tlb/CellRef;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/MsgDiscardFin;->transactionId:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/MsgDiscardFin;->fwdFee:Lorg/ton/block/Coins;

    invoke-virtual {v1}, Lorg/ton/block/Coins;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg_discard_fin"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lorg/ton/block/MsgDiscardFin;->inMsg:Lorg/ton/tlb/CellRef;

    const-string v2, "in_msg"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 21
    iget-wide v1, p0, Lorg/ton/block/MsgDiscardFin;->transactionId:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "transaction_id"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 22
    iget-object v1, p0, Lorg/ton/block/MsgDiscardFin;->fwdFee:Lorg/ton/block/Coins;

    const-string v2, "fwd_fee"

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

    .line 26
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
