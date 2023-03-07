.class public Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x6368b021


# instance fields
.field public flags:I

.field public folder_id:I

.field public max_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public pts:I

.field public pts_count:I

.field public still_unread_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33062
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 33074
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 33076
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->folder_id:I

    .line 33078
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 33079
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->max_id:I

    .line 33080
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->still_unread_count:I

    .line 33081
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->pts:I

    .line 33082
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->pts_count:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 33086
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 33087
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 33088
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 33089
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->folder_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 33091
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 33092
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 33093
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->still_unread_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 33094
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 33095
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->pts_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
