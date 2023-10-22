.class public final Lorg/ton/api/adnl/AdnlAddressUdp;
.super Ljava/lang/Object;
.source "AdnlAddress.kt"

# interfaces
.implements Lorg/ton/api/adnl/AdnlAddress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/adnl/AdnlAddressUdp$$serializer;,
        Lorg/ton/api/adnl/AdnlAddressUdp$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdnlAddress.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdnlAddress.kt\norg/ton/api/adnl/AdnlAddressUdp\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n*L\n1#1,110:1\n113#2:111\n*S KotlinDebug\n*F\n+ 1 AdnlAddress.kt\norg/ton/api/adnl/AdnlAddressUdp\n*L\n59#1:111\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/adnl/AdnlAddressUdp$Companion;


# instance fields
.field private final ip:I

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/adnl/AdnlAddressUdp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/adnl/AdnlAddressUdp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/adnl/AdnlAddressUdp;->Companion:Lorg/ton/api/adnl/AdnlAddressUdp$Companion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lorg/ton/api/adnl/AdnlAddressUdp;->ip:I

    .line 42
    iput p2, p0, Lorg/ton/api/adnl/AdnlAddressUdp;->port:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 38
    sget-object p4, Lorg/ton/api/adnl/AdnlAddressUdp$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressUdp$$serializer;

    invoke-virtual {p4}, Lorg/ton/api/adnl/AdnlAddressUdp$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/api/adnl/AdnlAddressUdp;->ip:I

    iput p3, p0, Lorg/ton/api/adnl/AdnlAddressUdp;->port:I

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/api/adnl/AdnlAddressUdp;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lorg/ton/api/adnl/AdnlAddressUdp;->getIp()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    invoke-virtual {p0}, Lorg/ton/api/adnl/AdnlAddressUdp;->getPort()I

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
    instance-of v1, p1, Lorg/ton/api/adnl/AdnlAddressUdp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/api/adnl/AdnlAddressUdp;

    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressUdp;->ip:I

    iget v3, p1, Lorg/ton/api/adnl/AdnlAddressUdp;->ip:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressUdp;->port:I

    iget p1, p1, Lorg/ton/api/adnl/AdnlAddressUdp;->port:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getIp()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/ton/api/adnl/AdnlAddressUdp;->ip:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/ton/api/adnl/AdnlAddressUdp;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/api/adnl/AdnlAddressUdp;->ip:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressUdp;->port:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 113
    invoke-interface {v0}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v1, Lorg/ton/api/adnl/AdnlAddressUdp;->Companion:Lorg/ton/api/adnl/AdnlAddressUdp$Companion;

    invoke-virtual {v1}, Lorg/ton/api/adnl/AdnlAddressUdp$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
