.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sponsoredMessagesEmpty;
.super Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11898
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x1839490f

    .line 11903
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
