.class public Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

.field public user_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35740
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 35747
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;->user_id:J

    .line 35748
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SendMessageAction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, -0x3fe17a81

    .line 35752
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35753
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;->user_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 35754
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
