.class public Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
.super Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x5a17b5e5


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33920
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 33925
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J

    .line 33926
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->access_hash:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 33930
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 33931
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 33932
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
