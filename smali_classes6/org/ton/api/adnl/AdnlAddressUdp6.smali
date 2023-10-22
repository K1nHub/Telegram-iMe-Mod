.class public final Lorg/ton/api/adnl/AdnlAddressUdp6;
.super Ljava/lang/Object;
.source "AdnlAddress.kt"

# interfaces
.implements Lorg/ton/api/adnl/AdnlAddress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/adnl/AdnlAddressUdp6$$serializer;,
        Lorg/ton/api/adnl/AdnlAddressUdp6$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/adnl/AdnlAddressUdp6$Companion;


# instance fields
.field private final ip:[B

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/adnl/AdnlAddressUdp6$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/adnl/AdnlAddressUdp6$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/adnl/AdnlAddressUdp6;->Companion:Lorg/ton/api/adnl/AdnlAddressUdp6$Companion;

    return-void
.end method

.method public synthetic constructor <init>(I[BILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 62
    sget-object p4, Lorg/ton/api/adnl/AdnlAddressUdp6$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressUdp6$$serializer;

    invoke-virtual {p4}, Lorg/ton/api/adnl/AdnlAddressUdp6$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/api/adnl/AdnlAddressUdp6;->ip:[B

    iput p3, p0, Lorg/ton/api/adnl/AdnlAddressUdp6;->port:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const-string v0, "ip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/ton/api/adnl/AdnlAddressUdp6;->ip:[B

    .line 67
    iput p2, p0, Lorg/ton/api/adnl/AdnlAddressUdp6;->port:I

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/api/adnl/AdnlAddressUdp6;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 62
    sget-object v0, Lkotlinx/serialization/internal/ByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;

    invoke-virtual {p0}, Lorg/ton/api/adnl/AdnlAddressUdp6;->getIp()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/ton/api/adnl/AdnlAddressUdp6;->getPort()I

    move-result p0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/api/adnl/AdnlAddressUdp6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/api/adnl/AdnlAddressUdp6;

    iget-object v1, p0, Lorg/ton/api/adnl/AdnlAddressUdp6;->ip:[B

    iget-object v3, p1, Lorg/ton/api/adnl/AdnlAddressUdp6;->ip:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressUdp6;->port:I

    iget p1, p1, Lorg/ton/api/adnl/AdnlAddressUdp6;->port:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getIp()[B
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/ton/api/adnl/AdnlAddressUdp6;->ip:[B

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/ton/api/adnl/AdnlAddressUdp6;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlAddressUdp6;->ip:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressUdp6;->port:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdnlAddressUdp6(ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/adnl/AdnlAddressUdp6;->ip:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressUdp6;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
