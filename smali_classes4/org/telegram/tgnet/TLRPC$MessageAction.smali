.class public abstract Lorg/telegram/tgnet/TLRPC$MessageAction;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public address:Ljava/lang/String;

.field public amount:J

.field public call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

.field public call_id:J

.field public channel_id:J

.field public chat_id:J

.field public cryptoAmount:J

.field public cryptoCurrency:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public duration:I

.field public encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

.field public flags:I

.field public game_id:J

.field public inviter_id:J

.field public invoice_slug:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public months:I

.field public newUserPhoto:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

.field public recurring_init:Z

.field public recurring_used:Z

.field public score:I

.field public title:Ljava/lang/String;

.field public total_amount:J

.field public ttl:I

.field public user_id:J

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public video:Z

.field public wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25567
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 25572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageAction;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 25654
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;-><init>()V

    goto/16 :goto_0

    .line 25636
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCall;-><init>()V

    goto/16 :goto_0

    .line 25735
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionInviteToGroupCall_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionInviteToGroupCall_layer131;-><init>()V

    goto/16 :goto_0

    .line 25687
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser_old;-><init>()V

    goto/16 :goto_0

    .line 25723
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;-><init>()V

    goto/16 :goto_0

    .line 25606
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    goto/16 :goto_0

    .line 25603
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;-><init>()V

    goto/16 :goto_0

    .line 25669
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;-><init>()V

    goto/16 :goto_0

    .line 25690
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTTLChange;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTTLChange;-><init>()V

    goto/16 :goto_0

    .line 25684
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;-><init>()V

    goto/16 :goto_0

    .line 25675
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;-><init>()V

    goto/16 :goto_0

    .line 25627
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo_layer131;-><init>()V

    goto/16 :goto_0

    .line 25618
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionInviteToGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionInviteToGroupCall;-><init>()V

    goto/16 :goto_0

    .line 25663
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser_layer131;-><init>()V

    goto/16 :goto_0

    .line 25702
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionWebViewDataSentMe;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionWebViewDataSentMe;-><init>()V

    goto/16 :goto_0

    .line 25642
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;-><init>()V

    goto/16 :goto_0

    .line 25756
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent_layer140;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent_layer140;-><init>()V

    goto/16 :goto_0

    .line 25693
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetMessagesTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetMessagesTTL;-><init>()V

    goto/16 :goto_0

    .line 25621
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;-><init>()V

    goto/16 :goto_0

    .line 25741
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;-><init>()V

    goto/16 :goto_0

    .line 25657
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;-><init>()V

    goto/16 :goto_0

    .line 25645
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneNumberRequest;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneNumberRequest;-><init>()V

    goto/16 :goto_0

    .line 25774
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionRequestedPeer;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionRequestedPeer;-><init>()V

    goto/16 :goto_0

    .line 25609
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionCustomAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionCustomAction;-><init>()V

    goto/16 :goto_0

    .line 25708
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink_layer131;-><init>()V

    goto/16 :goto_0

    .line 25711
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionContactSignUp;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionContactSignUp;-><init>()V

    goto/16 :goto_0

    .line 25648
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;-><init>()V

    goto/16 :goto_0

    .line 25633
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;-><init>()V

    goto/16 :goto_0

    .line 25726
    :sswitch_1c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionAttachMenuBotAllowed;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionAttachMenuBotAllowed;-><init>()V

    goto/16 :goto_0

    .line 25630
    :sswitch_1d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;-><init>()V

    goto/16 :goto_0

    .line 25699
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSecureValuesSent;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSecureValuesSent;-><init>()V

    goto/16 :goto_0

    .line 25771
    :sswitch_1f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;-><init>()V

    goto/16 :goto_0

    .line 25750
    :sswitch_20
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed;-><init>()V

    goto/16 :goto_0

    .line 25681
    :sswitch_21
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;-><init>()V

    goto/16 :goto_0

    .line 25729
    :sswitch_22
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetSameChatWallPaper;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetSameChatWallPaper;-><init>()V

    goto/16 :goto_0

    .line 25615
    :sswitch_23
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;-><init>()V

    goto/16 :goto_0

    .line 25672
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;-><init>()V

    goto/16 :goto_0

    .line 25759
    :sswitch_25
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    goto/16 :goto_0

    .line 25744
    :sswitch_26
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;-><init>()V

    goto/16 :goto_0

    .line 25705
    :sswitch_27
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionWebViewDataSent;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionWebViewDataSent;-><init>()V

    goto/16 :goto_0

    .line 25765
    :sswitch_28
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCallScheduled;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCallScheduled;-><init>()V

    goto/16 :goto_0

    .line 25666
    :sswitch_29
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser_layer131;-><init>()V

    goto/16 :goto_0

    .line 25678
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit_layer149;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit_layer149;-><init>()V

    goto :goto_0

    .line 25660
    :sswitch_2b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom_layer131;-><init>()V

    goto :goto_0

    .line 25747
    :sswitch_2c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed_layer153;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed_layer153;-><init>()V

    goto :goto_0

    .line 25639
    :sswitch_2d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;-><init>()V

    goto :goto_0

    .line 25696
    :sswitch_2e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetMessagesTTL_layer149;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetMessagesTTL_layer149;-><init>()V

    goto :goto_0

    .line 25612
    :sswitch_2f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate_layer131;-><init>()V

    goto :goto_0

    .line 25624
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;-><init>()V

    goto :goto_0

    .line 25651
    :sswitch_31
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;-><init>()V

    goto :goto_0

    .line 25720
    :sswitch_32
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoProximityReached;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoProximityReached;-><init>()V

    goto :goto_0

    .line 25753
    :sswitch_33
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;-><init>()V

    goto :goto_0

    .line 25732
    :sswitch_34
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;-><init>()V

    goto :goto_0

    .line 25714
    :sswitch_35
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;-><init>()V

    goto :goto_0

    .line 25717
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;-><init>()V

    goto :goto_0

    .line 25762
    :sswitch_37
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;-><init>()V

    goto :goto_0

    .line 25768
    :sswitch_38
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;-><init>()V

    goto :goto_0

    .line 25738
    :sswitch_39
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 25778
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in MessageAction"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 25781
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7f1ee581 -> :sswitch_39
        -0x70ce4cd9 -> :sswitch_38
        -0x6d58d78a -> :sswitch_37
        -0x6b42c713 -> :sswitch_36
        -0x6a2d536e -> :sswitch_35
        -0x6a1c0411 -> :sswitch_34
        -0x69e9c0aa -> :sswitch_33
        -0x671f2969 -> :sswitch_32
        -0x604549fc -> :sswitch_31
        -0x5bc0cf34 -> :sswitch_30
        -0x599c7466 -> :sswitch_2f
        -0x55e50403 -> :sswitch_2e
        -0x55879cbb -> :sswitch_2d
        -0x54165002 -> :sswitch_2c
        -0x4faa1512 -> :sswitch_2b
        -0x4e75bce4 -> :sswitch_2a
        -0x4d5164f4 -> :sswitch_29
        -0x4c5f899f -> :sswitch_28
        -0x4b3c734b -> :sswitch_27
        -0x4a5e31a6 -> :sswitch_26
        -0x49510850 -> :sswitch_25
        -0x43bb56d9 -> :sswitch_24
        -0x42b83453 -> :sswitch_23
        -0x3f878293 -> :sswitch_22
        -0x3f6bb7e0 -> :sswitch_21
        -0x3ae92987 -> :sswitch_20
        -0x37c29514 -> :sswitch_1f
        -0x26a39eac -> :sswitch_1e
        -0x1efc806e -> :sswitch_1d
        -0x1818a069 -> :sswitch_1c
        -0x15c6b717 -> :sswitch_1b
        -0x14435c35 -> :sswitch_1a
        -0xc0da08a -> :sswitch_19
        -0x7630a18 -> :sswitch_18
        -0x51960aa -> :sswitch_17
        -0x188cba3 -> :sswitch_16
        0x1baa035 -> :sswitch_15
        0x31224c3 -> :sswitch_14
        0xd999256 -> :sswitch_13
        0x15cefd00 -> :sswitch_12
        0x3c134d7b -> :sswitch_11
        0x40699cd0 -> :sswitch_10
        0x4792929b -> :sswitch_f
        0x47dd8079 -> :sswitch_e
        0x488a7337 -> :sswitch_d
        0x502f92f7 -> :sswitch_c
        0x51bdb021 -> :sswitch_b
        0x55555550 -> :sswitch_a
        0x55555551 -> :sswitch_9
        0x55555552 -> :sswitch_8
        0x55555557 -> :sswitch_7
        0x555555f5 -> :sswitch_6
        0x555555f7 -> :sswitch_5
        0x57de635e -> :sswitch_4
        0x5e3cfc4b -> :sswitch_3
        0x76b9f11a -> :sswitch_2
        0x7a0d7f42 -> :sswitch_1
        0x7fcb13a8 -> :sswitch_0
    .end sparse-switch
.end method
