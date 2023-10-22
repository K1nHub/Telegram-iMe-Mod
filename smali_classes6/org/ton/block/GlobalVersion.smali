.class public final Lorg/ton/block/GlobalVersion;
.super Ljava/lang/Object;
.source "GlobalVersion.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/GlobalVersion$$serializer;,
        Lorg/ton/block/GlobalVersion$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalVersion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalVersion.kt\norg/ton/block/GlobalVersion\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,46:1\n82#2,3:47\n*S KotlinDebug\n*F\n+ 1 GlobalVersion.kt\norg/ton/block/GlobalVersion\n*L\n17#1:47,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/GlobalVersion$Companion;


# instance fields
.field private final capabilities:J

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/GlobalVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/GlobalVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/GlobalVersion;->Companion:Lorg/ton/block/GlobalVersion$Companion;

    return-void
.end method

.method private constructor <init>(IJ)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lorg/ton/block/GlobalVersion;->version:I

    .line 14
    iput-wide p2, p0, Lorg/ton/block/GlobalVersion;->capabilities:J

    return-void
.end method

.method public synthetic constructor <init>(IJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/ton/block/GlobalVersion;-><init>(IJ)V

    return-void
.end method

.method private constructor <init>(ILkotlin/UInt;Lkotlin/ULong;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 10
    sget-object p4, Lorg/ton/block/GlobalVersion$$serializer;->INSTANCE:Lorg/ton/block/GlobalVersion$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/GlobalVersion$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    iput p1, p0, Lorg/ton/block/GlobalVersion;->version:I

    invoke-virtual {p3}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/ton/block/GlobalVersion;->capabilities:J

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/UInt;Lkotlin/ULong;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ton/block/GlobalVersion;-><init>(ILkotlin/UInt;Lkotlin/ULong;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/GlobalVersion;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 10
    sget-object v0, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    iget v1, p0, Lorg/ton/block/GlobalVersion;->version:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v1, p0, Lorg/ton/block/GlobalVersion;->capabilities:J

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
    instance-of v1, p1, Lorg/ton/block/GlobalVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/GlobalVersion;

    iget v1, p0, Lorg/ton/block/GlobalVersion;->version:I

    iget v3, p1, Lorg/ton/block/GlobalVersion;->version:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/ton/block/GlobalVersion;->capabilities:J

    iget-wide v5, p1, Lorg/ton/block/GlobalVersion;->capabilities:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCapabilities-s-VKNKU()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lorg/ton/block/GlobalVersion;->capabilities:J

    return-wide v0
.end method

.method public final getVersion-pVg5ArA()I
    .locals 1

    .line 13
    iget v0, p0, Lorg/ton/block/GlobalVersion;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/ton/block/GlobalVersion;->version:I

    invoke-static {v0}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/GlobalVersion;->capabilities:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 4

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capabilities"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v1

    .line 18
    iget v2, p0, Lorg/ton/block/GlobalVersion;->version:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 19
    iget-wide v2, p0, Lorg/ton/block/GlobalVersion;->capabilities:J

    invoke-static {v2, v3}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v1, v0, v2, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 22
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
