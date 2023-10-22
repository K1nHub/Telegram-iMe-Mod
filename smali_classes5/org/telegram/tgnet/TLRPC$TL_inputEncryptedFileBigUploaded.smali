.class public Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;
.super Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x2dc173c8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36015
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 36020
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J

    .line 36021
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->parts:I

    .line 36022
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->key_fingerprint:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 36026
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36027
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 36028
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->parts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36029
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->key_fingerprint:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
