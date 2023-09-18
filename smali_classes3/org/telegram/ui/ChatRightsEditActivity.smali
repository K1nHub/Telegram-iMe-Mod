.class public Lorg/telegram/ui/ChatRightsEditActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChatRightsEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;,
        Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;
    }
.end annotation


# instance fields
.field private addAdminsRow:I

.field private addBotButton:Landroid/widget/FrameLayout;

.field private addBotButtonContainer:Landroid/widget/FrameLayout;

.field private addBotButtonRow:I

.field private addBotButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

.field private addUsersRow:I

.field private adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field private anonymousRow:I

.field private asAdmin:Z

.field private asAdminAnimator:Landroid/animation/ValueAnimator;

.field private asAdminT:F

.field private banUsersRow:I

.field private bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field private botHash:Ljava/lang/String;

.field private canEdit:Z

.field private cantEditInfoRow:I

.field private changeInfoRow:I

.field private chatId:J

.field private currentBannedRights:Ljava/lang/String;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentRank:Ljava/lang/String;

.field private currentType:I

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field private delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

.field private deleteMessagesRow:I

.field private doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

.field private doneDrawableAnimator:Landroid/animation/ValueAnimator;

.field private editMesagesRow:I

.field private embedLinksRow:I

.field private initialAsAdmin:Z

.field private initialIsSet:Z

.field private initialRank:Ljava/lang/String;

.field private isAddingNew:Z

.field private isChannel:Z

.field private isForum:Z

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

.field private loading:Z

.field private manageRow:I

.field private manageTopicsRow:I

.field private myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field private pinMessagesRow:I

.field private postMessagesRow:I

.field private rankEditTextCell:Lorg/telegram/ui/Cells/PollEditTextCell;

.field private rankHeaderRow:I

.field private rankInfoRow:I

.field private rankRow:I

.field private removeAdminRow:I

.field private removeAdminShadowRow:I

.field private rightsShadowRow:I

.field private rowCount:I

.field private sendFilesRow:I

.field private sendGamesRow:I

.field private sendGifsRow:I

.field private sendInlineRow:I

.field private sendMediaExpanded:Z

.field private sendMediaRow:I

.field private sendMessagesRow:I

.field private sendMusicRow:I

.field private sendPhotosRow:I

.field private sendPollsRow:I

.field private sendRoundRow:I

.field private sendStickersRow:I

.field private sendVideosRow:I

.field private sendVoiceRow:I

.field private startVoiceChatRow:I

.field private transferOwnerRow:I

.field private transferOwnerShadowRow:I

.field private untilDateRow:I

.field private untilSectionRow:I


