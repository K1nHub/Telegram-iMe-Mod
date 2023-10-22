.class public final Lorg/ton/block/IntermediateAddressExt;
.super Ljava/lang/Object;
.source "IntermediateAddressExt.kt"

# interfaces
.implements Lorg/ton/block/IntermediateAddress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/IntermediateAddressExt$$serializer;,
        Lorg/ton/block/IntermediateAddressExt$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntermediateAddressExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntermediateAddressExt.kt\norg/ton/block/IntermediateAddressExt\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,47:1\n82#2,3:48\n*S KotlinDebug\n*F\n+ 1 IntermediateAddressExt.kt\norg/ton/block/IntermediateAddressExt\n*L\n18#1:48,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/IntermediateAddressExt$Companion;


# instance fields
.field private final addrPfx:J

.field private final workchainId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/IntermediateAddressExt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/IntermediateAddressExt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/IntermediateAddressExt;->Companion:Lorg/ton/block/IntermediateAddressExt$Companion;

    return-void
.end method

.method private constructor <init>(IILkotlin/ULong;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 12
    sget-object p4, Lorg/ton/block/IntermediateAddressExt$$serializer;->INSTANCE:Lorg/ton/block/IntermediateAddressExt$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/IntermediateAddressExt$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/block/IntermediateAddressExt;->workchainId:I

    invoke-virtual {p3}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/ton/block/IntermediateAddressExt;->addrPfx:J

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/ULong;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ton/block/IntermediateAddressExt;-><init>(IILkotlin/ULong;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(IJ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/ton/block/IntermediateAddressExt;->workchainId:I

    .line 16
    iput-wide p2, p0, Lorg/ton/block/IntermediateAddressExt;->addrPfx:J

    return-void
.end method

.method public synthetic constructor <init>(IJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/ton/block/IntermediateAddressExt;-><init>(IJ)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/IntermediateAddressExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 12
    iget v0, p0, Lorg/ton/block/IntermediateAddressExt;->workchainId:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v0, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v1, p0, Lorg/ton/block/IntermediateAddressExt;->addrPfx:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object p0

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
    instance-of v1, p1, Lorg/ton/block/IntermediateAddressExt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/IntermediateAddressExt;

    iget v1, p0, Lorg/ton/block/IntermediateAddressExt;->workchainId:I

    iget v3, p1, Lorg/ton/block/IntermediateAddressExt;->workchainId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/ton/block/IntermediateAddressExt;->addrPfx:J

    iget-wide v5, p1, Lorg/ton/block/IntermediateAddressExt;->addrPfx:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAddrPfx-s-VKNKU()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lorg/ton/block/IntermediateAddressExt;->addrPfx:J

    return-wide v0
.end method

.method public final getWorkchainId()I
    .locals 1

    .line 15
    iget v0, p0, Lorg/ton/block/IntermediateAddressExt;->workchainId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/ton/block/IntermediateAddressExt;->workchainId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/IntermediateAddressExt;->addrPfx:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interm_addr_ext"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 19
    iget v1, p0, Lorg/ton/block/IntermediateAddressExt;->workchainId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "workchain_id"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 20
    iget-wide v1, p0, Lorg/ton/block/IntermediateAddressExt;->addrPfx:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "addr_pfx"

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

    .line 23
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
