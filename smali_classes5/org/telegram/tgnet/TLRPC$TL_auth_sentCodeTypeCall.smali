.class public Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeCall;
.super Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7286
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 7291
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x5353e5a7

    .line 7295
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7296
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
