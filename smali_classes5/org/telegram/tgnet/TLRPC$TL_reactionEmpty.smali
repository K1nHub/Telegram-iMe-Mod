.class public Lorg/telegram/tgnet/TLRPC$TL_reactionEmpty;
.super Lorg/telegram/tgnet/TLRPC$Reaction;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55824
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Reaction;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x79f5d419

    .line 55829
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
