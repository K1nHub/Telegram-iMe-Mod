.class public Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileUploaded;
.super Lorg/telegram/tgnet/TLRPC$InputSecureFile;
.source "TLRPC.java"


# instance fields
.field public file_hash:[B

.field public id:J

.field public md5_checksum:Ljava/lang/String;

.field public parts:I

.field public secret:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44920
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputSecureFile;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 44930
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileUploaded;->id:J

    .line 44931
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileUploaded;->parts:I

    .line 44932
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileUploaded;->md5_checksum:Ljava/lang/String;

    .line 44933
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileUploaded;->file_hash:[B

    .line 44934
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileUploaded;->secret:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, 0x3334b0f0

    .line 44938
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 44939
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileUploaded;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 44940
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileUploaded;->parts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 44941
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileUploaded;->md5_checksum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 44942
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileUploaded;->file_hash:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 44943
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileUploaded;->secret:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    return-void
.end method
