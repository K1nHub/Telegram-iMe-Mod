.class public final Lorg/ton/block/MsgExportDeqShort;
.super Ljava/lang/Object;
.source "MsgExportDeqShort.kt"

# interfaces
.implements Lorg/ton/block/OutMsg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/MsgExportDeqShort$$serializer;,
        Lorg/ton/block/MsgExportDeqShort$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgExportDeqShort.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgExportDeqShort.kt\norg/ton/block/MsgExportDeqShort\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,60:1\n86#2,2:61\n82#2,3:63\n88#2:66\n*S KotlinDebug\n*F\n+ 1 MsgExportDeqShort.kt\norg/ton/block/MsgExportDeqShort\n*L\n21#1:61,2\n22#1:63,3\n21#1:66\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/MsgExportDeqShort$Companion;


# instance fields
.field private final importBlockLt:J

.field private final msgEnvHash:Lorg/ton/bitstring/BitString;

.field private final nextAddrPfx:J

.field private final nextWorkchain:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/MsgExportDeqShort$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/MsgExportDeqShort$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/MsgExportDeqShort;->Companion:Lorg/ton/block/MsgExportDeqShort$Companion;

    return-void
.end method

.method private constructor <init>(ILorg/ton/bitstring/BitString;ILkotlin/ULong;Lkotlin/ULong;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p6, :cond_0

    .line 13
    sget-object p6, Lorg/ton/block/MsgExportDeqShort$$serializer;->INSTANCE:Lorg/ton/block/MsgExportDeqShort$$serializer;

    invoke-virtual {p6}, Lorg/ton/block/MsgExportDeqShort$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/MsgExportDeqShort;->msgEnvHash:Lorg/ton/bitstring/BitString;

    iput p3, p0, Lorg/ton/block/MsgExportDeqShort;->nextWorkchain:I

    invoke-virtual {p4}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/ton/block/MsgExportDeqShort;->nextAddrPfx:J

    invoke-virtual {p5}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/ton/block/MsgExportDeqShort;->importBlockLt:J

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/bitstring/BitString;ILkotlin/ULong;Lkotlin/ULong;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/ton/block/MsgExportDeqShort;-><init>(ILorg/ton/bitstring/BitString;ILkotlin/ULong;Lkotlin/ULong;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lorg/ton/bitstring/BitString;IJJ)V
    .locals 1

    const-string v0, "msgEnvHash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/ton/block/MsgExportDeqShort;->msgEnvHash:Lorg/ton/bitstring/BitString;

    .line 17
    iput p2, p0, Lorg/ton/block/MsgExportDeqShort;->nextWorkchain:I

    .line 18
    iput-wide p3, p0, Lorg/ton/block/MsgExportDeqShort;->nextAddrPfx:J

    .line 19
    iput-wide p5, p0, Lorg/ton/block/MsgExportDeqShort;->importBlockLt:J

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/bitstring/BitString;IJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/ton/block/MsgExportDeqShort;-><init>(Lorg/ton/bitstring/BitString;IJJ)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/MsgExportDeqShort;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 13
    sget-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object v1, p0, Lorg/ton/block/MsgExportDeqShort;->msgEnvHash:Lorg/ton/bitstring/BitString;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v0, p0, Lorg/ton/block/MsgExportDeqShort;->nextWorkchain:I

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v0, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v1, p0, Lorg/ton/block/MsgExportDeqShort;->nextAddrPfx:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-wide v1, p0, Lorg/ton/block/MsgExportDeqShort;->importBlockLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

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
    instance-of v1, p1, Lorg/ton/block/MsgExportDeqShort;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/MsgExportDeqShort;

    iget-object v1, p0, Lorg/ton/block/MsgExportDeqShort;->msgEnvHash:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/MsgExportDeqShort;->msgEnvHash:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/block/MsgExportDeqShort;->nextWorkchain:I

    iget v3, p1, Lorg/ton/block/MsgExportDeqShort;->nextWorkchain:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lorg/ton/block/MsgExportDeqShort;->nextAddrPfx:J

    iget-wide v5, p1, Lorg/ton/block/MsgExportDeqShort;->nextAddrPfx:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lorg/ton/block/MsgExportDeqShort;->importBlockLt:J

    iget-wide v5, p1, Lorg/ton/block/MsgExportDeqShort;->importBlockLt:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getImportBlockLt-s-VKNKU()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lorg/ton/block/MsgExportDeqShort;->importBlockLt:J

    return-wide v0
.end method

.method public final getMsgEnvHash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/block/MsgExportDeqShort;->msgEnvHash:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final getNextAddrPfx-s-VKNKU()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lorg/ton/block/MsgExportDeqShort;->nextAddrPfx:J

    return-wide v0
.end method

.method public final getNextWorkchain()I
    .locals 1

    .line 17
    iget v0, p0, Lorg/ton/block/MsgExportDeqShort;->nextWorkchain:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/ton/block/MsgExportDeqShort;->msgEnvHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/MsgExportDeqShort;->nextWorkchain:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/MsgExportDeqShort;->nextAddrPfx:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/MsgExportDeqShort;->importBlockLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg_export_deq_short"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lorg/ton/block/MsgExportDeqShort;->msgEnvHash:Lorg/ton/bitstring/BitString;

    const-string v2, "msg_env_hash"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 24
    iget v1, p0, Lorg/ton/block/MsgExportDeqShort;->nextWorkchain:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "next_workchain"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 25
    iget-wide v1, p0, Lorg/ton/block/MsgExportDeqShort;->nextAddrPfx:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "next_addr_pfx"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 26
    iget-wide v1, p0, Lorg/ton/block/MsgExportDeqShort;->importBlockLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "import_block_lt"

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

    .line 30
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
