.class public Lorg/telegram/tgnet/TLRPC$TL_boolTrue;
.super Lorg/telegram/tgnet/TLRPC$Bool;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21355
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Bool;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x668d8a4b

    .line 21360
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
