.class public Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;
.super Lorg/telegram/tgnet/TLRPC$InputFileLocation;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23471
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputFileLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 23476
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 23477
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 23478
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    .line 23479
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, -0x2025541f

    .line 23483
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23484
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 23485
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23486
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 23487
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    return-void
.end method
