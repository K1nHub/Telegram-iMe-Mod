.class public Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice_layer111;
.super Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9108
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 9112
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice;->value:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x638fe46b

    .line 9116
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9117
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice;->value:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
