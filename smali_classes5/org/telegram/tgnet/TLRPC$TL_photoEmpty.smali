.class public Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;
.super Lorg/telegram/tgnet/TLRPC$Photo;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38826
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Photo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 38831
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, 0x2331b22d

    .line 38835
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 38836
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
