.class public final Lorg/ton/block/Anycast;
.super Ljava/lang/Object;
.source "Anycast.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/Anycast$$serializer;,
        Lorg/ton/block/Anycast$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnycast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Anycast.kt\norg/ton/block/Anycast\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,58:1\n1#2:59\n86#3,2:60\n82#3,3:62\n88#3:65\n*S KotlinDebug\n*F\n+ 1 Anycast.kt\norg/ton/block/Anycast\n*L\n28#1:60,2\n29#1:62,3\n28#1:65\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/Anycast$Companion;


# instance fields
.field private final depth:I

.field private final rewritePfx:Lorg/ton/bitstring/BitString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/Anycast$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/Anycast$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/Anycast;->Companion:Lorg/ton/block/Anycast$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IILorg/ton/bitstring/BitString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 14
    sget-object p4, Lorg/ton/block/Anycast$$serializer;->INSTANCE:Lorg/ton/block/Anycast$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/Anycast$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/block/Anycast;->depth:I

    iput-object p3, p0, Lorg/ton/block/Anycast;->rewritePfx:Lorg/ton/bitstring/BitString;

    const/4 p1, 0x0

    const/4 p3, 0x1

    if-gt p3, p2, :cond_1

    const/16 p4, 0x1f

    if-ge p2, p4, :cond_1

    move p1, p3

    :cond_1
    if-eqz p1, :cond_2

    return-void

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "required: depth in 1..30, actual: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(ILorg/ton/bitstring/BitString;)V
    .locals 2

    const-string v0, "rewritePfx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lorg/ton/block/Anycast;->depth:I

    .line 18
    iput-object p2, p0, Lorg/ton/block/Anycast;->rewritePfx:Lorg/ton/bitstring/BitString;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-gt v0, p1, :cond_0

    const/16 v1, 0x1f

    if-ge p1, v1, :cond_0

    move p2, v0

    :cond_0
    if-eqz p2, :cond_1

    return-void

    .line 25
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "required: depth in 1..30, actual: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final synthetic write$Self(Lorg/ton/block/Anycast;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 14
    iget v0, p0, Lorg/ton/block/Anycast;->depth:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object p0, p0, Lorg/ton/block/Anycast;->rewritePfx:Lorg/ton/bitstring/BitString;

    const/4 v1, 0x1

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
    instance-of v1, p1, Lorg/ton/block/Anycast;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/Anycast;

    iget v1, p0, Lorg/ton/block/Anycast;->depth:I

    iget v3, p1, Lorg/ton/block/Anycast;->depth:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/Anycast;->rewritePfx:Lorg/ton/bitstring/BitString;

    iget-object p1, p1, Lorg/ton/block/Anycast;->rewritePfx:Lorg/ton/bitstring/BitString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDepth()I
    .locals 1

    .line 17
    iget v0, p0, Lorg/ton/block/Anycast;->depth:I

    return v0
.end method

.method public final getRewritePfx()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/block/Anycast;->rewritePfx:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/block/Anycast;->depth:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/Anycast;->rewritePfx:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anycast_info"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 30
    iget v1, p0, Lorg/ton/block/Anycast;->depth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "depth"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 31
    iget-object v1, p0, Lorg/ton/block/Anycast;->rewritePfx:Lorg/ton/bitstring/BitString;

    const-string v2, "rewrite_pfx"

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

    .line 35
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
