.class public Lorg/telegram/tgnet/TLRPC$TL_sendMessageChooseStickerAction;
.super Lorg/telegram/tgnet/TLRPC$SendMessageAction;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7099
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$SendMessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x4fa5394f

    .line 7104
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
