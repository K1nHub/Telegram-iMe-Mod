.class public final Lorg/ton/block/ProcessedUpto;
.super Ljava/lang/Object;
.source "ProcessedUpto.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ProcessedUpto$$serializer;,
        Lorg/ton/block/ProcessedUpto$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProcessedUpto.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessedUpto.kt\norg/ton/block/ProcessedUpto\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,49:1\n82#2,3:50\n*S KotlinDebug\n*F\n+ 1 ProcessedUpto.kt\norg/ton/block/ProcessedUpto\n*L\n20#1:50,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/ProcessedUpto$Companion;


# instance fields
.field private final lastMsgHash:Lorg/ton/bitstring/BitString;

.field private final lastMsgLt:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/ProcessedUpto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/ProcessedUpto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/ProcessedUpto;->Companion:Lorg/ton/block/ProcessedUpto$Companion;

    return-void
.end method

.method private constructor <init>(ILkotlin/ULong;Lorg/ton/bitstring/BitString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 14
    sget-object p4, Lorg/ton/block/ProcessedUpto$$serializer;->INSTANCE:Lorg/ton/block/ProcessedUpto$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/ProcessedUpto$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/ton/block/ProcessedUpto;->lastMsgLt:J

    iput-object p3, p0, Lorg/ton/block/ProcessedUpto;->lastMsgHash:Lorg/ton/bitstring/BitString;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/ULong;Lorg/ton/bitstring/BitString;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ton/block/ProcessedUpto;-><init>(ILkotlin/ULong;Lorg/ton/bitstring/BitString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(JLorg/ton/bitstring/BitString;)V
    .locals 1

    const-string v0, "lastMsgHash"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lorg/ton/block/ProcessedUpto;->lastMsgLt:J

    .line 18
    iput-object p3, p0, Lorg/ton/block/ProcessedUpto;->lastMsgHash:Lorg/ton/bitstring/BitString;

    return-void
.end method

.method public synthetic constructor <init>(JLorg/ton/bitstring/BitString;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/ton/block/ProcessedUpto;-><init>(JLorg/ton/bitstring/BitString;)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/ProcessedUpto;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 14
    sget-object v0, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v1, p0, Lorg/ton/block/ProcessedUpto;->lastMsgLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object p0, p0, Lorg/ton/block/ProcessedUpto;->lastMsgHash:Lorg/ton/bitstring/BitString;

    const/4 v1, 0x1

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
    instance-of v1, p1, Lorg/ton/block/ProcessedUpto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/ProcessedUpto;

    iget-wide v3, p0, Lorg/ton/block/ProcessedUpto;->lastMsgLt:J

    iget-wide v5, p1, Lorg/ton/block/ProcessedUpto;->lastMsgLt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/ProcessedUpto;->lastMsgHash:Lorg/ton/bitstring/BitString;

    iget-object p1, p1, Lorg/ton/block/ProcessedUpto;->lastMsgHash:Lorg/ton/bitstring/BitString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLastMsgHash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/block/ProcessedUpto;->lastMsgHash:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final getLastMsgLt-s-VKNKU()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lorg/ton/block/ProcessedUpto;->lastMsgLt:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lorg/ton/block/ProcessedUpto;->lastMsgLt:J

    invoke-static {v0, v1}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ProcessedUpto;->lastMsgHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processed_upto"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 21
    iget-wide v1, p0, Lorg/ton/block/ProcessedUpto;->lastMsgLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "last_msg_lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 22
    iget-object v1, p0, Lorg/ton/block/ProcessedUpto;->lastMsgHash:Lorg/ton/bitstring/BitString;

    const-string v2, "last_msg_hash"

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

    .line 25
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
