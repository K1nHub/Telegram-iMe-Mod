.class public Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# instance fields
.field public draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36040
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 36049
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;->flags:I

    .line 36050
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 36051
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 36052
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;->top_msg_id:I

    .line 36054
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$DraftMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x1b49ec6d

    .line 36058
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36059
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36060
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 36061
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 36062
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;->top_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36064
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
