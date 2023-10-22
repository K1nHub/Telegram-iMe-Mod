.class public abstract Lorg/telegram/tgnet/TLRPC$ChatFull;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public about:Ljava/lang/String;

.field public admins_count:I

.field public antispam:Z

.field public available_min_id:I

.field public available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

.field public available_reactions_legacy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public banned_count:I

.field public blocked:Z

.field public bot_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$BotInfo;",
            ">;"
        }
    .end annotation
.end field

.field public call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

.field public call_msg_id:I

.field public can_delete_channel:Z

.field public can_set_location:Z

.field public can_set_stickers:Z

.field public can_set_username:Z

.field public can_view_participants:Z

.field public can_view_stats:Z

.field public chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

.field public exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

.field public flags:I

.field public flags2:I

.field public folder_id:I

.field public groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

.field public has_scheduled:Z

.field public hidden_prehistory:Z

.field public id:J

.field public inviterId:J

.field public invitesCount:I

.field public kicked_count:I

.field public linked_chat_id:J

.field public location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

.field public migrated_from_chat_id:J

.field public migrated_from_max_id:I

.field public notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

.field public online_count:I

.field public participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

.field public participants_count:I

.field public participants_hidden:Z

.field public pending_suggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pinned_msg_id:I

.field public pts:I

.field public read_inbox_max_id:I

.field public read_outbox_max_id:I

.field public recent_requesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public requests_pending:I

.field public slowmode_next_send_date:I

.field public slowmode_seconds:I

.field public stats_dc:I

.field public stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

.field public stories:Lorg/telegram/tgnet/TLRPC$PeerStories;

.field public stories_pinned_available:Z

.field public theme_emoticon:Ljava/lang/String;

.field public translations_disabled:Z

.field public ttl_period:I

.field public unread_count:I

