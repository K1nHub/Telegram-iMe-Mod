.class public final Lorg/ton/block/ExtBlkRef;
.super Ljava/lang/Object;
.source "ExtBlkRef.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ExtBlkRef$$serializer;,
        Lorg/ton/block/ExtBlkRef$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtBlkRef.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtBlkRef.kt\norg/ton/block/ExtBlkRef\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,64:1\n82#2,3:65\n*S KotlinDebug\n*F\n+ 1 ExtBlkRef.kt\norg/ton/block/ExtBlkRef\n*L\n27#1:65,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/ExtBlkRef$Companion;


# instance fields
.field private final endLt:J

.field private final fileHash:Lorg/ton/bitstring/BitString;

.field private final rootHash:Lorg/ton/bitstring/BitString;

.field private final seqNo:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/ExtBlkRef$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/ExtBlkRef$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/ExtBlkRef;->Companion:Lorg/ton/block/ExtBlkRef$Companion;

    return-void
.end method

.method private constructor <init>(ILkotlin/ULong;Lkotlin/UInt;Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p6, :cond_0

    .line 14
    sget-object p6, Lorg/ton/block/ExtBlkRef$$serializer;->INSTANCE:Lorg/ton/block/ExtBlkRef$$serializer;

    invoke-virtual {p6}, Lorg/ton/block/ExtBlkRef$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/ton/block/ExtBlkRef;->endLt:J

    invoke-virtual {p3}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    iput p1, p0, Lorg/ton/block/ExtBlkRef;->seqNo:I

    iput-object p4, p0, Lorg/ton/block/ExtBlkRef;->rootHash:Lorg/ton/bitstring/BitString;

    iput-object p5, p0, Lorg/ton/block/ExtBlkRef;->fileHash:Lorg/ton/bitstring/BitString;

    .line 23
    invoke-interface {p4}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/16 p4, 0x100

    if-ne p1, p4, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    const-string p6, "Failed requirement."

    if-eqz p1, :cond_4

    .line 24
    invoke-interface {p5}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    if-ne p1, p4, :cond_2

    goto :goto_1

    :cond_2
    move p2, p3

    :goto_1
    if-eqz p2, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(ILkotlin/ULong;Lkotlin/UInt;Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/ton/block/ExtBlkRef;-><init>(ILkotlin/ULong;Lkotlin/UInt;Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(JILorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;)V
    .locals 1

    const-string v0, "rootHash"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileHash"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lorg/ton/block/ExtBlkRef;->endLt:J

    .line 18
    iput p3, p0, Lorg/ton/block/ExtBlkRef;->seqNo:I

    .line 19
    iput-object p4, p0, Lorg/ton/block/ExtBlkRef;->rootHash:Lorg/ton/bitstring/BitString;

    .line 20
    iput-object p5, p0, Lorg/ton/block/ExtBlkRef;->fileHash:Lorg/ton/bitstring/BitString;

    .line 23
    invoke-interface {p4}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/16 p4, 0x100

    if-ne p1, p4, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    const-string v0, "Failed requirement."

    if-eqz p1, :cond_3

    .line 24
    invoke-interface {p5}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    if-ne p1, p4, :cond_1

    goto :goto_1

    :cond_1
    move p2, p3

    :goto_1
    if-eqz p2, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(JILorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/ton/block/ExtBlkRef;-><init>(JILorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/ExtBlkRef;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 14
    sget-object v0, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v1, p0, Lorg/ton/block/ExtBlkRef;->endLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    iget v1, p0, Lorg/ton/block/ExtBlkRef;->seqNo:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object v1, p0, Lorg/ton/block/ExtBlkRef;->rootHash:Lorg/ton/bitstring/BitString;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/ton/block/ExtBlkRef;->fileHash:Lorg/ton/bitstring/BitString;

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
    instance-of v1, p1, Lorg/ton/block/ExtBlkRef;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/ExtBlkRef;

    iget-wide v3, p0, Lorg/ton/block/ExtBlkRef;->endLt:J

    iget-wide v5, p1, Lorg/ton/block/ExtBlkRef;->endLt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/block/ExtBlkRef;->seqNo:I

    iget v3, p1, Lorg/ton/block/ExtBlkRef;->seqNo:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/ExtBlkRef;->rootHash:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/ExtBlkRef;->rootHash:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/block/ExtBlkRef;->fileHash:Lorg/ton/bitstring/BitString;

    iget-object p1, p1, Lorg/ton/block/ExtBlkRef;->fileHash:Lorg/ton/bitstring/BitString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEndLt-s-VKNKU()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lorg/ton/block/ExtBlkRef;->endLt:J

    return-wide v0
.end method

.method public final getFileHash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/ton/block/ExtBlkRef;->fileHash:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final getRootHash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ton/block/ExtBlkRef;->rootHash:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final getSeqNo-pVg5ArA()I
    .locals 1

    .line 18
    iget v0, p0, Lorg/ton/block/ExtBlkRef;->seqNo:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lorg/ton/block/ExtBlkRef;->endLt:J

    invoke-static {v0, v1}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/ExtBlkRef;->seqNo:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ExtBlkRef;->rootHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ExtBlkRef;->fileHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ext_blk_ref"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 28
    iget-wide v1, p0, Lorg/ton/block/ExtBlkRef;->endLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "end_lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 29
    iget v1, p0, Lorg/ton/block/ExtBlkRef;->seqNo:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "seq_no"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 30
    iget-object v1, p0, Lorg/ton/block/ExtBlkRef;->rootHash:Lorg/ton/bitstring/BitString;

    const-string v2, "root_hash"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 31
    iget-object v1, p0, Lorg/ton/block/ExtBlkRef;->fileHash:Lorg/ton/bitstring/BitString;

    const-string v2, "file_hash"

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

    .line 34
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
