.class public Lorg/telegram/tgnet/TLRPC$TL_sendMessageGeoLocationAction;
.super Lorg/telegram/tgnet/TLRPC$SendMessageAction;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7081
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$SendMessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x176f8ba1

    .line 7086
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
