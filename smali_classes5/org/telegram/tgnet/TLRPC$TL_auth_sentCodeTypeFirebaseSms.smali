.class public Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFirebaseSms;
.super Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7372
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 7377
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7379
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->nonce:[B

    .line 7381
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7382
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->receipt:Ljava/lang/String;

    .line 7384
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 7385
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->push_timeout:I

    .line 7387
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x1a84ebce

    .line 7391
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7392
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7393
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7394
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->nonce:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 7396
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7397
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->receipt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7399
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 7400
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->push_timeout:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7402
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
