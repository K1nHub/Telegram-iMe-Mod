.class public Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiGenericAnimations;
.super Lorg/telegram/tgnet/TLRPC$InputStickerSet;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33650
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputStickerSet;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x4c4d4ce

    .line 33655
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
