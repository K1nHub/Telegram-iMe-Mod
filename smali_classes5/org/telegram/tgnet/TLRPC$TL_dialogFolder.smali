.class public Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;
.super Lorg/telegram/tgnet/TLRPC$Dialog;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x71bd134c


# instance fields
.field public folder:Lorg/telegram/tgnet/TLRPC$TL_folder;

.field public unread_muted_messages_count:I

.field public unread_muted_peers_count:I

.field public unread_unmuted_messages_count:I

.field public unread_unmuted_peers_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62940
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Dialog;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 62950
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62951
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    .line 62952
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_folder;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_folder;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->folder:Lorg/telegram/tgnet/TLRPC$TL_folder;

    .line 62953
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 62954
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->top_message:I

    .line 62955
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->unread_muted_peers_count:I

    .line 62956
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->unread_unmuted_peers_count:I

    .line 62957
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->unread_muted_messages_count:I

    .line 62958
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->unread_unmuted_messages_count:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 62962
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 62963
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->flags:I

    .line 62964
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 62965
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->folder:Lorg/telegram/tgnet/TLRPC$TL_folder;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_folder;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 62966
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 62967
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->top_message:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 62968
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->unread_muted_peers_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 62969
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->unread_unmuted_peers_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 62970
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->unread_muted_messages_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 62971
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->unread_unmuted_messages_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
