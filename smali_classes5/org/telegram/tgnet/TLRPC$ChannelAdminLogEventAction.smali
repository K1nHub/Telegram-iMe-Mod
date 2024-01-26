.class public abstract Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45008
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 45032
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionEditMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionEditMessage;-><init>()V

    goto/16 :goto_0

    .line 45125
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeHistoryTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeHistoryTTL;-><init>()V

    goto/16 :goto_0

    .line 45038
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsername;-><init>()V

    goto/16 :goto_0

    .line 45140
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleAntiSpam;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleAntiSpam;-><init>()V

    goto/16 :goto_0

    .line 45086
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionTogglePreHistoryHidden;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionTogglePreHistoryHidden;-><init>()V

    goto/16 :goto_0

    .line 45152
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeProfilePeerColor;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeProfilePeerColor;-><init>()V

    goto/16 :goto_0

    .line 45077
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionPinTopic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionPinTopic;-><init>()V

    goto/16 :goto_0

    .line 45062
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionExportedInviteDelete;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionExportedInviteDelete;-><init>()V

    goto/16 :goto_0

    .line 45134
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionCreateTopic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionCreateTopic;-><init>()V

    goto/16 :goto_0

    .line 45149
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangePeerColor;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangePeerColor;-><init>()V

    goto/16 :goto_0

    .line 45095
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleGroupCallSetting;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleGroupCallSetting;-><init>()V

    goto/16 :goto_0

    .line 45101
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;-><init>()V

    goto/16 :goto_0

    .line 45050
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleSlowMode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleSlowMode;-><init>()V

    goto/16 :goto_0

    .line 45146
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeBackgroundEmoji;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeBackgroundEmoji;-><init>()V

    goto/16 :goto_0

    .line 45044
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangePhoto;-><init>()V

    goto/16 :goto_0

    .line 45119
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDeleteMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDeleteMessage;-><init>()V

    goto/16 :goto_0

    .line 45056
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionExportedInviteRevoke;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionExportedInviteRevoke;-><init>()V

    goto/16 :goto_0

    .line 45158
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeEmojiStatus;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeEmojiStatus;-><init>()V

    goto/16 :goto_0

    .line 45068
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantVolume;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantVolume;-><init>()V

    goto/16 :goto_0

    .line 45143
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeColor;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeColor;-><init>()V

    goto/16 :goto_0

    .line 45155
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeWallpaper;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeWallpaper;-><init>()V

    goto/16 :goto_0

    .line 45023
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDefaultBannedRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDefaultBannedRights;-><init>()V

    goto/16 :goto_0

    .line 45065
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleSignatures;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleSignatures;-><init>()V

    goto/16 :goto_0

    .line 45104
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionStartGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionStartGroupCall;-><init>()V

    goto/16 :goto_0

    .line 45113
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleInvites;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleInvites;-><init>()V

    goto/16 :goto_0

    .line 45083
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoin;-><init>()V

    goto/16 :goto_0

    .line 45041
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeLocation;-><init>()V

    goto/16 :goto_0

    .line 45110
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeLinkedChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeLinkedChat;-><init>()V

    goto/16 :goto_0

    .line 45071
    :sswitch_1c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleForum;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleForum;-><init>()V

    goto/16 :goto_0

    .line 45053
    :sswitch_1d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;-><init>()V

    goto/16 :goto_0

    .line 45026
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeTheme;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeTheme;-><init>()V

    goto/16 :goto_0

    .line 45020
    :sswitch_1f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantMute;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantMute;-><init>()V

    goto/16 :goto_0

    .line 45029
    :sswitch_20
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantLeave;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantLeave;-><init>()V

    goto/16 :goto_0

    .line 45074
    :sswitch_21
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionEditTopic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionEditTopic;-><init>()V

    goto :goto_0

    .line 45131
    :sswitch_22
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsernames;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsernames;-><init>()V

    goto :goto_0

    .line 45092
    :sswitch_23
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionUpdatePinned;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionUpdatePinned;-><init>()V

    goto :goto_0

    .line 45035
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionExportedInviteEdit;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionExportedInviteEdit;-><init>()V

    goto :goto_0

    .line 45122
    :sswitch_25
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeTitle;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeTitle;-><init>()V

    goto :goto_0

    .line 45080
    :sswitch_26
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleBan;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleBan;-><init>()V

    goto :goto_0

    .line 45116
    :sswitch_27
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantUnmute;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantUnmute;-><init>()V

    goto :goto_0

    .line 45098
    :sswitch_28
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantInvite;-><init>()V

    goto :goto_0

    .line 45014
    :sswitch_29
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDiscardGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDiscardGroupCall;-><init>()V

    goto :goto_0

    .line 45047
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;-><init>()V

    goto :goto_0

    .line 45128
    :sswitch_2b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleNoForwards;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleNoForwards;-><init>()V

    goto :goto_0

    .line 45107
    :sswitch_2c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAvailableReactions;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAvailableReactions;-><init>()V

    goto :goto_0

    .line 45017
    :sswitch_2d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeStickerSet;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeStickerSet;-><init>()V

    goto :goto_0

    .line 45089
    :sswitch_2e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByRequest;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByRequest;-><init>()V

    goto :goto_0

    .line 45137
    :sswitch_2f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDeleteTopic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDeleteTopic;-><init>()V

    goto :goto_0

    .line 45059
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionStopPoll;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionStopPoll;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 45162
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in ChannelAdminLogEventAction"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 45165
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70f869bd -> :sswitch_30
        -0x51e976f7 -> :sswitch_2f
        -0x5049ebb6 -> :sswitch_2e
        -0x4e3c3559 -> :sswitch_2d
        -0x41b1f108 -> :sswitch_2c
        -0x34d5389a -> :sswitch_2b
        -0x2a9898f0 -> :sswitch_2a
        -0x24606ec0 -> :sswitch_29
        -0x1ce3cb28 -> :sswitch_28
        -0x19bbd640 -> :sswitch_27
        -0x1927c282 -> :sswitch_26
        -0x192047db -> :sswitch_25
        -0x16f144a7 -> :sswitch_24
        -0x1617d3e8 -> :sswitch_23
        -0xfb04c57 -> :sswitch_22
        -0xf901df8 -> :sswitch_21
        -0x768880e -> :sswitch_20
        -0x6dbdb2e -> :sswitch_1f
        -0x196fe73 -> :sswitch_1e
        -0x1603ea8 -> :sswitch_1d
        0x2cc6383 -> :sswitch_1c
        0x50c7ac8 -> :sswitch_1b
        0xe6b76ae -> :sswitch_1a
        0x183040d3 -> :sswitch_19
        0x1b7907ae -> :sswitch_18
        0x23209745 -> :sswitch_17
        0x26ae0971 -> :sswitch_16
        0x2df5fc0a -> :sswitch_15
        0x31bb5d52 -> :sswitch_14
        0x3c2b247b -> :sswitch_13
        0x3e7f6847 -> :sswitch_12
        0x3ea9feb1 -> :sswitch_11
        0x410a134e -> :sswitch_10
        0x42e047bb -> :sswitch_f
        0x434bd2af -> :sswitch_e
        0x445fc434 -> :sswitch_d
        0x53909779 -> :sswitch_c
        0x55188a2e -> :sswitch_b
        0x56d6a247 -> :sswitch_a
        0x5796e780 -> :sswitch_9
        0x58707d28 -> :sswitch_8
        0x5a50fca4 -> :sswitch_7
        0x5d8d353b -> :sswitch_6
        0x5e477b25 -> :sswitch_5
        0x5f5c95f1 -> :sswitch_4
        0x64f36dfc -> :sswitch_3
        0x6a4afc38 -> :sswitch_2
        0x6e941a38 -> :sswitch_1
        0x709b2405 -> :sswitch_0
    .end sparse-switch
.end method
