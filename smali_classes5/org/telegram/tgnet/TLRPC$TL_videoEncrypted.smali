.class public Lorg/telegram/tgnet/TLRPC$TL_videoEncrypted;
.super Lorg/telegram/tgnet/TLRPC$TL_video_layer45;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28723
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_video_layer45;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 10

    .line 28728
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->id:J

    .line 28729
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->access_hash:J

    .line 28730
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->user_id:J

    .line 28731
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->date:I

    .line 28732
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->caption:Ljava/lang/String;

    .line 28733
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->duration:I

    .line 28734
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->size:I

    .line 28735
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v8

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v7, p1

    move v9, p2

    invoke-static/range {v1 .. v9}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(JJJLorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 28736
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->dc_id:I

    .line 28737
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->w:I

    .line 28738
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->h:I

    .line 28739
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->key:[B

    .line 28740
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$Video;->iv:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, 0x55555553

    .line 28744
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28745
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 28746
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 28747
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->user_id:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28748
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28749
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->caption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 28750
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28751
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->size:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28752
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28753
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->dc_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28754
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28755
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28756
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->key:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 28757
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->iv:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    return-void
.end method
