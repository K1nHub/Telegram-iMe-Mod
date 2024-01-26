.class public Lorg/telegram/tgnet/TLRPC$TL_geoPoint;
.super Lorg/telegram/tgnet/TLRPC$GeoPoint;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6108
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$GeoPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 6113
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->flags:I

    .line 6114
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 6115
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 6116
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->access_hash:J

    .line 6117
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6118
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->accuracy_radius:I

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, -0x4d5d099d

    .line 6123
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6124
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6125
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 6126
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 6127
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 6128
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6129
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->accuracy_radius:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
