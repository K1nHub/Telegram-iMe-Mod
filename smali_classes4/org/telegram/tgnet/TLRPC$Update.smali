.class public abstract Lorg/telegram/tgnet/TLRPC$Update;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31275
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Update;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 31395
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;-><init>()V

    goto/16 :goto_0

    .line 31476
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedRingtones;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateSavedRingtones;-><init>()V

    goto/16 :goto_0

    .line 31497
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactsReset;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateContactsReset;-><init>()V

    goto/16 :goto_0

    .line 31533
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePendingJoinRequests;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePendingJoinRequests;-><init>()V

    goto/16 :goto_0

    .line 31392
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateRecentReactions;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateRecentReactions;-><init>()V

    goto/16 :goto_0

    .line 31320
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;-><init>()V

    goto/16 :goto_0

    .line 31323
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePeerSettings;-><init>()V

    goto/16 :goto_0

    .line 31380
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionOutbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionOutbox;-><init>()V

    goto/16 :goto_0

    .line 31560
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;-><init>()V

    goto/16 :goto_0

    .line 31542
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;-><init>()V

    goto/16 :goto_0

    .line 31500
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;-><init>()V

    goto/16 :goto_0

    .line 31314
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;-><init>()V

    goto/16 :goto_0

    .line 31452
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;-><init>()V

    goto/16 :goto_0

    .line 31296
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedChannelMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedChannelMessages;-><init>()V

    goto/16 :goto_0

    .line 31281
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageExtendedMedia;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMessageExtendedMedia;-><init>()V

    goto/16 :goto_0

    .line 31302
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;-><init>()V

    goto/16 :goto_0

    .line 31407
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateLoginToken;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateLoginToken;-><init>()V

    goto/16 :goto_0

    .line 31425
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateLangPack;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateLangPack;-><init>()V

    goto/16 :goto_0

    .line 31566
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatDefaultBannedRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatDefaultBannedRights;-><init>()V

    goto/16 :goto_0

    .line 31329
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;-><init>()V

    goto/16 :goto_0

    .line 31368
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands;-><init>()V

    goto/16 :goto_0

    .line 31548
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateLangPackTooLong;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateLangPackTooLong;-><init>()V

    goto/16 :goto_0

    .line 31401
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;-><init>()V

    goto/16 :goto_0

    .line 31347
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewScheduledMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewScheduledMessage;-><init>()V

    goto/16 :goto_0

    .line 31551
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;-><init>()V

    goto/16 :goto_0

    .line 31527
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilters;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilters;-><init>()V

    goto/16 :goto_0

    .line 31338
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;-><init>()V

    goto/16 :goto_0

    .line 31530
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateRecentEmojiStatuses;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateRecentEmojiStatuses;-><init>()V

    goto/16 :goto_0

    .line 31311
    :sswitch_1c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;-><init>()V

    goto/16 :goto_0

    .line 31503
    :sswitch_1d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;-><init>()V

    goto/16 :goto_0

    .line 31359
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserEmojiStatus;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserEmojiStatus;-><init>()V

    goto/16 :goto_0

    .line 31458
    :sswitch_1f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilter;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilter;-><init>()V

    goto/16 :goto_0

    .line 31467
    :sswitch_20
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCallSignalingData;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCallSignalingData;-><init>()V

    goto/16 :goto_0

    .line 31461
    :sswitch_21
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerBlocked;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePeerBlocked;-><init>()V

    goto/16 :goto_0

    .line 31518
    :sswitch_22
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUser;-><init>()V

    goto/16 :goto_0

    .line 31344
    :sswitch_23
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;-><init>()V

    goto/16 :goto_0

    .line 31446
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;-><init>()V

    goto/16 :goto_0

    .line 31539
    :sswitch_25
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;-><init>()V

    goto/16 :goto_0

    .line 31341
    :sswitch_26
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateFolderPeers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateFolderPeers;-><init>()V

    goto/16 :goto_0

    .line 31575
    :sswitch_27
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedTopic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedTopic;-><init>()V

    goto/16 :goto_0

    .line 31524
    :sswitch_28
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateAttachMenuBots;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateAttachMenuBots;-><init>()V

    goto/16 :goto_0

    .line 31305
    :sswitch_29
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;-><init>()V

    goto/16 :goto_0

    .line 31317
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateWebViewResultSent;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateWebViewResultSent;-><init>()V

    goto/16 :goto_0

    .line 31569
    :sswitch_2b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotMenuButton;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotMenuButton;-><init>()V

    goto/16 :goto_0

    .line 31413
    :sswitch_2c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;-><init>()V

    goto/16 :goto_0

    .line 31350
    :sswitch_2d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;-><init>()V

    goto/16 :goto_0

    .line 31416
    :sswitch_2e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;-><init>()V

    goto/16 :goto_0

    .line 31554
    :sswitch_2f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;-><init>()V

    goto/16 :goto_0

    .line 31365
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;-><init>()V

    goto/16 :goto_0

    .line 31563
    :sswitch_31
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;-><init>()V

    goto/16 :goto_0

    .line 31326
    :sswitch_32
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;-><init>()V

    goto/16 :goto_0

    .line 31479
    :sswitch_33
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateTranscribedAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateTranscribedAudio;-><init>()V

    goto/16 :goto_0

    .line 31572
    :sswitch_34
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedTopics;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedTopics;-><init>()V

    goto/16 :goto_0

    .line 31386
    :sswitch_35
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedEmojiStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedEmojiStickers;-><init>()V

    goto/16 :goto_0

    .line 31473
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;-><init>()V

    goto/16 :goto_0

    .line 31290
    :sswitch_37
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChat;-><init>()V

    goto/16 :goto_0

    .line 31299
    :sswitch_38
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;-><init>()V

    goto/16 :goto_0

    .line 31515
    :sswitch_39
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;-><init>()V

    goto/16 :goto_0

    .line 31362
    :sswitch_3a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;-><init>()V

    goto/16 :goto_0

    .line 31437
    :sswitch_3b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;-><init>()V

    goto/16 :goto_0

    .line 31464
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedMessages;-><init>()V

    goto/16 :goto_0

    .line 31422
    :sswitch_3d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;-><init>()V

    goto/16 :goto_0

    .line 31434
    :sswitch_3e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;-><init>()V

    goto/16 :goto_0

    .line 31356
    :sswitch_3f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;-><init>()V

    goto/16 :goto_0

    .line 31398
    :sswitch_40
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateFavedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateFavedStickers;-><init>()V

    goto/16 :goto_0

    .line 31389
    :sswitch_41
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;-><init>()V

    goto/16 :goto_0

    .line 31383
    :sswitch_42
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;-><init>()V

    goto/16 :goto_0

    .line 31443
    :sswitch_43
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;-><init>()V

    goto/16 :goto_0

    .line 31431
    :sswitch_44
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;-><init>()V

    goto/16 :goto_0

    .line 31308
    :sswitch_45
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;-><init>()V

    goto/16 :goto_0

    .line 31509
    :sswitch_46
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageForwards;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageForwards;-><init>()V

    goto/16 :goto_0

    .line 31521
    :sswitch_47
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupInvitePrivacyForbidden;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupInvitePrivacyForbidden;-><init>()V

    goto/16 :goto_0

    .line 31512
    :sswitch_48
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;-><init>()V

    goto/16 :goto_0

    .line 31419
    :sswitch_49
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;-><init>()V

    goto/16 :goto_0

    .line 31374
    :sswitch_4a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;-><init>()V

    goto/16 :goto_0

    .line 31287
    :sswitch_4b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;-><init>()V

    goto/16 :goto_0

    .line 31332
    :sswitch_4c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;-><init>()V

    goto/16 :goto_0

    .line 31482
    :sswitch_4d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerLocated;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePeerLocated;-><init>()V

    goto/16 :goto_0

    .line 31410
    :sswitch_4e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;-><init>()V

    goto/16 :goto_0

    .line 31428
    :sswitch_4f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelAvailableMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelAvailableMessages;-><init>()V

    goto/16 :goto_0

    .line 31284
    :sswitch_50
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;-><init>()V

    goto/16 :goto_0

    .line 31455
    :sswitch_51
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;-><init>()V

    goto/16 :goto_0

    .line 31449
    :sswitch_52
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;-><init>()V

    goto/16 :goto_0

    .line 31491
    :sswitch_53
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilterOrder;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilterOrder;-><init>()V

    goto :goto_0

    .line 31440
    :sswitch_54
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateConfig;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateConfig;-><init>()V

    goto :goto_0

    .line 31293
    :sswitch_55
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;-><init>()V

    goto :goto_0

    .line 31488
    :sswitch_56
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;-><init>()V

    goto :goto_0

    .line 31485
    :sswitch_57
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateRecentStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateRecentStickers;-><init>()V

    goto :goto_0

    .line 31377
    :sswitch_58
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;-><init>()V

    goto :goto_0

    .line 31494
    :sswitch_59
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;-><init>()V

    goto :goto_0

    .line 31557
    :sswitch_5a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;-><init>()V

    goto :goto_0

    .line 31506
    :sswitch_5b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;-><init>()V

    goto :goto_0

    .line 31536
    :sswitch_5c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;-><init>()V

    goto :goto_0

    .line 31335
    :sswitch_5d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;-><init>()V

    goto :goto_0

    .line 31470
    :sswitch_5e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateTranscribeAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateTranscribeAudio;-><init>()V

    goto :goto_0

    .line 31371
    :sswitch_5f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGeoLiveViewed;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGeoLiveViewed;-><init>()V

    goto :goto_0

    .line 31353
    :sswitch_60
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMoveStickerSetToTop;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMoveStickerSetToTop;-><init>()V

    goto :goto_0

    .line 31404
    :sswitch_61
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;-><init>()V

    goto :goto_0

    .line 31545
    :sswitch_62
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateTheme;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateTheme;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 31579
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in Update"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 31582
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7de9045d -> :sswitch_62
        -0x7cb78510 -> :sswitch_61
        -0x7903307b -> :sswitch_60
        -0x78e046c7 -> :sswitch_5f
        -0x779e8f70 -> :sswitch_5e
        -0x737736dd -> :sswitch_5d
        -0x71a1678d -> :sswitch_5c
        -0x6f799312 -> :sswitch_5b
        -0x6dd191f0 -> :sswitch_5a
        -0x6c8acbe2 -> :sswitch_59
        -0x67a2c545 -> :sswitch_58
        -0x65bdd3e0 -> :sswitch_57
        -0x6368b021 -> :sswitch_56
        -0x5df24f1b -> :sswitch_55
        -0x5dd622fa -> :sswitch_54
        -0x5a28defb -> :sswitch_53
        -0x587b76dc -> :sswitch_52
        -0x54f094e2 -> :sswitch_51
        -0x535e9a85 -> :sswitch_50
        -0x4dc03968 -> :sswitch_4f
        -0x4b5d1773 -> :sswitch_4e
        -0x4b503050 -> :sswitch_4d
        -0x48a06657 -> :sswitch_4c
        -0x4464465b -> :sswitch_4b
        -0x413d9711 -> :sswitch_4a
        -0x3fe17a81 -> :sswitch_49
        -0x3cd2a4ee -> :sswitch_48
        -0x330f752a -> :sswitch_47
        -0x2d65d80c -> :sswitch_46
        -0x294e6aba -> :sswitch_45
        -0x28359e5e -> :sswitch_44
        -0x1e9ba63d -> :sswitch_43
        -0x1cd0c289 -> :sswitch_42
        -0x1bfc8f5d -> :sswitch_41
        -0x1aee6693 -> :sswitch_40
        -0x1a420722 -> :sswitch_3f
        -0x15d6faa3 -> :sswitch_3e
        -0x141b97e7 -> :sswitch_3d
        -0x127a154b -> :sswitch_3c
        -0x11c4d8d6 -> :sswitch_3b
        -0xdd953f8 -> :sswitch_3a
        -0xdd87974 -> :sswitch_39
        -0xd1424b2 -> :sswitch_38
        -0x76595b2 -> :sswitch_37
        -0x5f0c35e -> :sswitch_36
        -0x4b3b694 -> :sswitch_35
        -0x1e679fe -> :sswitch_34
        0x84cd5a -> :sswitch_33
        0x5492a13 -> :sswitch_32
        0x7761198 -> :sswitch_31
        0xb783982 -> :sswitch_30
        0xbb2d201 -> :sswitch_2f
        0x108d941f -> :sswitch_2e
        0x12bcbd9a -> :sswitch_2d
        0x14b24500 -> :sswitch_2c
        0x14b85813 -> :sswitch_2b
        0x1592b79d -> :sswitch_2a
        0x1710f156 -> :sswitch_29
        0x17b7a20b -> :sswitch_28
        0x192efbe3 -> :sswitch_27
        0x19360dc0 -> :sswitch_26
        0x1b3f4df7 -> :sswitch_25
        0x1b49ec6d -> :sswitch_24
        0x1f2b0afd -> :sswitch_23
        0x20529438 -> :sswitch_22
        0x246a4b22 -> :sswitch_21
        0x2661bf09 -> :sswitch_20
        0x26ffde7d -> :sswitch_1f
        0x28373599 -> :sswitch_1e
        0x2f2ba99f -> :sswitch_1d
        0x2f2f21bf -> :sswitch_1c
        0x30f443db -> :sswitch_1b
        0x31c24808 -> :sswitch_1a
        0x3504914f -> :sswitch_19
        0x38fe25b7 -> :sswitch_18
        0x39a51dfb -> :sswitch_17
        0x3dda5451 -> :sswitch_16
        0x46560264 -> :sswitch_15
        0x4d712f2e -> :sswitch_14
        0x4e90bfd6 -> :sswitch_13
        0x54c01850 -> :sswitch_12
        0x56022f4d -> :sswitch_11
        0x564fe691 -> :sswitch_10
        0x571d2742 -> :sswitch_f
        0x5a73a98c -> :sswitch_e
        0x5bb98608 -> :sswitch_d
        0x5e1b3cb8 -> :sswitch_c
        0x62ba04d9 -> :sswitch_b
        0x635b4c09 -> :sswitch_a
        0x688a30aa -> :sswitch_9
        0x68c13933 -> :sswitch_8
        0x695c9e7c -> :sswitch_7
        0x6a7e7366 -> :sswitch_6
        0x6e6fe51c -> :sswitch_5
        0x6f7863f4 -> :sswitch_4
        0x7063c3db -> :sswitch_3
        0x7084a7be -> :sswitch_2
        0x74d8be99 -> :sswitch_1
        0x7f891213 -> :sswitch_0
    .end sparse-switch
.end method
