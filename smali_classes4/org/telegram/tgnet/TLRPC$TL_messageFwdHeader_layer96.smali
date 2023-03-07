.class public Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer96;
.super Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x559ebe6d


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45739
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3

    .line 45744
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 45746
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 45747
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 45749
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    .line 45750
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 45751
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 45752
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 45754
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 45755
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_post:I

    .line 45757
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 45758
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->post_author:Ljava/lang/String;

    .line 45760
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 45761
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 45763
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 45764
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_msg_id:I

    :cond_5
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 45769
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer96;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 45770
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 45771
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 45772
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 45774
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 45775
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 45776
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 45778
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 45779
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_post:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 45781
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 45782
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->post_author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 45784
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 45785
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 45787
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 45788
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_5
    return-void
.end method
