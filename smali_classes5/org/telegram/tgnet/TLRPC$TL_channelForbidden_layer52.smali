.class public Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer52;
.super Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46950
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 46955
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 46956
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    .line 46957
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, 0x2d85832c

    .line 46961
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46962
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46963
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 46964
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