# direct methods
.method public static synthetic $r8$lambda$-Sg0C81V9cMM9jcdAbLtVcuUA88(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$createView$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$0I6ZzeccVdqTqEeLGyn7zwKckck(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$13(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3eiQkoNGAGhhYyIvE8yu6Y8NTNU(Lorg/telegram/ui/ChatRightsEditActivity;ILandroid/widget/TimePicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$createView$0(ILandroid/widget/TimePicker;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$5X9CcNINFbLayTMdCEb1yD6WN7Q(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$8(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7tTdPUKA4E4ofGspZ51oVMy64_k(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$checkDiscard$23(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8BZbG5Ta6-yWyUj3MH69u_KSNbI(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$setLoading$22(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ATjU_oCxWUW2J7dh_syS_qmZlhk(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$createView$6(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BrBoo9GYLmKth8JuVGDPzfr1ZVU(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$updateAsAdmin$25(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NhaM7TRFi9thTS3HbHsj88ZgGs8(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$onDonePressed$17(Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OIJVR1kijUlSXl9vT_5xE7HKgyo(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$checkDiscard$24(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QNSCir05BR7M-Qk6rsQsXjUwcNM(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$createView$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0YiAkk_sp66Af_a5sAqER-YjRo(Lorg/telegram/ui/ChatRightsEditActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$onDonePressed$15(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$RwuNPpjv30IKqettq_BZ8Yb4-RE(Lorg/telegram/ui/ChatRightsEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$onDonePressed$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$XTb7Ao7pC2uakVT6JH7N0qYTj-s(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$11(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YeJsq5EmV7DyqOWnkekp6CLeBmw(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/widget/DatePicker;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$createView$2(Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$a19t_sy34CsmhftYAMAURC4LhwY(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$onDonePressed$20(Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$amyySsQ8D7Ksi5Yy4eYKP-Wv9XY(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$createView$5(Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dHIO_cR4Kmz4XfRujMEIRvCrfmg(Lorg/telegram/ui/ChatRightsEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$onDonePressed$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$h-U8gkx3O9djQJZNQAVsdr3UcAo(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jpp9gwA3Z39a2U3yMJnf1iXovSE(Landroid/widget/DatePicker;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$createView$4(Landroid/widget/DatePicker;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lFBTU0oUHz15wP-12yPbXZyWlI4(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nBJwhC7MVM27hDTlae8CKTgoqu4(Lorg/telegram/ui/ChatRightsEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$getThemeDescriptions$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$qeFSZXyDyRED7m2XOuPs8amPiXA(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$7(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$sUqdRDnDAc8l0ksD476QxEFntLI(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$onDonePressed$19(Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vbYpkxkrTN_HH9dZUF5qs9HvlKQ(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$14(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xUmoexE9Pg_9MAnQFxW1Yy2diP8(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$12(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xvEf1dK2hnZNJeAH1zmmQ57zDrc(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$onDonePressed$21(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v4, p9

    .line 193
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v5, 0x0

    .line 116
    iput-boolean v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->loading:Z

    const/4 v6, 0x0

    .line 120
    iput v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    .line 121
    iput-boolean v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    .line 122
    iput-boolean v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialAsAdmin:Z

    const-string v7, ""

    .line 127
    iput-object v7, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentBannedRights:Ljava/lang/String;

    move/from16 v8, p11

    .line 194
    iput-boolean v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isAddingNew:Z

    move-wide/from16 v8, p3

    .line 195
    iput-wide v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    .line 196
    iget v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 197
    iput v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    move/from16 v8, p10

    .line 198
    iput-boolean v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->canEdit:Z

    move-object/from16 v8, p12

    .line 199
    iput-object v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->botHash:Ljava/lang/String;

    .line 200
    iget v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v9, v0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez p8, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p8

    .line 204
    :goto_0
    iput-object v7, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialRank:Ljava/lang/String;

    const/4 v7, 0x1

    if-eqz v8, :cond_2

    .line 206
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v8, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    iput-boolean v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    .line 207
    iget-object v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    iput-boolean v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    .line 208
    iget-object v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iput-object v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 210
    :cond_2
    iget-object v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    const/4 v9, 0x2

    if-nez v8, :cond_5

    .line 211
    iget v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-ne v8, v9, :cond_4

    iget-object v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_3

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    move v8, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v8, v7

    :goto_3
    invoke-static {v8}, Lorg/telegram/ui/ChatRightsEditActivity;->emptyAdminRights(Z)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    :cond_5
    if-eqz v4, :cond_20

    if-ne v4, v9, :cond_6

    goto/16 :goto_6

    :cond_6
    if-ne v4, v7, :cond_1f

    .line 306
    iput-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez v2, :cond_7

    .line 308
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 309
    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 318
    :cond_7
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez v3, :cond_8

    .line 320
    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    goto :goto_4

    .line 326
    :cond_8
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 327
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 328
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 329
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 330
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 331
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 332
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 333
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 334
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 335
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 336
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 337
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 338
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    .line 339
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 340
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 341
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 342
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 343
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 344
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 345
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 346
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    .line 348
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz v4, :cond_9

    .line 349
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 351
    :cond_9
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    if-eqz v4, :cond_a

    .line 352
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 354
    :cond_a
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v4, :cond_b

    .line 355
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 357
    :cond_b
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v4, :cond_c

    .line 358
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 360
    :cond_c
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz v4, :cond_d

    .line 361
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 363
    :cond_d
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-eqz v4, :cond_e

    .line 364
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 366
    :cond_e
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v4, :cond_f

    .line 367
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 369
    :cond_f
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v4, :cond_10

    .line 370
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 372
    :cond_10
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v4, :cond_11

    .line 373
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 375
    :cond_11
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v4, :cond_12

    .line 376
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 378
    :cond_12
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v4, :cond_13

    .line 379
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 381
    :cond_13
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v4, :cond_14

    .line 382
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 384
    :cond_14
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-eqz v4, :cond_15

    .line 385
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 387
    :cond_15
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v4, :cond_16

    .line 388
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 390
    :cond_16
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v4, :cond_17

    .line 391
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 393
    :cond_17
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v4, :cond_18

    .line 394
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 396
    :cond_18
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v4, :cond_19

    .line 397
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 399
    :cond_19
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v4, :cond_1a

    .line 400
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 402
    :cond_1a
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v4, :cond_1b

    .line 403
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 405
    :cond_1b
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v2, :cond_1c

    .line 406
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    .line 409
    :cond_1c
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentBannedRights:Ljava/lang/String;

    if-eqz v3, :cond_1e

    .line 411
    iget-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-nez v1, :cond_1d

    goto :goto_5

    :cond_1d
    move v7, v5

    :cond_1e
    :goto_5
    iput-boolean v7, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialIsSet:Z

    :cond_1f
    move v1, v5

    goto/16 :goto_26

    :cond_20
    :goto_6
    if-ne v4, v9, :cond_39

    .line 215
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-wide/from16 v10, p1

    invoke-virtual {v2, v10, v11}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 217
    iget-boolean v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-eqz v3, :cond_21

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    goto :goto_7

    :cond_21
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    :goto_7
    if-eqz v2, :cond_39

    if-nez v1, :cond_22

    move-object v1, v2

    goto/16 :goto_1e

    .line 222
    :cond_22
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-nez v3, :cond_24

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v3, :cond_23

    goto :goto_8

    :cond_23
    move v3, v5

    goto :goto_9

    :cond_24
    :goto_8
    move v3, v7

    :goto_9
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    .line 223
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v3, :cond_26

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v3, :cond_25

    goto :goto_a

    :cond_25
    move v3, v5

    goto :goto_b

    :cond_26
    :goto_a
    move v3, v7

    :goto_b
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    .line 224
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v3, :cond_28

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v3, :cond_27

    goto :goto_c

    :cond_27
    move v3, v5

    goto :goto_d

    :cond_28
    :goto_c
    move v3, v7

    :goto_d
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 225
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-nez v3, :cond_2a

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz v3, :cond_29

    goto :goto_e

    :cond_29
    move v3, v5

    goto :goto_f

    :cond_2a
    :goto_e
    move v3, v7

    :goto_f
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    .line 226
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-nez v3, :cond_2c

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v3, :cond_2b

    goto :goto_10

    :cond_2b
    move v3, v5

    goto :goto_11

    :cond_2c
    :goto_10
    move v3, v7

    :goto_11
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    .line 227
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-nez v3, :cond_2e

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v3, :cond_2d

    goto :goto_12

    :cond_2d
    move v3, v5

    goto :goto_13

    :cond_2e
    :goto_12
    move v3, v7

    :goto_13
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 228
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-nez v3, :cond_30

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-eqz v3, :cond_2f

    goto :goto_14

    :cond_2f
    move v3, v5

    goto :goto_15

    :cond_30
    :goto_14
    move v3, v7

    :goto_15
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    .line 229
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-nez v3, :cond_32

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz v3, :cond_31

    goto :goto_16

    :cond_31
    move v3, v5

    goto :goto_17

    :cond_32
    :goto_16
    move v3, v7

    :goto_17
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    .line 230
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-nez v3, :cond_34

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v3, :cond_33

    goto :goto_18

    :cond_33
    move v3, v5

    goto :goto_19

    :cond_34
    :goto_18
    move v3, v7

    :goto_19
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    .line 231
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-nez v3, :cond_36

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz v3, :cond_35

    goto :goto_1a

    :cond_35
    move v3, v5

    goto :goto_1b

    :cond_36
    :goto_1a
    move v3, v7

    :goto_1b
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    .line 232
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    if-nez v3, :cond_38

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    if-eqz v2, :cond_37

    goto :goto_1c

    :cond_37
    move v2, v5

    goto :goto_1d

    :cond_38
    :goto_1c
    move v2, v7

    :goto_1d
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    :cond_39
    :goto_1e
    if-nez v1, :cond_3c

    .line 238
    iput-boolean v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialAsAdmin:Z

    if-ne v4, v9, :cond_3b

    .line 240
    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->emptyAdminRights(Z)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 241
    iget-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v1, :cond_3a

    const/high16 v6, 0x3f800000    # 1.0f

    .line 242
    :cond_3a
    iput v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    .line 243
    iput-boolean v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialIsSet:Z

    goto/16 :goto_24

    .line 245
    :cond_3b
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 246
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 247
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 248
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    .line 249
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    .line 250
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    .line 251
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    .line 252
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    .line 253
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    .line 254
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    .line 255
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    .line 256
    iput-boolean v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialIsSet:Z

    goto/16 :goto_24

    .line 259
    :cond_3c
    iput-boolean v7, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialAsAdmin:Z

    .line 260
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 261
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    iput-boolean v8, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 262
    iget-boolean v10, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean v10, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 263
    iget-boolean v11, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v11, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    .line 264
    iget-boolean v12, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean v12, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    .line 265
    iget-boolean v13, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    iput-boolean v13, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    .line 266
    iget-boolean v14, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean v14, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    .line 267
    iget-boolean v15, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean v15, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    .line 268
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    .line 269
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    .line 270
    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    iput-boolean v7, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    .line 271
    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    iput-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    .line 272
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    iput-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    if-nez v8, :cond_3e

    if-nez v10, :cond_3e

    if-nez v11, :cond_3e

    if-nez v12, :cond_3e

    if-nez v14, :cond_3e

    if-nez v15, :cond_3e

    if-nez v2, :cond_3e

    if-nez v7, :cond_3e

    if-nez v13, :cond_3e

    if-nez v5, :cond_3e

    if-nez v6, :cond_3e

    if-eqz v1, :cond_3d

    goto :goto_1f

    :cond_3d
    const/4 v1, 0x0

    goto :goto_20

    :cond_3e
    :goto_1f
    const/4 v1, 0x1

    .line 274
    :goto_20
    iput-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialIsSet:Z

    if-ne v4, v9, :cond_42

    .line 279
    iget-boolean v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-nez v2, :cond_40

    if-eqz v1, :cond_3f

    goto :goto_21

    :cond_3f
    const/4 v1, 0x0

    goto :goto_22

    :cond_40
    :goto_21
    const/4 v1, 0x1

    :goto_22
    iput-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v1, :cond_41

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_23

    :cond_41
    const/4 v6, 0x0

    .line 280
    :goto_23
    iput v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    const/4 v1, 0x0

    .line 281
    iput-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialIsSet:Z

    .line 285
    :cond_42
    :goto_24
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_43

    .line 286
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 288
    :cond_43
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez v1, :cond_44

    .line 289
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    const/4 v2, 0x0

    .line 290
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 299
    :cond_44
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v2, :cond_45

    iget-boolean v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-nez v2, :cond_45

    .line 300
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    goto :goto_25

    :cond_45
    const/4 v3, 0x1

    .line 302
    :goto_25
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v1, :cond_46

    .line 303
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    :cond_46
    const/4 v1, 0x0

    .line 413
    :goto_26
    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatRightsEditActivity;->updateRows(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->checkDiscard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChatRightsEditActivity;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->onDonePressed()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->deleteMessagesRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addAdminsRow:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->anonymousRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->banUsersRow:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addUsersRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->removeAdminRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->removeAdminShadowRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->cantEditInfoRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerShadowRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankHeaderRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankInfoRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMessagesRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPhotosRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendStickersRow:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPollsRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->embedLinksRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->startVoiceChatRow:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilSectionRow:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonRow:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageTopicsRow:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVideosRow:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendFilesRow:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMusicRow:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVoiceRow:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendRoundRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->loading:Z

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->canEdit:Z

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonContainer:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButton:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButton:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/Components/AnimatedTextView;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    return p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/Cells/PollEditTextCell;)Lorg/telegram/ui/Cells/PollEditTextCell;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankEditTextCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ChatRightsEditActivity;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/ChatRightsEditActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setTextLeft(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendGifsRow:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendGamesRow:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendInlineRow:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->getSendMediaSelectedCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageRow:I

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaExpanded:Z

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->allDefaultMediaBanned()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ChatRightsEditActivity;)F
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/ChatRightsEditActivity;I)Z
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->isExpandableSendMediaRow(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ChatRightsEditActivity;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setSendMediaEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->postMessagesRow:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->editMesagesRow:I

    return p0
.end method

.method private allDefaultMediaBanned()Z
    .locals 2

    .line 2049
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkDiscard()Z
    .locals 5

    .line 1409
    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1414
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object v0

    .line 1415
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentBannedRights:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1417
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->initialRank:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1420
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1421
    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsApplyChanges:I

    const-string v3, "UserRestrictionsApplyChanges"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1422
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 1423
    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsApplyChangesText:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "UserRestrictionsApplyChangesText"

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1424
    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    const-string v2, "ApplyTheme"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1425
    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    const-string v2, "PassportDiscard"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1426
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v4

    :cond_2
    return v1
.end method

.method public static emptyAdminRights(Z)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
    .locals 1

    .line 433
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    .line 434
    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    return-object v0
.end method

.method private getSendMediaSelectedCount()I
    .locals 4

    .line 2007
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2010
    :goto_0
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 2013
    :cond_1
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 2017
    :cond_2
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 2020
    :cond_3
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 2023
    :cond_4
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-nez v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 2027
    :cond_5
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 2030
    :cond_6
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    .line 2033
    :cond_7
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v2, :cond_8

    add-int/lit8 v1, v1, 0x1

    .line 2036
    :cond_8
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v2, :cond_9

    add-int/lit8 v1, v1, 0x1

    .line 2039
    :cond_9
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v3, :cond_a

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v3, :cond_a

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    .line 2042
    :cond_a
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v0, :cond_b

    add-int/lit8 v1, v1, 0x1

    :cond_b
    return v1
.end method

.method private hasAllAdminRights()Z
    .locals 4

    .line 932
    iget-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v3, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 935
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    if-eqz v3, :cond_3

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method private initTransfer(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 7

    .line 940
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 944
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    new-instance v6, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda21;

    invoke-direct {v6, p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    return-void

    .line 953
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;-><init>()V

    .line 954
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 955
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 956
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    .line 957
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputChannel;->access_hash:J

    goto :goto_0

    .line 959
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    :goto_0
    if-eqz p1, :cond_3

    move-object v1, p1

    goto :goto_1

    .line 961
    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;-><init>()V

    :goto_1
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    .line 962
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 963
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, p1, p2, v0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private isDefaultAdminRights()Z
    .locals 3

    .line 927
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-eqz v2, :cond_3

    :cond_1
    if-nez v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-nez v1, :cond_4

    :cond_2
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isExpandableSendMediaRow(I)Z
    .locals 1

    .line 2055
    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendStickersRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->embedLinksRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPollsRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPhotosRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVideosRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendFilesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMusicRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendRoundRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVoiceRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendGifsRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendGamesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendInlineRow:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$checkDiscard$23(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1424
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->onDonePressed()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$24(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1425
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$0(ILandroid/widget/TimePicker;II)V
    .locals 0

    .line 683
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    mul-int/lit16 p3, p3, 0xe10

    add-int/2addr p1, p3

    mul-int/lit8 p4, p4, 0x3c

    add-int/2addr p1, p4

    iput p1, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    .line 684
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private static synthetic lambda$createView$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/widget/DatePicker;III)V
    .locals 6

    .line 677
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 678
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 679
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 680
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    long-to-int p1, p1

    .line 682
    :try_start_0
    new-instance p2, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    const/4 p1, -0x1

    const-string p3, "Set"

    .line 686
    sget p4, Lorg/telegram/messenger/R$string;->Set:I

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3, p2}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, -0x2

    const-string p3, "Cancel"

    .line 687
    sget p4, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda9;->INSTANCE:Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda9;

    invoke-virtual {p2, p1, p3, p4}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 690
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 692
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$createView$3(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$createView$4(Landroid/widget/DatePicker;Landroid/content/DialogInterface;)V
    .locals 4

    .line 719
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 721
    invoke-virtual {p0, v0}, Landroid/widget/DatePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 722
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    .line 723
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 724
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V
    .locals 10

    .line 652
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 653
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    goto/16 :goto_0

    .line 671
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 672
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 673
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v0, 0x5

    .line 674
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 676
    :try_start_0
    new-instance p2, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 696
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    .line 698
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    .line 700
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 701
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 702
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    .line 703
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 704
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide v8, 0x757b12c00L

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 707
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v6

    invoke-virtual {v1, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 708
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 709
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 710
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 711
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    const/4 v1, -0x1

    const-string v2, "Set"

    .line 713
    sget v3, Lorg/telegram/messenger/R$string;->Set:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2, p2}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    const-string v2, "Cancel"

    .line 714
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda10;->INSTANCE:Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda10;

    invoke-virtual {p2, v1, v2, v3}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 717
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 718
    new-instance v1, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda11;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {p2, v1}, Landroid/app/DatePickerDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 728
    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 730
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 667
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    const v1, 0x278d00

    add-int/2addr v0, v1

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    .line 668
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 663
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    const v1, 0x93a80

    add-int/2addr v0, v1

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    .line 664
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 659
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    const v1, 0x15180

    add-int/2addr v0, v1

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    .line 660
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 655
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    const/4 v0, 0x0

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    .line 656
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 735
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/content/Context;Landroid/view/View;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 541
    iget-boolean v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->canEdit:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v3, :cond_0

    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-nez v3, :cond_0

    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->anonymousRow:I

    if-eq v2, v3, :cond_1

    :cond_0
    return-void

    .line 544
    :cond_1
    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v2, v3, :cond_3

    .line 554
    iget-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaExpanded:Z

    xor-int/2addr v1, v9

    iput-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaExpanded:Z

    .line 555
    invoke-direct {v0, v8}, Lorg/telegram/ui/ChatRightsEditActivity;->updateRows(Z)V

    .line 556
    iget-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaExpanded:Z

    const/16 v2, 0xc

    if-eqz v1, :cond_2

    .line 557
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    add-int/2addr v3, v9

    invoke-virtual {v1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 559
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    add-int/2addr v3, v9

    invoke-virtual {v1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :goto_0
    return-void

    :cond_3
    if-nez v2, :cond_5

    .line 565
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_4

    return-void

    .line 569
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 570
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v4, "user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 571
    new-instance v2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 572
    :cond_5
    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->removeAdminRow:I

    if-ne v2, v3, :cond_9

    .line 573
    iget v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-nez v1, :cond_8

    .line 575
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_6

    return-void

    .line 579
    :cond_6
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v10, v0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    iget-object v12, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    iget-object v14, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    iget-boolean v15, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentForAlert(I)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v16

    iget-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isAddingNew:Z

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v17, v1

    invoke-virtual/range {v9 .. v20}, Lorg/telegram/messenger/MessagesController;->setUserAdminRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Ljava/lang/Runnable;)V

    .line 580
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

    if-eqz v1, :cond_7

    .line 581
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    invoke-interface {v1, v8, v2, v3, v4}, Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;->didSetRights(ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V

    .line 583
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_a

    :cond_8
    if-ne v1, v9, :cond_47

    .line 585
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 586
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 587
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 588
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 589
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 590
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 591
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 592
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 593
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 594
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 595
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 596
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 597
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 598
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 599
    iput v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    .line 600
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatRightsEditActivity;->onDonePressed()V

    goto/16 :goto_a

    .line 602
    :cond_9
    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerRow:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_a

    .line 603
    invoke-direct {v0, v4, v4}, Lorg/telegram/ui/ChatRightsEditActivity;->initTransfer(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    goto/16 :goto_a

    .line 604
    :cond_a
    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    const/4 v10, 0x2

    if-ne v2, v3, :cond_11

    .line 605
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    .line 608
    :cond_b
    new-instance v11, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v11, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 609
    invoke-virtual {v11, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 611
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 612
    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 614
    new-instance v13, Lorg/telegram/ui/Cells/HeaderCell;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    const/16 v4, 0x17

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v1, v13

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    const/16 v1, 0x2f

    .line 615
    invoke-virtual {v13, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    .line 616
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsDuration:I

    const-string v2, "UserRestrictionsDuration"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 617
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 619
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 620
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 621
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x5

    new-array v5, v4, [Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move v6, v8

    :goto_1
    if-ge v6, v4, :cond_10

    .line 626
    new-instance v13, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    invoke-direct {v13, v7, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    aput-object v13, v5, v6

    .line 627
    aget-object v13, v5, v6

    const/4 v14, 0x7

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v13, v15, v8, v14, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 628
    aget-object v13, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 629
    aget-object v13, v5, v6

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v6, :cond_f

    if-eq v6, v9, :cond_e

    if-eq v6, v10, :cond_d

    const/4 v13, 0x3

    if-eq v6, v13, :cond_c

    .line 646
    sget v13, Lorg/telegram/messenger/R$string;->UserRestrictionsCustom:I

    const-string v14, "UserRestrictionsCustom"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_c
    new-array v13, v8, [Ljava/lang/Object;

    const-string v14, "Months"

    .line 642
    invoke-static {v14, v9, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_d
    new-array v13, v8, [Ljava/lang/Object;

    const-string v14, "Weeks"

    .line 639
    invoke-static {v14, v9, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_e
    new-array v13, v8, [Ljava/lang/Object;

    const-string v14, "Days"

    .line 636
    invoke-static {v14, v9, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 633
    :cond_f
    sget v13, Lorg/telegram/messenger/R$string;->UserRestrictionsUntilForever:I

    const-string v14, "UserRestrictionsUntilForever"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 649
    :goto_2
    aget-object v14, v5, v6

    invoke-virtual {v14, v13, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 650
    aget-object v13, v5, v6

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    aget-object v13, v5, v6

    new-instance v14, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda12;

    invoke-direct {v14, v0, v11}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;)V

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 738
    :cond_10
    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 739
    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_a

    .line 740
    :cond_11
    instance-of v3, v1, Lorg/telegram/ui/Cells/CheckBoxCell;

    const-string v5, "UserRestrictionsCantModifyDisabled"

    const-string v6, "OK"

    const-string v7, "UserRestrictionsCantModify"

    if-eqz v3, :cond_23

    .line 741
    check-cast v1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 742
    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-ne v3, v9, :cond_47

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v3, :cond_47

    .line 743
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    .line 746
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->hasIcon()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 747
    iget v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eq v1, v10, :cond_12

    .line 748
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModify:I

    .line 749
    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModifyDisabled:I

    .line 750
    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    .line 751
    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 752
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 753
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_12
    return-void

    .line 759
    :cond_13
    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendGifsRow:I

    if-ne v2, v3, :cond_15

    .line 760
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez v3, :cond_14

    .line 762
    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 763
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendStickersRow:I

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_14
    :goto_3
    move v8, v3

    goto/16 :goto_4

    .line 765
    :cond_15
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendGamesRow:I

    if-ne v2, v4, :cond_16

    .line 766
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez v3, :cond_14

    .line 768
    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 769
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendStickersRow:I

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_3

    .line 771
    :cond_16
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendInlineRow:I

    if-ne v2, v4, :cond_17

    .line 772
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-nez v3, :cond_14

    .line 774
    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 775
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendStickersRow:I

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_3

    .line 778
    :cond_17
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPhotosRow:I

    if-ne v2, v4, :cond_18

    .line 779
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/lit8 v8, v3, 0x1

    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    goto/16 :goto_4

    .line 780
    :cond_18
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVideosRow:I

    if-ne v2, v4, :cond_19

    .line 781
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/lit8 v8, v3, 0x1

    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    goto/16 :goto_4

    .line 782
    :cond_19
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMusicRow:I

    if-ne v2, v4, :cond_1a

    .line 783
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/lit8 v8, v3, 0x1

    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    goto/16 :goto_4

    .line 784
    :cond_1a
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendFilesRow:I

    if-ne v2, v4, :cond_1b

    .line 785
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/lit8 v8, v3, 0x1

    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    goto/16 :goto_4

    .line 786
    :cond_1b
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendRoundRow:I

    if-ne v2, v4, :cond_1c

    .line 787
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/lit8 v8, v3, 0x1

    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    goto/16 :goto_4

    .line 788
    :cond_1c
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVoiceRow:I

    if-ne v2, v4, :cond_1d

    .line 789
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/lit8 v8, v3, 0x1

    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    goto :goto_4

    .line 790
    :cond_1d
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendStickersRow:I

    if-ne v2, v4, :cond_1e

    .line 791
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/lit8 v8, v4, 0x1

    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v8, :cond_22

    .line 794
    iput-boolean v9, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 795
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 796
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-boolean v9, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 797
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendGamesRow:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 798
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-boolean v9, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 799
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendInlineRow:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_4

    .line 802
    :cond_1e
    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->embedLinksRow:I

    if-ne v2, v3, :cond_21

    .line 803
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v2, :cond_1f

    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v2, :cond_20

    .line 804
    :cond_1f
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMessagesRow:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 806
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    .line 807
    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    .line 811
    :cond_20
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/lit8 v8, v3, 0x1

    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    goto :goto_4

    .line 812
    :cond_21
    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPollsRow:I

    if-ne v2, v3, :cond_22

    .line 813
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    xor-int/lit8 v8, v3, 0x1

    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 815
    :cond_22
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    xor-int/lit8 v2, v8, 0x1

    .line 816
    invoke-virtual {v1, v2, v9}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto/16 :goto_a

    .line 818
    :cond_23
    instance-of v3, v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    if-eqz v3, :cond_47

    .line 819
    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 820
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->hasIcon()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 821
    iget v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eq v1, v10, :cond_24

    .line 822
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModify:I

    .line 823
    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModifyDisabled:I

    .line 824
    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    .line 825
    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 826
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 827
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_24
    return-void

    .line 832
    :cond_25
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 833
    iget v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eq v1, v10, :cond_26

    if-nez v1, :cond_29

    :cond_26
    iget v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    if-ne v2, v1, :cond_27

    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v1, :cond_27

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v1, :cond_28

    :cond_27
    iget v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    if-ne v2, v1, :cond_29

    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v1, :cond_29

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v1, :cond_29

    .line 836
    :cond_28
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModify:I

    .line 837
    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModifyEnabled:I

    const-string v3, "UserRestrictionsCantModifyEnabled"

    .line 838
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    .line 839
    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 840
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 841
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_29
    return-void

    .line 845
    :cond_2a
    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eq v3, v10, :cond_2b

    .line 846
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v9

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 848
    :cond_2b
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v3

    .line 849
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->manageRow:I

    if-ne v2, v4, :cond_2c

    .line 850
    iget-boolean v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    xor-int/lit8 v3, v2, 0x1

    iput-boolean v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    .line 851
    invoke-direct {v0, v9}, Lorg/telegram/ui/ChatRightsEditActivity;->updateAsAdmin(Z)V

    goto/16 :goto_9

    .line 852
    :cond_2c
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    if-ne v2, v4, :cond_2f

    .line 853
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eqz v2, :cond_2e

    if-ne v2, v10, :cond_2d

    goto :goto_5

    .line 856
    :cond_2d
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    goto/16 :goto_9

    .line 854
    :cond_2e
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    goto/16 :goto_9

    .line 858
    :cond_2f
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->postMessagesRow:I

    if-ne v2, v4, :cond_30

    .line 859
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    goto/16 :goto_9

    .line 860
    :cond_30
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->editMesagesRow:I

    if-ne v2, v4, :cond_31

    .line 861
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    goto/16 :goto_9

    .line 862
    :cond_31
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->deleteMessagesRow:I

    if-ne v2, v4, :cond_32

    .line 863
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    goto/16 :goto_9

    .line 864
    :cond_32
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->addAdminsRow:I

    if-ne v2, v4, :cond_33

    .line 865
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    goto/16 :goto_9

    .line 866
    :cond_33
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->anonymousRow:I

    if-ne v2, v4, :cond_34

    .line 867
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    goto/16 :goto_9

    .line 868
    :cond_34
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->banUsersRow:I

    if-ne v2, v4, :cond_35

    .line 869
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    goto/16 :goto_9

    .line 870
    :cond_35
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->startVoiceChatRow:I

    if-ne v2, v4, :cond_36

    .line 871
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    goto/16 :goto_9

    .line 872
    :cond_36
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->manageTopicsRow:I

    if-ne v2, v4, :cond_39

    .line 873
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eqz v2, :cond_38

    if-ne v2, v10, :cond_37

    goto :goto_6

    .line 876
    :cond_37
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    goto/16 :goto_9

    .line 874
    :cond_38
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    goto/16 :goto_9

    .line 878
    :cond_39
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->addUsersRow:I

    if-ne v2, v4, :cond_3c

    .line 879
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eqz v2, :cond_3b

    if-ne v2, v10, :cond_3a

    goto :goto_7

    .line 882
    :cond_3a
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    goto/16 :goto_9

    .line 880
    :cond_3b
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    goto/16 :goto_9

    .line 884
    :cond_3c
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    if-ne v2, v4, :cond_3f

    .line 885
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eqz v2, :cond_3e

    if-ne v2, v10, :cond_3d

    goto :goto_8

    .line 888
    :cond_3d
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    goto/16 :goto_9

    .line 886
    :cond_3e
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    goto :goto_9

    .line 890
    :cond_3f
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-ne v4, v9, :cond_44

    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v4, :cond_44

    .line 891
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v4

    xor-int/2addr v4, v9

    .line 892
    iget v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMessagesRow:I

    if-ne v2, v5, :cond_40

    .line 893
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    :cond_40
    if-nez v4, :cond_42

    .line 896
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v4, :cond_41

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v4, :cond_41

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v4, :cond_41

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v4, :cond_41

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v4, :cond_41

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v4, :cond_41

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v4, :cond_41

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v4, :cond_41

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v4, :cond_41

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v4, :cond_41

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v4, :cond_41

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz v4, :cond_41

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez v4, :cond_42

    :cond_41
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz v4, :cond_42

    .line 897
    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 900
    :cond_42
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->embedLinksRow:I

    if-ltz v2, :cond_43

    .line 901
    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 903
    :cond_43
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    if-ltz v2, :cond_44

    .line 904
    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 907
    :cond_44
    :goto_9
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-ne v2, v10, :cond_46

    .line 908
    iget-boolean v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v2, :cond_45

    if-eqz v3, :cond_45

    move v8, v9

    :cond_45
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 910
    :cond_46
    invoke-direct {v0, v9}, Lorg/telegram/ui/ChatRightsEditActivity;->updateRows(Z)V

    :cond_47
    :goto_a
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$26()V
    .locals 5

    .line 2167
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 2168
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2170
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2171
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserCell2;

    if-eqz v4, :cond_0

    .line 2172
    check-cast v3, Lorg/telegram/ui/Cells/UserCell2;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/UserCell2;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$initTransfer$10(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1053
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/TLRPC$account_Password;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$initTransfer$11(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1070
    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    const/4 p1, 0x0

    .line 1071
    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->setCurrentPasswordInfo([BLorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 1072
    invoke-static {p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 1073
    invoke-virtual {p3}, Lorg/telegram/ui/TwoStepVerificationActivity;->getNewSrpPassword()Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/ChatRightsEditActivity;->initTransfer(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initTransfer$12(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1068
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initTransfer$13(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-eqz v1, :cond_16

    .line 965
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 968
    :cond_0
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v4, "PASSWORD_HASH_INVALID"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Cancel"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_2

    if-nez p2, :cond_17

    .line 970
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 971
    iget-boolean v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-eqz v2, :cond_1

    .line 972
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminChannelTransfer:I

    const-string v3, "EditAdminChannelTransfer"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 974
    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminGroupTransfer:I

    const-string v3, "EditAdminGroupTransfer"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 976
    :goto_0
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminTransferReadyAlertText:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v5, v3, v8

    iget-object v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const-string v5, "EditAdminTransferReadyAlertText"

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 977
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminTransferChangeOwner:I

    const-string v3, "EditAdminTransferChangeOwner"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 982
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 983
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_e

    .line 985
    :cond_2
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v9, "PASSWORD_MISSING"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v10, 0x5

    if-nez v3, :cond_8

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v11, "PASSWORD_TOO_FRESH_"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v11, "SESSION_TOO_FRESH_"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 1066
    :cond_3
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v4, "SRP_ID_INVALID"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1067
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 1068
    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda23;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    const/16 v2, 0x8

    invoke-virtual {v3, v1, v4, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_e

    .line 1076
    :cond_4
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v4, "CHANNELS_TOO_MUCH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1078
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v1, v0, v2, v10, v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_e

    .line 1080
    :cond_5
    new-instance v1, Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-direct {v1, v7}, Lorg/telegram/ui/TooManyCommunitiesActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_e

    :cond_6
    if-eqz v2, :cond_7

    .line 1084
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    .line 1085
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/TwoStepVerificationActivity;->finishFragment()V

    .line 1087
    :cond_7
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iget-boolean v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    move-object/from16 v3, p4

    invoke-static {v1, v0, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->showAddUserAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/tgnet/TLObject;)V

    goto/16 :goto_e

    :cond_8
    :goto_1
    if-eqz v2, :cond_9

    .line 987
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    .line 989
    :cond_9
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 990
    sget v3, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertTitle:I

    const-string v11, "EditAdminTransferAlertTitle"

    invoke-static {v11, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 992
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v11, 0x18

    .line 993
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v3, v12, v5, v11, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 994
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 995
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 997
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 998
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x41800000    # 16.0f

    .line 999
    invoke-virtual {v5, v7, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1000
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_a

    move v13, v10

    goto :goto_2

    :cond_a
    const/4 v13, 0x3

    :goto_2
    or-int/lit8 v13, v13, 0x30

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1001
    iget-boolean v13, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-eqz v13, :cond_b

    .line 1002
    sget v13, Lorg/telegram/messenger/R$string;->EditChannelAdminTransferAlertText:I

    new-array v15, v7, [Ljava/lang/Object;

    iget-object v14, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v8

    const-string v14, "EditChannelAdminTransferAlertText"

    invoke-static {v14, v13, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1004
    :cond_b
    sget v13, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertText:I

    new-array v14, v7, [Ljava/lang/Object;

    iget-object v15, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v15}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v8

    const-string v15, "EditAdminTransferAlertText"

    invoke-static {v15, v13, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const/4 v13, -0x1

    const/4 v14, -0x2

    .line 1006
    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v5, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1008
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v5, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1009
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x0

    const/16 v19, 0xb

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1010
    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v5, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    new-instance v15, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v15, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1013
    sget v6, Lorg/telegram/messenger/R$drawable;->list_circle:I

    invoke-virtual {v15, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1014
    sget-boolean v17, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v18, 0xb

    if-eqz v17, :cond_c

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    move/from16 v10, v17

    goto :goto_4

    :cond_c
    move v10, v8

    :goto_4
    const/16 v19, 0x9

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sget-boolean v20, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v20, :cond_d

    move v14, v8

    goto :goto_5

    :cond_d
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v20

    move/from16 v14, v20

    :goto_5
    invoke-virtual {v15, v10, v13, v14, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1015
    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1017
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1018
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1019
    invoke-virtual {v10, v7, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1020
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_e

    const/4 v13, 0x5

    goto :goto_6

    :cond_e
    const/4 v13, 0x3

    :goto_6
    or-int/lit8 v13, v13, 0x30

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1021
    sget v13, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertText1:I

    const-string v14, "EditAdminTransferAlertText1"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_f

    const/4 v13, -0x1

    const/4 v14, -0x2

    .line 1023
    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x5

    .line 1024
    invoke-static {v14, v14, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v15, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_f
    const/4 v13, -0x1

    const/4 v14, -0x2

    .line 1026
    invoke-static {v14, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v15, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1027
    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1030
    :goto_7
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1031
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v21, -0x1

    const/16 v22, -0x2

    const/16 v23, 0x0

    const/16 v24, 0xb

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 1032
    invoke-static/range {v21 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1035
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1036
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_10

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    goto :goto_8

    :cond_10
    move v6, v8

    :goto_8
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_11

    move v13, v8

    goto :goto_9

    :cond_11
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    :goto_9
    invoke-virtual {v7, v6, v10, v13, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1037
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v8, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1039
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1040
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v8, 0x1

    .line 1041
    invoke-virtual {v6, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1042
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_12

    const/4 v8, 0x5

    goto :goto_a

    :cond_12
    const/4 v8, 0x3

    :goto_a
    or-int/lit8 v8, v8, 0x30

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 1043
    sget v8, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertText2:I

    const-string v10, "EditAdminTransferAlertText2"

    invoke-static {v10, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_13

    const/4 v8, -0x1

    const/4 v10, -0x2

    .line 1045
    invoke-static {v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, 0x5

    .line 1046
    invoke-static {v10, v10, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_13
    const/4 v8, -0x1

    const/4 v10, -0x2

    const/4 v13, 0x5

    .line 1048
    invoke-static {v10, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v5, v7, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1049
    invoke-static {v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1052
    :goto_b
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1053
    sget v1, Lorg/telegram/messenger/R$string;->EditAdminTransferSetPassword:I

    const-string v3, "EditAdminTransferSetPassword"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1054
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_d

    .line 1056
    :cond_14
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1057
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x1

    .line 1058
    invoke-virtual {v1, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1059
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_15

    move v10, v13

    goto :goto_c

    :cond_15
    const/4 v10, 0x3

    :goto_c
    or-int/lit8 v4, v10, 0x30

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1060
    sget v4, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertText3:I

    const-string v5, "EditAdminTransferAlertText3"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/16 v8, 0xb

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1061
    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v3, "OK"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1065
    :goto_d
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_e

    :cond_16
    if-eqz p2, :cond_17

    .line 1091
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;->didChangeOwner(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1092
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 1093
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    .line 1094
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/TwoStepVerificationActivity;->finishFragment()V

    :cond_17
    :goto_e
    return-void
.end method

.method private synthetic lambda$initTransfer$14(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 963
    new-instance p4, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda16;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initTransfer$7(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 946
    iput-wide p3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    .line 947
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 948
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->initTransfer(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initTransfer$8(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 0

    .line 979
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->initTransfer(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method private synthetic lambda$initTransfer$9(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 978
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    .line 979
    new-instance p2, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->setDelegate(Lorg/telegram/ui/TwoStepVerificationActivity$TwoStepVerificationActivityDelegate;)V

    .line 980
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onDonePressed$15(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1261
    iput-wide p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    .line 1262
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1263
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->onDonePressed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDonePressed$16()V
    .locals 5

    .line 1299
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

    if-eqz v0, :cond_3

    .line 1303
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-nez v2, :cond_2

    :cond_0
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 1304
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    .line 1300
    invoke-interface {v0, v2, v1, v3, v4}, Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;->didSetRights(ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V

    .line 1305
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onDonePressed$17(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    const/4 p1, 0x0

    .line 1308
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setLoading(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onDonePressed$18()V
    .locals 6

    .line 1343
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1344
    iget-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;->didSetRights(ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V

    .line 1348
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "scrollToTopOnResume"

    const/4 v3, 0x1

    .line 1349
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1350
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1351
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1352
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChatRightsEditActivity;->setLoading(Z)V

    return-void

    .line 1355
    :cond_2
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1356
    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 1357
    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1358
    iget-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isAddingNew:Z

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v2, :cond_3

    .line 1359
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createAddedAsAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 1360
    iget-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->initialAsAdmin:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v0, :cond_4

    .line 1361
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createPromoteToAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$onDonePressed$19(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    const/4 p1, 0x0

    .line 1367
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setLoading(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onDonePressed$20(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    const/4 p1, 0x0

    .line 1372
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setLoading(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onDonePressed$21(Landroid/content/DialogInterface;I)V
    .locals 13

    const/4 p1, 0x1

    .line 1341
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setLoading(Z)V

    .line 1342
    new-instance v11, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda14;

    invoke-direct {v11, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    .line 1365
    iget-boolean p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->initialAsAdmin:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1371
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->botHash:Ljava/lang/String;

    const/4 v7, 0x1

    new-instance v9, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda18;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    move-object v6, p0

    move-object v8, v11

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;)V

    goto :goto_2

    .line 1366
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->emptyAdminRights(Z)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    :goto_1
    move-object v4, p1

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    const/4 v6, 0x0

    iget-boolean v8, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isAddingNew:Z

    iget-boolean v9, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    iget-object v10, p0, Lorg/telegram/ui/ChatRightsEditActivity;->botHash:Ljava/lang/String;

    new-instance v12, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda19;

    invoke-direct {v12, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    move-object v7, p0

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/MessagesController;->setUserAdminRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$setLoading$22(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1396
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CrossfadeDrawable;->setProgress(F)V

    .line 1397
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$updateAsAdmin$25(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2147
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    .line 2148
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButton:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 2149
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private onDonePressed()V
    .locals 22

    move-object/from16 v13, p0

    .line 1255
    iget-boolean v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->loading:Z

    if-eqz v0, :cond_0

    return-void

    .line 1258
    :cond_0
    iget-object v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const/16 v1, 0x10

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_3

    iget v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eq v0, v5, :cond_2

    if-nez v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatRightsEditActivity;->isDefaultAdminRights()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    if-eq v0, v2, :cond_1

    iget-object v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    if-gt v0, v1, :cond_2

    :cond_1
    iget v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-ne v0, v3, :cond_3

    iget-object v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatRightsEditActivity;->isDefaultAdminRights()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1259
    :cond_2
    iget v0, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, v13, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    new-instance v5, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda20;

    invoke-direct {v5, v13}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    move-object/from16 v4, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    return-void

    .line 1268
    :cond_3
    iget v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_b

    .line 1269
    :cond_4
    iget v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    if-eq v0, v2, :cond_7

    iget-object v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    if-le v0, v1, :cond_7

    .line 1270
    iget-object v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, v13, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1271
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_5

    const-wide/16 v1, 0xc8

    .line 1273
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1275
    :cond_5
    iget-object v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, v13, Lorg/telegram/ui/ChatRightsEditActivity;->rankHeaderRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1277
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    :cond_6
    return-void

    .line 1281
    :cond_7
    iget-boolean v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-eqz v0, :cond_8

    .line 1282
    iget-object v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    goto :goto_0

    .line 1284
    :cond_8
    iget-object v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 1286
    :goto_0
    iget-object v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-nez v1, :cond_a

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v1, :cond_a

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-nez v1, :cond_a

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-nez v1, :cond_a

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-nez v1, :cond_a

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-nez v1, :cond_a

    iget-boolean v1, v13, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-nez v1, :cond_a

    :cond_9
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-nez v1, :cond_a

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v1, :cond_a

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-nez v1, :cond_a

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-nez v1, :cond_a

    .line 1289
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    goto :goto_1

    .line 1291
    :cond_a
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    .line 1295
    :cond_b
    :goto_1
    iget v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-nez v0, :cond_d

    .line 1296
    iget-object v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

    if-nez v0, :cond_c

    move v14, v5

    goto :goto_2

    :cond_c
    move v14, v4

    .line 1297
    :goto_2
    invoke-virtual {v13, v5}, Lorg/telegram/ui/ChatRightsEditActivity;->setLoading(Z)V

    .line 1298
    iget v0, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v13, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    iget-object v3, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v13, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-object v5, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    iget-boolean v6, v13, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    iget-boolean v8, v13, Lorg/telegram/ui/ChatRightsEditActivity;->isAddingNew:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda13;

    invoke-direct {v11, v13}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    new-instance v12, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda17;

    invoke-direct {v12, v13}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/MessagesController;->setUserAdminRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;)V

    move v4, v14

    goto/16 :goto_b

    :cond_d
    if-ne v0, v5, :cond_10

    .line 1312
    iget v0, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-wide v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    iget-object v2, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/16 v18, 0x0

    iget-object v6, v13, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v7, v13, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    invoke-virtual {v13, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentForAlert(I)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v21

    move-wide v15, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v6

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v21}, Lorg/telegram/messenger/MessagesController;->setParticipantBannedRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1314
    iget-object v0, v13, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v1, :cond_e

    goto :goto_3

    .line 1318
    :cond_e
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    goto :goto_4

    :cond_f
    :goto_3
    move v3, v5

    .line 1321
    :goto_4
    iget-object v1, v13, Lorg/telegram/ui/ChatRightsEditActivity;->delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

    if-eqz v1, :cond_17

    .line 1322
    iget-object v2, v13, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-object v4, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v0, v4}, Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;->didSetRights(ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_10
    if-ne v0, v3, :cond_17

    .line 1325
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1326
    iget-boolean v1, v13, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    const-string v2, "AddBot"

    if-eqz v1, :cond_11

    .line 1327
    sget v1, Lorg/telegram/messenger/R$string;->AddBotAdmin:I

    const-string v6, "AddBotAdmin"

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1328
    :cond_11
    sget v1, Lorg/telegram/messenger/R$string;->AddBot:I

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1326
    :goto_5
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1330
    iget-object v1, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_12

    move v1, v5

    goto :goto_6

    :cond_12
    move v1, v4

    .line 1331
    :goto_6
    iget-object v6, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v6, :cond_13

    const-string v6, ""

    goto :goto_7

    :cond_13
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1333
    :goto_7
    iget-boolean v7, v13, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v7, :cond_15

    if-eqz v1, :cond_14

    .line 1335
    sget v1, Lorg/telegram/messenger/R$string;->AddBotMessageAdminChannel:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v6, v3, v4

    const-string v5, "AddBotMessageAdminChannel"

    invoke-static {v5, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 1336
    :cond_14
    sget v1, Lorg/telegram/messenger/R$string;->AddBotMessageAdminGroup:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v6, v3, v4

    const-string v5, "AddBotMessageAdminGroup"

    invoke-static {v5, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 1337
    :cond_15
    sget v1, Lorg/telegram/messenger/R$string;->AddMembersAlertNamesText:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, v13, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    aput-object v6, v3, v5

    const-string v5, "AddMembersAlertNamesText"

    invoke-static {v5, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1332
    :goto_8
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1339
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v3, "Cancel"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1340
    iget-boolean v1, v13, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v1, :cond_16

    sget v1, Lorg/telegram/messenger/R$string;->AddAsAdmin:I

    const-string v2, "AddAsAdmin"

    goto :goto_9

    :cond_16
    sget v1, Lorg/telegram/messenger/R$string;->AddBot:I

    :goto_9
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, v13}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1377
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_b

    :cond_17
    :goto_a
    move v4, v5

    :goto_b
    if-eqz v4, :cond_18

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_18
    return-void
.end method

.method public static rightsOR(Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
    .locals 4

    .line 417
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    .line 418
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 419
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v3

    :goto_3
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 420
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v3

    :goto_5
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    .line 421
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-nez v1, :cond_7

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    goto :goto_7

    :cond_7
    :goto_6
    move v1, v3

    :goto_7
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    .line 422
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-nez v1, :cond_9

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    move v1, v2

    goto :goto_9

    :cond_9
    :goto_8
    move v1, v3

    :goto_9
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    .line 423
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-nez v1, :cond_b

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-eqz v1, :cond_a

    goto :goto_a

    :cond_a
    move v1, v2

    goto :goto_b

    :cond_b
    :goto_a
    move v1, v3

    :goto_b
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    .line 424
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-nez v1, :cond_d

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz v1, :cond_c

    goto :goto_c

    :cond_c
    move v1, v2

    goto :goto_d

    :cond_d
    :goto_c
    move v1, v3

    :goto_d
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    .line 425
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v1, :cond_f

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v1, :cond_e

    goto :goto_e

    :cond_e
    move v1, v2

    goto :goto_f

    :cond_f
    :goto_e
    move v1, v3

    :goto_f
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    .line 426
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-nez v1, :cond_11

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v1, :cond_10

    goto :goto_10

    :cond_10
    move v1, v2

    goto :goto_11

    :cond_11
    :goto_10
    move v1, v3

    :goto_11
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    .line 427
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-nez p0, :cond_12

    iget-boolean p0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz p0, :cond_13

    :cond_12
    move v2, v3

    :cond_13
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    return-object v0
.end method

.method private setSendMediaEnabled(Z)V
    .locals 2

    .line 1992
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    xor-int/lit8 v1, p1, 0x1

    .line 1993
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 1994
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 1995
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/lit8 v1, p1, 0x1

    .line 1996
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/lit8 v1, p1, 0x1

    .line 1997
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/lit8 v1, p1, 0x1

    .line 1998
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/lit8 v1, p1, 0x1

    .line 1999
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 2000
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/lit8 p1, p1, 0x1

    .line 2001
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 2002
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method private setTextLeft(Landroid/view/View;)V
    .locals 4

    .line 1435
    instance-of v0, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v0, :cond_3

    .line 1436
    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1437
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    rsub-int/lit8 v0, v0, 0x10

    int-to-float v2, v0

    const v3, 0x4099999a    # 4.8f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1439
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText2(Ljava/lang/CharSequence;)V

    .line 1440
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    if-gez v0, :cond_1

    .line 1441
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_1

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    .line 1442
    :goto_1
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1443
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const-string v0, ""

    .line 1445
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setText2(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateAsAdmin(Z)V
    .locals 8

    .line 2066
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButton:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2067
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2069
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_15

    .line 2071
    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2072
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    .line 2073
    instance-of v6, v4, Lorg/telegram/ui/Cells/TextCheckCell2;

    if-eqz v6, :cond_14

    .line 2074
    iget-boolean v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-nez v6, :cond_5

    .line 2075
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    if-ne v5, v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v6, :cond_2

    :cond_1
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v6, :cond_3

    .line 2077
    :cond_2
    check-cast v4, Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 2078
    invoke-virtual {v4, v1, v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setEnabled(ZZ)V

    goto/16 :goto_3

    .line 2080
    :cond_3
    check-cast v4, Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 2081
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageRow:I

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    invoke-virtual {v4, v3, p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setEnabled(ZZ)V

    goto/16 :goto_3

    .line 2085
    :cond_5
    iget v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageRow:I

    if-ne v5, v7, :cond_7

    .line 2087
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v5, :cond_13

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_6

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v5, :cond_6

    goto/16 :goto_2

    :cond_6
    move v3, v1

    goto/16 :goto_2

    .line 2088
    :cond_7
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    if-ne v5, v6, :cond_8

    .line 2089
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 2090
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v5, :cond_6

    goto/16 :goto_2

    .line 2091
    :cond_8
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->postMessagesRow:I

    if-ne v5, v6, :cond_9

    .line 2092
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 2093
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    goto/16 :goto_2

    .line 2094
    :cond_9
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->editMesagesRow:I

    if-ne v5, v6, :cond_a

    .line 2095
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    .line 2096
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    goto/16 :goto_2

    .line 2097
    :cond_a
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->deleteMessagesRow:I

    if-ne v5, v6, :cond_b

    .line 2098
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    .line 2099
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    goto/16 :goto_2

    .line 2100
    :cond_b
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->banUsersRow:I

    if-ne v5, v6, :cond_c

    .line 2101
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    .line 2102
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    goto/16 :goto_2

    .line 2103
    :cond_c
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addUsersRow:I

    if-ne v5, v6, :cond_d

    .line 2104
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    .line 2105
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    goto :goto_2

    .line 2106
    :cond_d
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    if-ne v5, v6, :cond_e

    .line 2107
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    .line 2108
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v5, :cond_6

    goto :goto_2

    .line 2109
    :cond_e
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->startVoiceChatRow:I

    if-ne v5, v6, :cond_f

    .line 2110
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    .line 2111
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    goto :goto_2

    .line 2112
    :cond_f
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addAdminsRow:I

    if-ne v5, v6, :cond_10

    .line 2113
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    .line 2114
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    goto :goto_2

    .line 2115
    :cond_10
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->anonymousRow:I

    if-ne v5, v6, :cond_11

    .line 2116
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    .line 2117
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-nez v5, :cond_13

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_6

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v5, :cond_6

    goto :goto_2

    .line 2118
    :cond_11
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageTopicsRow:I

    if-ne v5, v3, :cond_12

    .line 2119
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    .line 2120
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    goto :goto_2

    :cond_12
    move v3, v1

    move v6, v3

    .line 2122
    :cond_13
    :goto_2
    check-cast v4, Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 2123
    invoke-virtual {v4, v3, p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setEnabled(ZZ)V

    :cond_14
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2135
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2137
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_17

    .line 2138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lorg/telegram/messenger/R$string;->AddBotButton:I

    const-string v5, "AddBotButton"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v4, :cond_16

    sget v4, Lorg/telegram/messenger/R$string;->AddBotButtonAsAdmin:I

    const-string v5, "AddBotButtonAsAdmin"

    goto :goto_4

    :cond_16
    sget v4, Lorg/telegram/messenger/R$string;->AddBotButtonAsMember:I

    const-string v5, "AddBotButtonAsMember"

    :goto_4
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    invoke-virtual {v0, v2, p1, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;ZZ)V

    .line 2140
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_18

    .line 2141
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 2142
    iput-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminAnimator:Landroid/animation/ValueAnimator;

    :cond_18
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_1b

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 2145
    iget v4, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    aput v4, p1, v1

    iget-boolean v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v1, :cond_19

    move v1, v0

    goto :goto_5

    :cond_19
    move v1, v2

    :goto_5
    aput v1, p1, v3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminAnimator:Landroid/animation/ValueAnimator;

    .line 2146
    new-instance v1, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2152
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    iget-boolean v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v3, :cond_1a

    goto :goto_6

    :cond_1a
    move v0, v2

    :goto_6
    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2153
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8

    .line 2155
    :cond_1b
    iget-boolean p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz p1, :cond_1c

    goto :goto_7

    :cond_1c
    move v0, v2

    :goto_7
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    .line 2156
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButton:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1d

    .line 2157
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1d
    :goto_8
    return-void
.end method

.method private updateRows(Z)V
    .locals 7

    const/4 v0, -0x1

    .line 1101
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendInlineRow:I

    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendGamesRow:I

    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendGifsRow:I

    .line 1102
    iget v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerShadowRow:I

    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerRow:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1104
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageRow:I

    .line 1105
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    .line 1106
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->postMessagesRow:I

    .line 1107
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->editMesagesRow:I

    .line 1108
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->deleteMessagesRow:I

    .line 1109
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addAdminsRow:I

    .line 1110
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->anonymousRow:I

    .line 1111
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->banUsersRow:I

    .line 1112
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addUsersRow:I

    .line 1113
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    .line 1114
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    .line 1115
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->removeAdminRow:I

    .line 1116
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->removeAdminShadowRow:I

    .line 1117
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->cantEditInfoRow:I

    .line 1118
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerShadowRow:I

    .line 1119
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerRow:I

    .line 1120
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankHeaderRow:I

    .line 1121
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    .line 1122
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankInfoRow:I

    .line 1124
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMessagesRow:I

    .line 1125
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    .line 1127
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPhotosRow:I

    .line 1128
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVideosRow:I

    .line 1129
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMusicRow:I

    .line 1130
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendFilesRow:I

    .line 1131
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVoiceRow:I

    .line 1132
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendRoundRow:I

    .line 1133
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendStickersRow:I

    .line 1134
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPollsRow:I

    .line 1135
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->embedLinksRow:I

    .line 1136
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->startVoiceChatRow:I

    .line 1137
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilSectionRow:I

    .line 1138
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    .line 1139
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonRow:I

    .line 1140
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageTopicsRow:I

    const/4 v2, 0x3

    .line 1142
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    .line 1144
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-ne v3, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    if-ne v3, v5, :cond_6

    const/4 v6, 0x3

    add-int/2addr v6, v5

    .line 1170
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMessagesRow:I

    add-int/lit8 v2, v6, 0x1

    .line 1171
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    .line 1172
    iget-boolean v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaExpanded:Z

    if-eqz v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    .line 1173
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPhotosRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1174
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVideosRow:I

    add-int/lit8 v5, v2, 0x1

    .line 1175
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendFilesRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1176
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMusicRow:I

    add-int/lit8 v5, v2, 0x1

    .line 1177
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVoiceRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1178
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendRoundRow:I

    add-int/lit8 v5, v2, 0x1

    .line 1179
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendStickersRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1181
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendGifsRow:I

    add-int/lit8 v5, v2, 0x1

    .line 1182
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendGamesRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1183
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendInlineRow:I

    add-int/lit8 v5, v2, 0x1

    .line 1185
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPollsRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1186
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->embedLinksRow:I

    .line 1189
    :cond_1
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addUsersRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1190
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    add-int/lit8 v5, v2, 0x1

    .line 1191
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    .line 1192
    iget-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    if-eqz v2, :cond_2

    add-int/lit8 v2, v5, 0x1

    .line 1193
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageTopicsRow:I

    .line 1195
    :cond_2
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilSectionRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1196
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    goto :goto_1

    .line 1145
    :cond_3
    :goto_0
    iget-boolean v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    add-int/2addr v6, v5

    .line 1146
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    add-int/lit8 v2, v6, 0x1

    .line 1147
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->postMessagesRow:I

    add-int/lit8 v5, v2, 0x1

    .line 1148
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->editMesagesRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1149
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->deleteMessagesRow:I

    add-int/lit8 v5, v2, 0x1

    .line 1150
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addUsersRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1151
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->startVoiceChatRow:I

    add-int/lit8 v5, v2, 0x1

    .line 1152
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addAdminsRow:I

    goto :goto_1

    :cond_4
    if-ne v3, v4, :cond_5

    const/4 v6, 0x3

    add-int/2addr v6, v5

    .line 1155
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageRow:I

    .line 1157
    :cond_5
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1158
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->deleteMessagesRow:I

    add-int/lit8 v5, v2, 0x1

    .line 1159
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->banUsersRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1160
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addUsersRow:I

    add-int/lit8 v5, v2, 0x1

    .line 1161
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1162
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->startVoiceChatRow:I

    add-int/lit8 v5, v2, 0x1

    .line 1163
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addAdminsRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1164
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->anonymousRow:I

    .line 1165
    iget-boolean v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    if-eqz v5, :cond_6

    add-int/lit8 v5, v2, 0x1

    .line 1166
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageTopicsRow:I

    .line 1198
    :cond_6
    :goto_1
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    .line 1200
    iget-boolean v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->canEdit:Z

    if-eqz v5, :cond_d

    .line 1201
    iget-boolean v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-nez v5, :cond_8

    if-eqz v3, :cond_7

    if-ne v3, v4, :cond_8

    iget-boolean v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v5, :cond_8

    :cond_7
    add-int/lit8 v5, v2, 0x1

    .line 1202
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1203
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankHeaderRow:I

    add-int/lit8 v5, v2, 0x1

    .line 1204
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    add-int/lit8 v2, v5, 0x1

    .line 1205
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankInfoRow:I

    .line 1207
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_b

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v2, :cond_b

    if-nez v3, :cond_b

    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->hasAllAdminRights()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_9

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_b

    .line 1208
    :cond_9
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    if-ne v2, v0, :cond_a

    .line 1209
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerShadowRow:I

    .line 1211
    :cond_a
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerRow:I

    if-eq v2, v0, :cond_b

    add-int/lit8 v2, v5, 0x1

    .line 1213
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerShadowRow:I

    .line 1216
    :cond_b
    iget-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->initialIsSet:Z

    if-eqz v2, :cond_12

    .line 1217
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    if-ne v2, v0, :cond_c

    .line 1218
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    .line 1220
    :cond_c
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->removeAdminRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1221
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->removeAdminShadowRow:I

    goto :goto_2

    :cond_d
    if-nez v3, :cond_11

    .line 1225
    iget-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1226
    :cond_e
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1227
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankHeaderRow:I

    add-int/lit8 v3, v2, 0x1

    .line 1228
    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    .line 1229
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1230
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankInfoRow:I

    goto :goto_2

    .line 1232
    :cond_f
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->cantEditInfoRow:I

    goto :goto_2

    .line 1235
    :cond_10
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->cantEditInfoRow:I

    goto :goto_2

    :cond_11
    add-int/lit8 v3, v2, 0x1

    .line 1238
    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    .line 1241
    :cond_12
    :goto_2
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-ne v2, v4, :cond_13

    .line 1242
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonRow:I

    :cond_13
    if-eqz p1, :cond_15

    if-ne v1, v0, :cond_14

    .line 1246
    iget p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerShadowRow:I

    if-eq p1, v0, :cond_14

    .line 1247
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerRow:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_3

    :cond_14
    if-eq v1, v0, :cond_15

    .line 1248
    iget p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerShadowRow:I

    if-ne p1, v0, :cond_15

    .line 1249
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-virtual {p1, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_15
    :goto_3
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 9

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 445
    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->EditAdmin:I

    const-string v4, "EditAdmin"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->AddBot:I

    const-string v4, "AddBot"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 450
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictions:I

    const-string v4, "UserRestrictions"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 453
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ChatRightsEditActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatRightsEditActivity$1;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 466
    iget-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->canEdit:Z

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 468
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 469
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 470
    new-instance v5, Lorg/telegram/ui/Components/CrossfadeDrawable;

    new-instance v7, Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-direct {v7, v6}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    invoke-direct {v5, v4, v7}, Lorg/telegram/ui/Components/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/16 v4, 0x38

    .line 471
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sget v5, Lorg/telegram/messenger/R$string;->Done:I

    const-string v6, "Done"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 472
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 475
    :cond_3
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$2;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 488
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    .line 490
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 492
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$3;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 509
    iget v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eq v5, v2, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 510
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity$4;

    invoke-direct {v0, p0, p1, v1, v3}, Lorg/telegram/ui/ChatRightsEditActivity$4;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/16 v5, 0x64

    .line 516
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 519
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 520
    iget v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-ne v5, v2, :cond_5

    .line 521
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setResetSelectorOnChanged(Z)V

    .line 523
    :cond_5
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 524
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 525
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x15e

    .line 526
    invoke-virtual {v0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 527
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ChatRightsEditActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatRightsEditActivity$5;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 914
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2166
    new-instance v11, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda24;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    .line 2178
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/UserCell2;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v13, 0x1

    aput-object v2, v5, v13

    const/4 v2, 0x2

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v5, v2

    const/4 v2, 0x4

    const-class v6, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v6, v5, v2

    const/4 v2, 0x5

    const-class v6, Lorg/telegram/ui/Cells/PollEditTextCell;

    aput-object v6, v5, v2

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2179
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2181
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v21

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2182
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2183
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2184
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2187
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2189
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v13, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2191
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v3, v12

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object v14, v2

    move-object/from16 v17, v3

    move/from16 v21, v24

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2192
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v4, v12

    const-string v14, "textView"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v29

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2194
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v19

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v23, v33

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2195
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v36, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v38

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move/from16 v42, v5

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v4, v12

    const-string v6, "valueTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v17, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2197
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v7, v4, v12

    const-string v7, "valueImageView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v38

    sget v42, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const/16 v36, 0x0

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2199
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v7, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v19

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v23, v5

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2200
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v7, v4, v12

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v38

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move/from16 v42, v7

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2202
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v8, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v19

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2203
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v8, v4, v12

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v19

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v23, v7

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2204
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v6, v4, v12

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v38

    sget v42, Lorg/telegram/ui/ActionBar/Theme;->key_switch2Track:I

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2205
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v7, v4, v12

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2207
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v6, v4, v12

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2209
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v38

    sget v42, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2210
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v4, v12

    const-string v6, "textView2"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v29

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2211
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v7, v4, v12

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/16 v20, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2213
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/PollEditTextCell;

    aput-object v6, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v19

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v23, v5

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2214
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/PollEditTextCell;

    aput-object v6, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2216
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell2;

    aput-object v6, v4, v12

    const-string v6, "nameTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v19

    const/16 v17, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v23, v5

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2217
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v13, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/UserCell2;

    aput-object v2, v5, v12

    const-string v2, "statusColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v15

    move-object v9, v11

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2218
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v13, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/UserCell2;

    aput-object v2, v5, v12

    const-string v2, "statusOnlineColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    move-object v2, v15

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2219
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/UserCell2;

    aput-object v5, v4, v12

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/16 v18, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2220
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2221
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2222
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2223
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2224
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2225
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2226
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2228
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/DialogRadioCell;

    aput-object v4, v3, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    move-object v15, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2229
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/DialogRadioCell;

    aput-object v4, v3, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, v2

    move-object/from16 v27, v3

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2230
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/DialogRadioCell;

    aput-object v4, v3, v12

    const-string v4, "radioButton"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackground:I

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2231
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v3, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/DialogRadioCell;

    aput-object v5, v3, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    const/16 v24, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v2

    move-object/from16 v26, v3

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1452
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->checkDiscard()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 919
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 923
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V
    .locals 0

    .line 1405
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

    return-void
.end method

.method public setLoading(Z)V
    .locals 3

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawableAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1389
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 1391
    iput-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->loading:Z

    .line 1392
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1393
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 1394
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v0

    aput v0, v1, v2

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawableAnimator:Landroid/animation/ValueAnimator;

    .line 1395
    new-instance v1, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawableAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43160000    # 150.0f

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v2

    int-to-float p1, p1

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v1

    float-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1400
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawableAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method
