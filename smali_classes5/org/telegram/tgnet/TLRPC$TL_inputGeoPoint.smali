.class public Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;
.super Lorg/telegram/tgnet/TLRPC$InputGeoPoint;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10900
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 10905
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->flags:I

    .line 10906
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 10907
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 10908
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10909
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->accuracy_radius:I

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, 0x48222faf

    .line 10914
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10915
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10916
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 10917
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 10918
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10919
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->accuracy_radius:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