.field public unread_important_count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13263
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 13269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    .line 13304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pending_suggestions:Ljava/util/ArrayList;

    .line 13306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->recent_requesters:Ljava/util/ArrayList;

    .line 13310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions_legacy:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 13396
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer123;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer123;-><init>()V

    goto/16 :goto_0

    .line 13378
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer72;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer72;-><init>()V

    goto/16 :goto_0

    .line 13330
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull;-><init>()V

    goto/16 :goto_0

    .line 13348
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer134;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer134;-><init>()V

    goto/16 :goto_0

    .line 13345
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer135;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer135;-><init>()V

    goto/16 :goto_0

    .line 13408
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer131;-><init>()V

    goto/16 :goto_0

    .line 13417
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer133;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer133;-><init>()V

    goto/16 :goto_0

    .line 13411
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer132;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer132;-><init>()V

    goto/16 :goto_0

    .line 13432
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer135;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer135;-><init>()V

    goto/16 :goto_0

    .line 13414
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer132;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer132;-><init>()V

    goto/16 :goto_0

    .line 13357
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer87;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer87;-><init>()V

    goto/16 :goto_0

    .line 13366
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer110;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer110;-><init>()V

    goto/16 :goto_0

    .line 13402
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer124;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer124;-><init>()V

    goto/16 :goto_0

    .line 13426
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer98;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer98;-><init>()V

    goto/16 :goto_0

    .line 13351
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer98;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer98;-><init>()V

    goto/16 :goto_0

    .line 13423
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer121;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer121;-><init>()V

    goto/16 :goto_0

    .line 13375
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;-><init>()V

    goto/16 :goto_0

    .line 13369
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer103;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer103;-><init>()V

    goto/16 :goto_0

    .line 13390
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer122;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer122;-><init>()V

    goto/16 :goto_0

    .line 13354
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer99;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer99;-><init>()V

    goto/16 :goto_0

    .line 13435
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;-><init>()V

    goto/16 :goto_0

    .line 13393
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer123;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer123;-><init>()V

    goto/16 :goto_0

    .line 13333
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer162;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer162;-><init>()V

    goto/16 :goto_0

    .line 13363
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer121;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer121;-><init>()V

    goto :goto_0

    .line 13399
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer124;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer124;-><init>()V

    goto :goto_0

    .line 13360
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer122;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer122;-><init>()V

    goto :goto_0

    .line 13429
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer92;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer92;-><init>()V

    goto :goto_0

    .line 13339
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer144;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer144;-><init>()V

    goto :goto_0

    .line 13420
    :sswitch_1c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer133;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer133;-><init>()V

    goto :goto_0

    .line 13342
    :sswitch_1d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer139;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer139;-><init>()V

    goto :goto_0

    .line 13336
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer144;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer144;-><init>()V

    goto :goto_0

    .line 13441
    :sswitch_1f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer89;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer89;-><init>()V

    goto :goto_0

    .line 13327
    :sswitch_20
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;-><init>()V

    goto :goto_0

    .line 13384
    :sswitch_21
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer67;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer67;-><init>()V

    goto :goto_0

    .line 13387
    :sswitch_22
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;-><init>()V

    goto :goto_0

    .line 13372
    :sswitch_23
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer101;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer101;-><init>()V

    goto :goto_0

    .line 13381
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;-><init>()V

    goto :goto_0

    .line 13438
    :sswitch_25
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer70;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer70;-><init>()V

    goto :goto_0

    .line 13405
    :sswitch_26
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer131;-><init>()V

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 13445
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "can\'t parse magic %x in ChatFull"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .line 13448
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 13449
    iget-object p0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    if-nez p0, :cond_4

    .line 13450
    iget-object p0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions_legacy:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 13451
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;-><init>()V

    .line 13452
    :goto_2
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions_legacy:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 13453
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;-><init>()V

    .line 13454
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions_legacy:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    .line 13455
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13457
    :cond_2
    iput-object p0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    goto :goto_3

    .line 13459
    :cond_3
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;-><init>()V

    iput-object p0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    :cond_4
    :goto_3
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75e1d67d -> :sswitch_26
        -0x6a34a0a9 -> :sswitch_25
        -0x68411a9e -> :sswitch_24
        -0x677d1aea -> :sswitch_23
        -0x61cbe221 -> :sswitch_22
        -0x3c2aaed1 -> :sswitch_21
        -0x362ceec8 -> :sswitch_20
        -0x3449d770 -> :sswitch_1f
        -0x2e711dda -> :sswitch_1e
        -0x1ec3c2e0 -> :sswitch_1d
        -0x164d85e9 -> :sswitch_1c
        -0x159759e7 -> :sswitch_1b
        -0x122d586f -> :sswitch_1a
        -0x10c59533 -> :sswitch_19
        -0xf93bfe8 -> :sswitch_18
        -0xf1998d6 -> :sswitch_17
        -0xdcaaaf9 -> :sswitch_16
        -0xcb8b50a -> :sswitch_15
        -0x54ce55d -> :sswitch_14
        0x3648977 -> :sswitch_13
        0xdc8c181 -> :sswitch_12
        0x10916653 -> :sswitch_11
        0x17f45fcf -> :sswitch_10
        0x1b7c9db3 -> :sswitch_f
        0x1c87a71a -> :sswitch_e
        0x22a235da -> :sswitch_d
        0x2548c037 -> :sswitch_c
        0x2d895c74 -> :sswitch_b
        0x2e02a614 -> :sswitch_a
        0x2f532f3c -> :sswitch_9
        0x46a6ffb4 -> :sswitch_8
        0x49a0a5d9 -> :sswitch_7
        0x4dbdc099 -> :sswitch_6
        0x548c3f93 -> :sswitch_5
        0x56662e2e -> :sswitch_4
        0x59cff963 -> :sswitch_3
        0x723027bd -> :sswitch_2
        0x76af5481 -> :sswitch_1
        0x7a7de4f7 -> :sswitch_0
    .end sparse-switch
.end method
