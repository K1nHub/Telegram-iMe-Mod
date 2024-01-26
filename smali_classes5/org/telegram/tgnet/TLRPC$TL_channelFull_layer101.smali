.class public Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer101;
.super Lorg/telegram/tgnet/TLRPC$TL_channelFull;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17633
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 17638
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 17639
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_participants:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 17640
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 17641
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 17642
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v2

    .line 17643
    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stats:Z

    .line 17644
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    .line 17645
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    .line 17646
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 17647
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    .line 17649
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 17650
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    .line 17652
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 17653
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    .line 17655
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 17656
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    .line 17658
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_9

    .line 17659
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->online_count:I

    .line 17661
    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    .line 17662
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_outbox_max_id:I

    .line 17663
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    .line 17664
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 17665
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 17666
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    move-result-object v0

    .line 17667
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v1, :cond_a

    .line 17668
    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 17670
    :cond_a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x1cb5c415

    if-eq v0, v1, :cond_c

    if-nez p2, :cond_b

    return-void

    .line 17673
    :cond_b
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

    .line 17677
    :cond_c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_5
    if-ge v2, v0, :cond_e

    .line 17679
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInfo;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    .line 17683
    :cond_d
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 17685
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_f

    .line 17686
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    .line 17688
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_10

    .line 17689
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    .line 17691
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_11

    .line 17692
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    .line 17694
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_12

    .line 17695
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StickerSet;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 17697
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_13

    .line 17698
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_min_id:I

    .line 17700
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_14

    .line 17701
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->folder_id:I

    .line 17703
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_15

    .line 17704
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    .line 17706
    :cond_15
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pts:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    const v0, -0x677d1aea

    .line 17710
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17711
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_participants:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, -0x9

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 17712
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x41

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 17713
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x81

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 17714
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x400

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x401

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 17715
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stats:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x1000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x1001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 17716
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17717
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17718
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17719
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 17720
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17722
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 17723
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17725
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 17726
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17728
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 17729
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17731
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_9

    .line 17732
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->online_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17734
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17735
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_outbox_max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17736
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17737
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 17738
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 17739
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const v0, 0x1cb5c415

    .line 17740
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17741
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 17742
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_a

    .line 17744
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 17746
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 17747
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17749
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    .line 17750
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17752
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_d

    .line 17753
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17755
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_e

    .line 17756
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 17758
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_f

    .line 17759
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_min_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17761
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_10

    .line 17762
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->folder_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17764
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_11

    .line 17765
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17767
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
