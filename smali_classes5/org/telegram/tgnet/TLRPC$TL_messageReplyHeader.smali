.class public Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;
.super Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29726
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 29730
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 29731
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_scheduled:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 29732
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 29733
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 29735
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    .line 29737
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    .line 29738
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 29740
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 29741
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 29743
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    .line 29744
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 29746
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 29747
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I

    .line 29749
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 29750
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;

    .line 29752
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c

    .line 29753
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x1cb5c415

    if-eq v0, v1, :cond_a

    if-nez p2, :cond_9

    return-void

    .line 29756
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "wrong Vector magic, got %x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29760
    :cond_a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_c

    .line 29762
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    .line 29766
    :cond_b
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 29769
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_d

    .line 29770
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_offset:I

    :cond_d
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    const v0, -0x5043f625

    .line 29775
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29776
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_scheduled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    .line 29777
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    .line 29778
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x200

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x201

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    .line 29779
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29780
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 29781
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29783
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 29784
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 29786
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 29787
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 29789
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    .line 29790
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 29792
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 29793
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29795
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 29796
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 29798
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    const v0, 0x1cb5c415

    .line 29799
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29800
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 29801
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_9

    .line 29803
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 29806
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 29807
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_a
    return-void
.end method
