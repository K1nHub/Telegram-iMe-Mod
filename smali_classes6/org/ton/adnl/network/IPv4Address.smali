.class public final Lorg/ton/adnl/network/IPv4Address;
.super Ljava/lang/Object;
.source "IPAddress.kt"

# interfaces
.implements Lorg/ton/adnl/network/IPAddress;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIPAddress.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IPAddress.kt\norg/ton/adnl/network/IPv4Address\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"
.end annotation


# instance fields
.field private final address:I

.field private final port:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/ton/adnl/network/IPv4Address;->address:I

    .line 29
    iput p2, p0, Lorg/ton/adnl/network/IPv4Address;->port:I

    .line 34
    invoke-virtual {p0}, Lorg/ton/adnl/network/IPv4Address;->getPort()I

    move-result p1

    const/4 p2, 0x0

    if-ltz p1, :cond_0

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    if-eqz p2, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid port: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ton/adnl/network/IPv4Address;->getPort()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/adnl/network/IPv4Address;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/adnl/network/IPv4Address;

    iget v1, p0, Lorg/ton/adnl/network/IPv4Address;->address:I

    iget v3, p1, Lorg/ton/adnl/network/IPv4Address;->address:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/adnl/network/IPv4Address;->port:I

    iget p1, p1, Lorg/ton/adnl/network/IPv4Address;->port:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 38
    iget v0, p0, Lorg/ton/adnl/network/IPv4Address;->address:I

    invoke-static {v0}, Lorg/ton/adnl/UtilsKt;->ipv4(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/ton/adnl/network/IPv4Address;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/adnl/network/IPv4Address;->address:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/adnl/network/IPv4Address;->port:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/ton/adnl/network/IPv4Address;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ton/adnl/network/IPv4Address;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
