.class public Lorg/telegram/tgnet/TLRPC$TL_boolFalse;
.super Lorg/telegram/tgnet/TLRPC$Bool;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21364
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Bool;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x438668c9

    .line 21369
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
