.class public abstract Lorg/telegram/tgnet/TLRPC$Chat;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public access_hash:J

.field public admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field public admin_rights_layer92:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;

.field public banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field public banned_rights_layer92:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;

.field public broadcast:Z

.field public call_active:Z

.field public call_not_empty:Z

.field public creator:Z

.field public date:I

.field public deactivated:Z

.field public default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field public explicit_content:Z

.field public fake:Z

.field public flags:I

.field public flags2:I

.field public forum:Z

.field public gigagroup:Z

.field public has_geo:Z

.field public has_link:Z

.field public id:J

.field public join_request:Z

.field public join_to_send:Z

.field public kicked:Z

.field public left:Z

.field public megagroup:Z

.field public migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public min:Z

.field public moderator:Z

.field public noforwards:Z

.field public participants_count:I

.field public photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

.field public restricted:Z

.field public restriction_reason:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;",
            ">;"
        }
    .end annotation
.end field

.field public scam:Z

.field public signatures:Z

.field public slowmode_enabled:Z

.field public title:Ljava/lang/String;

.field public until_date:I

.field public username:Ljava/lang/String;

.field public usernames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_username;",
            ">;"
        }
    .end annotation
.end field

.field public verified:Z

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42698
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 42749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/util/ArrayList;

    .line 42759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 42816
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;-><init>()V

    goto/16 :goto_0

    .line 42831
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chat_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chat_old;-><init>()V

    goto/16 :goto_0

    .line 42792
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_old;-><init>()V

    goto/16 :goto_0

    .line 42834
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;-><init>()V

    goto/16 :goto_0

    .line 42774
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer104;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer104;-><init>()V

    goto/16 :goto_0

    .line 42789
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;-><init>()V

    goto/16 :goto_0

    .line 42777
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer77;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer77;-><init>()V

    goto/16 :goto_0

    .line 42783
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chat;-><init>()V

    goto/16 :goto_0

    .line 42810
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chat_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chat_layer131;-><init>()V

    goto :goto_0

    .line 42765
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer52;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer52;-><init>()V

    goto :goto_0

    .line 42780
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;-><init>()V

    goto :goto_0

    .line 42813
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer131;-><init>()V

    goto :goto_0

    .line 42807
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;-><init>()V

    goto :goto_0

    .line 42795
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer72;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer72;-><init>()V

    goto :goto_0

    .line 42771
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden_layer131;-><init>()V

    goto :goto_0

    .line 42828
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden_old;-><init>()V

    goto :goto_0

    .line 42801
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chat_layer92;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chat_layer92;-><init>()V

    goto :goto_0

    .line 42786
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer131;-><init>()V

    goto :goto_0

    .line 42804
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer92;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer92;-><init>()V

    goto :goto_0

    .line 42819
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;-><init>()V

    goto :goto_0

    .line 42768
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty_layer131;-><init>()V

    goto :goto_0

    .line 42798
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;-><init>()V

    goto :goto_0

    .line 42822
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel;-><init>()V

    goto :goto_0

    .line 42825
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer147;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer147;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 42838
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in Chat"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 42841
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7d9e539f -> :sswitch_17
        -0x7cda6b9c -> :sswitch_16
        -0x7ac887b1 -> :sswitch_15
        -0x645d2800 -> :sswitch_14
        -0x5eb235ae -> :sswitch_13
        -0x37768b54 -> :sswitch_12
        -0x2ce569e2 -> :sswitch_11
        -0x26e322ac -> :sswitch_10
        -0x4f333bf -> :sswitch_f
        0x7328bdb -> :sswitch_e
        0xcb44b1c -> :sswitch_d
        0x17d493d5 -> :sswitch_c
        0x289da732 -> :sswitch_b
        0x29562865 -> :sswitch_a
        0x2d85832c -> :sswitch_9
        0x3bda1bde -> :sswitch_8
        0x41cbf256 -> :sswitch_7
        0x450b7115 -> :sswitch_6
        0x4b1b7506 -> :sswitch_5
        0x4df30834 -> :sswitch_4
        0x6592a1a7 -> :sswitch_3
        0x678e9587 -> :sswitch_2
        0x6e9c9bc7 -> :sswitch_1
        0x7312bc48 -> :sswitch_0
    .end sparse-switch
.end method

.method protected static mergeAdminRights(Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42871
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    .line 42872
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->change_info:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 42873
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->post_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 42874
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->edit_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    .line 42875
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->delete_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    .line 42876
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->ban_users:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    .line 42877
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->invite_users:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    .line 42878
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->pin_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    .line 42879
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->add_admins:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    return-object v0
.end method

.method protected static mergeBannedRights(Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42850
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    .line 42851
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->view_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 42852
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 42853
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_media:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 42854
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_stickers:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 42855
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_gifs:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 42856
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_games:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 42857
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_inline:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 42858
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->embed_links:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 42859
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    const/4 v1, 0x1

    .line 42860
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 42861
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 42862
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 42863
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->until_date:I

    iput p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    return-object v0
.end method


# virtual methods
.method public isChannel()Z
    .locals 1

    .line 42705
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGroup()Z
    .locals 1

    .line 42709
    invoke-virtual {p0}, Lorg/telegram/tgnet/TLRPC$Chat;->isChannel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
