.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;
.super Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x6fe1735b


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36399
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 36404
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    .line 36405
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_b:[B

    .line 36406
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 36410
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36411
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 36412
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_b:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 36413
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
