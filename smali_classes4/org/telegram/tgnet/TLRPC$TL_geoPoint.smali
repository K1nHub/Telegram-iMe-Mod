.class public Lorg/telegram/tgnet/TLRPC$TL_geoPoint;
.super Lorg/telegram/tgnet/TLRPC$GeoPoint;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x4d5d099d


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5793
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$GeoPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 5798
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->flags:I

    .line 5799
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 5800
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 5801
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->access_hash:J

    .line 5802
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5803
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->accuracy_radius:I

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 5808
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5809
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5810
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 5811
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 5812
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 5813
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5814
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->accuracy_radius:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
