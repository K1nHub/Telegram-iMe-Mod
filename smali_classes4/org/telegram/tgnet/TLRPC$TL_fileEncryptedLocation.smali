.class public Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;
.super Lorg/telegram/tgnet/TLRPC$FileLocation;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x55555554


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46151
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$FileLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 46156
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 46157
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 46158
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 46159
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    .line 46160
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    .line 46161
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 46165
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46166
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46167
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 46168
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46169
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 46170
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 46171
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    return-void
.end method
