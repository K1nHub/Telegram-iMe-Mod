.class public Lorg/telegram/ui/ChatEditActivity;
.super Lcom/iMe/ui/base/mvp/JavaMvpFragment;
.source "ChatEditActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private adminCell:Lorg/telegram/ui/Cells/TextCell;

.field private final albumMode:Z

.field private availableReactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarAnimation:Landroid/animation/AnimatorSet;

.field private avatarContainer:Landroid/widget/LinearLayout;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarOverlay:Landroid/view/View;

.field private avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private blockCell:Lorg/telegram/ui/Cells/TextCell;

.field private botInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private canForum:Z

.field private changeBotSettingsCell:Lorg/telegram/ui/Cells/TextCell;

.field private chatId:J

.field private colorCell:Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

.field private createAfterUpload:Z

.field private cryptoBoxesCell:Lorg/telegram/ui/Cells/TextCell;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private deleteContainer:Landroid/widget/FrameLayout;

.field private deleteInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private doneButton:Landroid/view/View;

.field private donePressed:Z

.field private editCommandsCell:Lorg/telegram/ui/Cells/TextCell;

.field private editIntroCell:Lorg/telegram/ui/Cells/TextCell;

.field private forum:Z

.field private forumsCell:Lorg/telegram/ui/Cells/TextCell;

.field private hasUploadedPhoto:Z

.field private historyCell:Lorg/telegram/ui/Cells/TextCell;

.field private historyHidden:Z

.field private imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private infoContainer:Landroid/widget/LinearLayout;

.field private infoSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

.field private isChannel:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private linkedCell:Lorg/telegram/ui/Cells/TextCell;

.field private locationCell:Lorg/telegram/ui/Cells/TextCell;

.field private logCell:Lorg/telegram/ui/Cells/TextCell;

.field private memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

.field private membersCell:Lorg/telegram/ui/Cells/TextCell;

.field private nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

.field private final preloadedReactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

.field private reactionsCell:Lorg/telegram/ui/Cells/TextCell;

.field private setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

.field private settingsContainer:Landroid/widget/LinearLayout;

.field private settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private settingsTopSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private signCell:Lorg/telegram/ui/Cells/TextCell;

.field private signMessages:Z

.field private statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

.field private stickersCell:Lorg/telegram/ui/Cells/TextCell;

.field private stickersContainer:Landroid/widget/FrameLayout;

.field private stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private typeCell:Lorg/telegram/ui/Cells/TextCell;

.field private typeEditContainer:Landroid/widget/LinearLayout;

.field private undoView:Lorg/telegram/ui/Components/UndoView;

.field private updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

.field private userId:J

.field private userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

.field private final walletFlowCoordinator:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-8JZmdUok5-R9anrpXrX8jds1Lw(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$30(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-jXSPeR8ZXffblx96ClRK1v_uj8(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$didUploadPhoto$38()V

    return-void
.end method

.method public static synthetic $r8$lambda$0nFQURAWtCmx86pM1I5aV9oh_Ww(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$1ZbIJPZxab5wHO3aoxEZDKKcKk8(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5P8m_nZBv9ryeNz9YVCi7wUTkT4(Lorg/telegram/ui/ChatEditActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$checkDiscard$41(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Dcw04R-Nq0GRTo34r0_7A-KnCs(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$24(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7HtG-3BZGC4pe33lDvZDguoTSLM(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$22(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8yobQKhYk5327-luGIhMkLpV6cg(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatEditActivity;->lambda$processDone$46(Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AkIhbH_Cl-imXrMG-tQhyCD_aF0(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$33(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DZ9c_Xtx6di58wVsbEUk-T4s0j8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Eyz7J0BRjB155NQ4H-lktA-h8F8(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$32(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HGjXQXSDYBgiLlQEvkToEuQhP3A(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$loadLinksCount$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KpNo5J80DgzFeMjx_raVWIZZVIY(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$10(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LqZ_O4JmgYDFO9eIooKx8YUmydk(Lorg/telegram/ui/ChatEditActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$7(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MuSsgAVNwi5jjwAQbcsMvSxDTn0(Lorg/telegram/ui/ChatEditActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$36(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$N3A_ESx2BHdgMdJiiL5IXYGXgSQ(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$loadLinksCount$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Obxa8nhtPnhHKMetidI3SPRYj3Q(Lorg/telegram/ui/ChatEditActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$checkDiscard$42(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PtRB_7LFgSpxo7wgvsPzXcskr2s(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R4mbOYD8I8SGkt0VJ7hrHPR0HSo(Lorg/telegram/ui/ChatEditActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$processDone$49(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R5M6-qcEcsjxZFUCJs6CSxKuLzA(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$RO-7wpfjlCO82JLEy5L6Vpz6E60(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$31(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RUQTZaLl57khv1i-iX0EE8Be81o(Lorg/telegram/ui/ChatEditActivity;[Lorg/telegram/ui/Cells/RadioButtonCell;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$15([Lorg/telegram/ui/Cells/RadioButtonCell;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RldtIv5qPdQBxQFsPkEb78xjxSE(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RuQbebEzbr9QsbI8Pf2JRbPbiBo(Lorg/telegram/ui/ChatEditActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$processDone$48(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$SJM25forMDO2K4yjedtb0V3m5Ts(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$37(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SdtHvQoENA2OqnI0c18EnblSG-4(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vs5i46CqaWUI6Be6JxbvXMW7O64(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WHgEMw3svebqwnbNf6vnTbsTPXU(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YOocWybrTIApLTqhvzrS6dBWNDc(Lorg/telegram/ui/ChatEditActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$9(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZHPVr7RcVUr1-tlFcBkUdpzslnA(Lorg/telegram/ui/ChatEditActivity;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$updateHistoryShow$50(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aSkOeEvYvqZY93xE-p4GDzkCXY0(Lorg/telegram/ui/ChatEditActivity;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$18(Landroid/widget/FrameLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$biUQMS4ygyrJPHydOtCSaB_6R6o(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$didUploadPhoto$39(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cLrbH9Y-bHYyPBMW-Mpg5Ptv54c(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$diWncQ0qRiz53pjXoOTzI22zit8(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$34(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gVWiS3J8AzfgQRj2h7j8RwmPaaE(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$35(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hFeN-DyaKk3fDJG8qJuVj6Ck18A(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$processDone$45()V

    return-void
.end method

.method public static synthetic $r8$lambda$jIGSCkrC9lKT8pflF4znS4S4U5w(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$29(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mRDFZfhFZJ3ji757NT1gZnpAO5M(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$25(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nDgac-f9Jpyfz9zOSGBDzlWChb8(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$23(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nggg_4jmyz3cQDiePZA2bQpPHSY(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nhJxH9PuYZxeCdgxBvgiBnYoFqs(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$16(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qf3SycwAJS6cUyB53cKskqplhdc(Lorg/telegram/ui/ChatEditActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$checkDiscard$44(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qnfTpnHZmUsnlEKUIuhKKnJW2J0(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sxhoICJU3arLonRbKH4_b5MeaY4(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$getThemeDescriptions$51()V

    return-void
.end method

.method public static synthetic $r8$lambda$t2HAnx-y98bJfGWfDODSf9WEIVY(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-xdVlcLlCYzaj-22qfw2YF-uMI(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uk4yXbp6ubcB_gQeAzPmHTvXZrQ(Lorg/telegram/ui/ChatEditActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$processDone$47(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wcfRjLdyiCEAtS9_Mtqy5e5jOco()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$yYyx4GUdOzlDUIsl1bNGyAfs93o(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$26(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yiBVsNJSeyaxSl2vM7b4l9PiogY(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yuHjDvA2YAtYhQRmhMop2kjppQU(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;DLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/ChatEditActivity;->lambda$didUploadPhoto$40(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;DLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yzYREIwxV1vPHG-SC3Ug4NWtyhU(Lorg/telegram/ui/ChatEditActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$checkDiscard$43(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5

    .line 322
    invoke-direct {p0, p1}, Lcom/iMe/ui/base/mvp/JavaMvpFragment;-><init>(Landroid/os/Bundle;)V

    .line 121
    const-class v0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->walletFlowCoordinator:Lkotlin/Lazy;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->preloadedReactions:Ljava/util/List;

    .line 231
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatEditActivity$1;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 323
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-string v0, "chat_id"

    const-wide/16 v1, 0x0

    .line 324
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    .line 325
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    neg-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/iMe/fork/controller/AlbumsController;->isDialogAlbum(J)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->albumMode:Z

    const-string v0, "user_id"

    .line 326
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    .line 328
    iget-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_1

    .line 329
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 330
    new-instance v0, Lorg/telegram/ui/Components/ImageUpdater;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-direct {v0, v1, p1, v1}, Lorg/telegram/ui/Components/ImageUpdater;-><init>(ZIZ)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    goto :goto_1

    .line 332
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/ImageUpdater;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Lorg/telegram/ui/Components/ImageUpdater;-><init>(ZIZ)V

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChatEditActivity;)J
    .locals 2

    .line 112
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChatEditActivity;)Z
    .locals 0

    .line 112
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->checkDiscard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->processDone()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/EditTextEmoji;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ChatEditActivity;)Landroid/view/View;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChatEditActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/ChatEditActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Cells/TextCell;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChatEditActivity;)J
    .locals 2

    .line 112
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChatEditActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/ImageUpdater;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/AvatarDrawable;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Cells/TextCell;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/ChatEditActivity;Z)Z
    .locals 0

    .line 112
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->hasUploadedPhoto:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method private checkDiscard()Z
    .locals 8

    .line 1580
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v2, "PassportDiscard"

    const-string v3, "ApplyTheme"

    const-string v4, "UserRestrictionsApplyChanges"

    const/4 v5, 0x1

    const-string v6, ""

    if-eqz v0, :cond_4

    .line 1581
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v6, v0

    .line 1582
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_3

    .line 1583
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1584
    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lorg/telegram/messenger/R$string;->UserRestrictionsApplyChanges:I

    .line 1585
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$string;->BotSettingsChangedAlert:I

    .line 1586
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    .line 1587
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    .line 1588
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 1589
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1584
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v1

    :cond_3
    return v5

    .line 1595
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_5

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    if-eqz v7, :cond_5

    move-object v6, v7

    :cond_5
    if-eqz v0, :cond_6

    .line 1596
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    iget-boolean v7, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    if-ne v0, v7, :cond_a

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1597
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_8

    .line 1598
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    iget-object v6, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-ne v0, v7, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eq v0, v6, :cond_9

    goto :goto_0

    :cond_9
    return v5

    .line 1600
    :cond_a
    :goto_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1601
    sget v5, Lorg/telegram/messenger/R$string;->UserRestrictionsApplyChanges:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1602
    iget-boolean v4, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v4, :cond_b

    .line 1603
    sget v4, Lorg/telegram/messenger/R$string;->ChannelSettingsChangedAlert:I

    const-string v5, "ChannelSettingsChangedAlert"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1605
    :cond_b
    sget v4, Lorg/telegram/messenger/R$string;->GroupSettingsChangedAlert:I

    const-string v5, "GroupSettingsChangedAlert"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1607
    :goto_1
    sget v4, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1608
    sget v3, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1609
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v1
.end method

.method private getActiveUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 2

    .line 1385
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1389
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_username;

    .line 1390
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v1, :cond_1

    .line 1391
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAdminCount()I
    .locals 5

    .line 1616
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1620
    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1621
    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1622
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-nez v4, :cond_1

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private synthetic lambda$checkDiscard$41(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1587
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$42(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1588
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$43(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1607
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$44(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1608
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$10(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 0

    .line 913
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;-><init>()V

    .line 914
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->address:Ljava/lang/String;

    .line 915
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 917
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    .line 918
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const p3, 0x8000

    or-int/2addr p2, p3

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 919
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    .line 920
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide p4, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {p3, p4, p5, p1, p2}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/view/View;)V
    .locals 2

    .line 904
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 907
    :cond_0
    new-instance p1, Lorg/telegram/ui/LocationActivity;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    .line 908
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/LocationActivity;->setDialogId(J)V

    .line 909
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v1, :cond_1

    .line 910
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/LocationActivity;->setInitialLocation(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)V

    .line 912
    :cond_1
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda52;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/LocationActivity;->setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V

    .line 922
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$12(Landroid/view/View;)V
    .locals 3

    .line 931
    new-instance p1, Lorg/telegram/ui/ChatEditTypeActivity;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p1, v0, v1, v2}, Lorg/telegram/ui/ChatEditTypeActivity;-><init>(JZ)V

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatEditTypeActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 933
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$13(Landroid/view/View;)V
    .locals 2

    .line 942
    new-instance p1, Lorg/telegram/ui/ChatLinkActivity;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/ChatLinkActivity;-><init>(J)V

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatLinkActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 944
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$14(Landroid/view/View;)V
    .locals 3

    .line 953
    new-instance p1, Lorg/telegram/ui/ChannelColorActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/ChannelColorActivity;-><init>(J)V

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ChannelColorActivity;->setOnApplied(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ChannelColorActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 955
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    .line 956
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "boostingappearance"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 955
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 957
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$createView$15([Lorg/telegram/ui/Cells/RadioButtonCell;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V
    .locals 4

    .line 998
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 999
    aget-object v1, p1, v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 1000
    aget-object p1, p1, v3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p1, v1, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 1001
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_2

    move v0, v3

    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    .line 1002
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1003
    invoke-direct {p0, v3, v3}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$16(Landroid/content/Context;Landroid/view/View;)V
    .locals 13

    .line 966
    new-instance p2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 967
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 969
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 970
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 972
    new-instance v9, Lorg/telegram/ui/Cells/HeaderCell;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    const/16 v6, 0x17

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    const/16 v3, 0x2f

    .line 973
    invoke-virtual {v9, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    .line 974
    sget v3, Lorg/telegram/messenger/R$string;->ChatHistory:I

    const-string v4, "ChatHistory"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 975
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 977
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 978
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, -0x1

    const/4 v5, -0x2

    .line 979
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x2

    new-array v7, v6, [Lorg/telegram/ui/Cells/RadioButtonCell;

    move v8, v0

    :goto_0
    if-ge v8, v6, :cond_2

    .line 984
    new-instance v9, Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-direct {v9, p1, v2}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;Z)V

    aput-object v9, v7, v8

    .line 985
    aget-object v9, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 986
    aget-object v9, v7, v8

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v8, :cond_0

    .line 988
    aget-object v9, v7, v8

    sget v10, Lorg/telegram/messenger/R$string;->ChatHistoryVisible:I

    const-string v11, "ChatHistoryVisible"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$string;->ChatHistoryVisibleInfo:I

    const-string v12, "ChatHistoryVisibleInfo"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    xor-int/2addr v12, v2

    invoke-virtual {v9, v10, v11, v2, v12}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 990
    :cond_0
    iget-object v9, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    const-string v10, "ChatHistoryHidden"

    if-eqz v9, :cond_1

    .line 991
    aget-object v9, v7, v8

    sget v11, Lorg/telegram/messenger/R$string;->ChatHistoryHidden:I

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$string;->ChatHistoryHiddenInfo:I

    const-string v12, "ChatHistoryHiddenInfo"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    invoke-virtual {v9, v10, v11, v0, v12}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 993
    :cond_1
    aget-object v9, v7, v8

    sget v11, Lorg/telegram/messenger/R$string;->ChatHistoryHidden:I

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$string;->ChatHistoryHiddenInfo2:I

    const-string v12, "ChatHistoryHiddenInfo2"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    invoke-virtual {v9, v10, v11, v0, v12}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 996
    :goto_1
    aget-object v9, v7, v8

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 997
    aget-object v9, v7, v8

    new-instance v10, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda33;

    invoke-direct {v10, p0, v7, p2}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/ChatEditActivity;[Lorg/telegram/ui/Cells/RadioButtonCell;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1007
    :cond_2
    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1008
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createView$17(Landroid/view/View;)V
    .locals 1

    .line 1018
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    .line 1019
    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$18(Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 6

    .line 1028
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1030
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p2, :cond_0

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    .line 1031
    sget p2, Lorg/telegram/messenger/R$string;->ChannelTopicsDiscussionForbidden:I

    const-string v0, "ChannelTopicsDiscussionForbidden"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_0

    .line 1033
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->forumUpgradeParticipantsMin:I

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "ChannelTopicsForbidden"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 1035
    :goto_0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->topics:I

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    const/4 p2, 0x3

    .line 1036
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    return-void

    .line 1039
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    .line 1040
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_2

    const/16 p1, 0x10

    goto :goto_1

    :cond_2
    const/16 p1, 0x20

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/BackupImageView;->animateToRoundRadius(I)V

    .line 1041
    check-cast p2, Lorg/telegram/ui/Cells/TextCell;

    iget-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1042
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$19(Landroid/view/View;)V
    .locals 3

    .line 1085
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1086
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const-string v2, "chat_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1087
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1088
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 1089
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1090
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static synthetic lambda$createView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$20(Landroid/view/View;)V
    .locals 6

    .line 1096
    new-instance p1, Lorg/telegram/ui/ManageLinksActivity;

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ManageLinksActivity;-><init>(JJI)V

    .line 1097
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ManageLinksActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)V

    .line 1098
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$21(Landroid/view/View;)V
    .locals 3

    .line 1104
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1105
    new-instance p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-direct {p1, v0, v1, v2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;-><init>(JLorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 1107
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1108
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const-string v2, "chat_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1109
    new-instance v0, Lorg/telegram/ui/ChatReactionsEditActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatReactionsEditActivity;-><init>(Landroid/os/Bundle;)V

    .line 1110
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatReactionsEditActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1111
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$22(Landroid/view/View;)V
    .locals 3

    .line 1118
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1119
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const-string v2, "chat_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "type"

    const/4 v1, 0x1

    .line 1120
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1121
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 1122
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1123
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$23(Landroid/view/View;)V
    .locals 3

    .line 1129
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1130
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const-string v2, "chat_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "type"

    const/4 v1, 0x2

    .line 1131
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1132
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 1133
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1134
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$24(Landroid/view/View;)V
    .locals 2

    .line 1141
    new-instance p1, Lorg/telegram/ui/MemberRequestsActivity;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/MemberRequestsActivity;-><init>(J)V

    .line 1142
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$25(Landroid/view/View;)V
    .locals 1

    .line 1150
    new-instance p1, Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$26(Landroid/view/View;)V
    .locals 3

    .line 1158
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1159
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const-string v2, "chat_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    const-string v1, "is_megagroup"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1161
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1162
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stats:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const-string v1, "only_boosts"

    .line 1163
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1165
    :cond_1
    new-instance v0, Lorg/telegram/ui/StatisticActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/StatisticActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static synthetic lambda$createView$27()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createView$28()V
    .locals 4

    .line 1177
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->walletFlowCoordinator:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1179
    invoke-static {v2}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->newInstance(Lorg/telegram/tgnet/TLRPC$Chat;)Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;

    move-result-object v2

    const/4 v3, 0x0

    .line 1177
    invoke-virtual {v0, v1, v2, v3}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Z)V

    return-void
.end method

.method private synthetic lambda$createView$29(Landroid/view/View;)V
    .locals 2

    .line 1173
    sget-object p1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda37;->INSTANCE:Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda37;

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-static {p0, p1, v0, v1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->runWithCheckIsCryptoWalletCreated(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 4

    .line 711
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 714
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 716
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_3

    .line 717
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 718
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->dc_id:I

    if-eqz v1, :cond_2

    .line 719
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 721
    :cond_2
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    :cond_3
    return-void

    .line 726
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 727
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_7

    .line 728
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 729
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->dc_id:I

    if-eqz v2, :cond_5

    .line 730
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 733
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v2, :cond_6

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 734
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$VideoSize;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 738
    :cond_6
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual {v1, p1, v0, v2}, Lorg/telegram/ui/PhotoViewer;->openPhotoWithVideo(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    :cond_7
    return-void
.end method

.method private synthetic lambda$createView$30(Landroid/view/View;)V
    .locals 1

    .line 1212
    new-instance p1, Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$31(Landroid/view/View;)V
    .locals 2

    .line 1216
    new-instance p1, Lorg/telegram/ui/GroupStickersActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/GroupStickersActivity;-><init>(J)V

    .line 1217
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/GroupStickersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1218
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$32(Landroid/view/View;)V
    .locals 3

    .line 1236
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1237
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-string v2, "bot_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1238
    new-instance v0, Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChangeUsernameActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$33(Landroid/view/View;)V
    .locals 2

    .line 1247
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://t.me/BotFather?start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChatEditActivity;->getActiveUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-intro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$34(Landroid/view/View;)V
    .locals 2

    .line 1253
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://t.me/BotFather?start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChatEditActivity;->getActiveUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-commands"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$35(Landroid/view/View;)V
    .locals 2

    .line 1259
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://t.me/BotFather?start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChatEditActivity;->getActiveUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$36(Z)V
    .locals 7

    .line 1319
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1320
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1322
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1324
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 1325
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needDeleteDialog:I

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x0

    aput-object v2, v4, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    aput-object v2, v4, v1

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$createView$37(Landroid/view/View;)V
    .locals 11

    .line 1318
    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v9, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda45;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/Components/AlertsCreator;->createClearOrDeleteDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;ZZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$createView$4()V
    .locals 8

    .line 808
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 809
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChatSetPhotoOrVideo:I

    const-string v2, "ChatSetPhotoOrVideo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 812
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 813
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 815
    :cond_0
    iput-boolean v3, p0, Lorg/telegram/ui/ChatEditActivity;->hasUploadedPhoto:Z

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_1

    .line 818
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->camera_outline:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x32

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 820
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 821
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 807
    new-instance p1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda40;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$6()V
    .locals 15

    const/4 v0, 0x0

    .line 799
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 800
    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 801
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v2 .. v14}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(JLorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 803
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;-><init>()V

    .line 804
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 805
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->flags:I

    .line 806
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 807
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda47;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 824
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/ChatEditActivity;->showAvatarProgress(ZZ)V

    .line 825
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    :goto_1
    invoke-virtual {v1, v0, v0, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/content/DialogInterface;)V
    .locals 1

    .line 829
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 830
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x56

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 831
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    .line 833
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 4

    .line 798
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    new-instance v3, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {p1, v0, v2, v3, v1}, Lorg/telegram/ui/Components/ImageUpdater;->openMenu(ZLjava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;I)V

    .line 837
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 838
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 839
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 868
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->doneButton:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 869
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$didUploadPhoto$38()V
    .locals 5

    const/4 v0, 0x1

    .line 1537
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->hasUploadedPhoto:Z

    .line 1539
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v0, v0, [Ljava/lang/Object;

    sget v3, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$39(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1536
    new-instance p1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda38;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$40(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;DLjava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v2, p5

    .line 1506
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, v1, Lorg/telegram/ui/ChatEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    if-eqz v8, :cond_0

    goto/16 :goto_1

    .line 1558
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v4, v1, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    :goto_0
    const-string v5, "50_50"

    invoke-virtual {v0, v2, v5, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 1559
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChatSetNewPhoto:I

    const-string v3, "ChatSetNewPhoto"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    invoke-virtual {v0, v2, v3, v14}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1560
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_2

    .line 1561
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->camera_outline:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x32

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, v0

    move/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p4, v5

    move/from16 p5, v4

    move/from16 p6, v6

    move-object/from16 p7, v7

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 1563
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1564
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v2, v1, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 1565
    invoke-direct {v1, v14, v15}, Lorg/telegram/ui/ChatEditActivity;->showAvatarProgress(ZZ)V

    goto/16 :goto_5

    .line 1508
    :cond_3
    :goto_1
    iget-wide v3, v1, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-eqz v3, :cond_a

    .line 1509
    iget-object v3, v1, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_6

    .line 1510
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1511
    iget-object v3, v1, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v6, :cond_4

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$InputFile;->id:J

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_5

    iget-wide v9, v7, Lorg/telegram/tgnet/TLRPC$InputFile;->id:J

    :cond_5
    :goto_2
    iput-wide v9, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    .line 1512
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1513
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1514
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2, v14}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1517
    :cond_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;-><init>()V

    if-eqz v6, :cond_7

    .line 1519
    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1520
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/2addr v2, v14

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    :cond_7
    if-eqz v7, :cond_8

    .line 1523
    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1524
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    move-wide/from16 v9, p6

    .line 1526
    iput-wide v9, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video_start_ts:D

    or-int/lit8 v2, v2, 0x4

    .line 1527
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    :cond_8
    if-eqz v8, :cond_9

    .line 1530
    iput-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video_emoji_markup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 1531
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    .line 1533
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1534
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    .line 1536
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda49;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_3

    :cond_a
    move-wide/from16 v9, p6

    .line 1542
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v1, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const/4 v11, 0x0

    iget-object v12, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v0, 0x0

    move-object v2, v3

    move-wide v3, v4

    move-object v5, v11

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v11, p8

    move-object v14, v0

    invoke-virtual/range {v2 .. v14}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(JLorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/Runnable;)V

    .line 1544
    :goto_3
    iget-boolean v0, v1, Lorg/telegram/ui/ChatEditActivity;->createAfterUpload:Z

    if-eqz v0, :cond_c

    .line 1546
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1547
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 1548
    iput-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1551
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1553
    :cond_b
    :goto_4
    iput-boolean v15, v1, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    .line 1554
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_c
    const/4 v2, 0x1

    .line 1556
    invoke-direct {v1, v15, v2}, Lorg/telegram/ui/ChatEditActivity;->showAvatarProgress(ZZ)V

    :goto_5
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$51()V
    .locals 1

    .line 2155
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_0

    .line 2156
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadLinksCount$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    if-nez p1, :cond_0

    .line 409
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->count:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    .line 411
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/messenger/MessagesStorage;->saveChatLinksCount(JI)V

    const/4 p1, 0x0

    .line 412
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadLinksCount$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 407
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processDone$45()V
    .locals 1

    .line 1668
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1669
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$processDone$46(Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1662
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz p2, :cond_0

    .line 1663
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->about:Ljava/lang/String;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    .line 1664
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 1667
    :cond_0
    new-instance p1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda41;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processDone$47(ILandroid/content/DialogInterface;)V
    .locals 1

    const/4 p2, 0x0

    .line 1673
    iput-boolean p2, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    const/4 p2, 0x0

    .line 1674
    iput-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1675
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$processDone$48(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1683
    iput-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    return-void

    .line 1686
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    .line 1687
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1688
    iput-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    .line 1689
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 1690
    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    .line 1692
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$processDone$49(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    .line 1708
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->createAfterUpload:Z

    const/4 v0, 0x0

    .line 1709
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1710
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    return-void
.end method

.method private synthetic lambda$updateHistoryShow$50(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 2078
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 2079
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2080
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2081
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr p2, v1

    const v1, 0x3e4ccccd    # 0.2f

    add-float/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 p2, 0x0

    .line 2082
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 2083
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadLinksCount()V
    .locals 4

    .line 403
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;-><init>()V

    .line 404
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 405
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->admin_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 v1, 0x0

    .line 406
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->limit:I

    .line 407
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda48;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private processDone()V
    .locals 10

    .line 1631
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1634
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1635
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0xc8

    .line 1637
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1639
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 1642
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    .line 1643
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x3

    const-string v3, ""

    if-eqz v1, :cond_6

    .line 1644
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;-><init>()V

    .line 1645
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1646
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->flags:I

    .line 1647
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->lang_code:Ljava/lang/String;

    .line 1649
    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1650
    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->name:Ljava/lang/String;

    .line 1651
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->flags:I

    .line 1654
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object v3, v4

    .line 1655
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1656
    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->about:Ljava/lang/String;

    .line 1657
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->flags:I

    or-int/2addr v0, v3

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->flags:I

    .line 1660
    :cond_5
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1661
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda50;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 1672
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatEditActivity;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1677
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 1680
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-eqz v1, :cond_8

    .line 1681
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    new-instance v9, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda46;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    move-object v8, p0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    return-void

    .line 1697
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_9

    .line 1698
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    iget-boolean v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    if-eq v4, v5, :cond_9

    .line 1699
    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    .line 1700
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-boolean v6, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    invoke-virtual {v1, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->toggleChannelInvitesHistory(JZ)V

    .line 1704
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1705
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->createAfterUpload:Z

    .line 1706
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1707
    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1712
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 1716
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1717
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2}, Lorg/telegram/messenger/MessagesController;->changeChatTitle(JLjava/lang/String;)V

    .line 1719
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object v3, v1

    .line 1720
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1721
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->updateChatAbout(JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1723
    :cond_d
    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eq v1, v3, :cond_e

    .line 1724
    iput-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    .line 1725
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->toggleChannelSignatures(JZ)V

    .line 1727
    :cond_e
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eq v0, v1, :cond_10

    .line 1728
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->toggleChannelForum(JZ)V

    .line 1729
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1730
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 1731
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_f

    .line 1732
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    .line 1733
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "chat_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_f

    .line 1734
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(I)V

    .line 1735
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1736
    iget-wide v4, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1737
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-static {p0, v2}, Lorg/telegram/ui/TopicsFragment;->getTopicsOrChat(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/os/Bundle;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1742
    :cond_10
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_11
    :goto_1
    return-void
.end method

.method private setAvatar()V
    .locals 8

    .line 1401
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->hasUploadedPhoto:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 1404
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1405
    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    return-void

    .line 1409
    :cond_2
    iput-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1410
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1412
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v4, :cond_6

    :goto_1
    if-eqz v1, :cond_4

    move-object v4, v1

    goto :goto_2

    :cond_4
    move-object v4, v0

    :goto_2
    if-eqz v1, :cond_5

    .line 1414
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_3

    :cond_5
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_3
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1415
    invoke-static {v4, v3}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 1416
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    if-eqz v0, :cond_7

    move v2, v3

    goto :goto_4

    .line 1419
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1422
    :cond_7
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_b

    if-nez v2, :cond_9

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    .line 1426
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChatSetPhotoOrVideo:I

    const-string v2, "ChatSetPhotoOrVideo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto :goto_6

    .line 1424
    :cond_9
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChatSetNewPhoto:I

    const-string v2, "ChatSetNewPhoto"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1428
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_a

    .line 1429
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->camera_outline:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x32

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 1431
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1432
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 1434
    :cond_b
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1435
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->checkCurrentImageVisibility()V

    :cond_c
    :goto_7
    return-void
.end method

.method private showAvatarProgress(ZZ)V
    .locals 7

    .line 1746
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_0

    return-void

    .line 1749
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 1750
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 1751
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 1754
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    .line 1756
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1757
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1758
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    aput v0, v6, v2

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    aput v0, v6, v2

    .line 1759
    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v4

    .line 1758
    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_2
    new-array v0, v3, [Landroid/animation/Animator;

    .line 1761
    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    aput v1, v6, v2

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    aput v1, v6, v2

    .line 1762
    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1761
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1764
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1765
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/ChatEditActivity$10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatEditActivity$10;-><init>(Lorg/telegram/ui/ChatEditActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1783
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 1786
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 1787
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1788
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1789
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1791
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 1792
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1793
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1794
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateCanForum()V
    .locals 6

    .line 1440
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1441
    iput-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    return-void

    .line 1444
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->forumUpgradeParticipantsMin:I

    if-lt v0, v4, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_4

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    .line 1445
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_6

    .line 1446
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v0

    iget-boolean v2, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    sget v1, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :goto_3
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    :cond_6
    return-void
.end method

.method private updateFields(ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v7, p2

    if-eqz p1, :cond_0

    .line 1848
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1850
    iput-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1853
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    const/4 v8, 0x1

    xor-int/lit8 v9, v1, 0x1

    .line 1855
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-eqz v1, :cond_5

    .line 1856
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v10

    goto :goto_0

    :cond_4
    move v2, v11

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1859
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_8

    .line 1860
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_7

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_6

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v3, 0xc8

    if-le v2, v3, :cond_6

    goto :goto_1

    :cond_6
    move v2, v10

    goto :goto_2

    :cond_7
    :goto_1
    move v2, v11

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1863
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    const-wide/16 v12, 0x0

    if-eqz v1, :cond_12

    .line 1864
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_11

    iget-boolean v3, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v3, :cond_9

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    cmp-long v2, v2, v12

    if-nez v2, :cond_9

    goto/16 :goto_5

    .line 1867
    :cond_9
    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1868
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    cmp-long v1, v1, v12

    const-string v2, "Discussion"

    if-nez v1, :cond_a

    .line 1869
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    sget v3, Lorg/telegram/messenger/R$string;->Discussion:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->DiscussionInfoShort:I

    const-string v4, "DiscussionInfoShort"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_discuss:I

    invoke-virtual {v1, v2, v3, v4, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_6

    .line 1871
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-nez v1, :cond_b

    .line 1873
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 1876
    :cond_b
    iget-boolean v3, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    const-string v4, "@"

    if-eqz v3, :cond_d

    .line 1877
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1878
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    sget v4, Lorg/telegram/messenger/R$string;->Discussion:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_discuss:I

    invoke-virtual {v3, v2, v1, v4, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_6

    .line 1880
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    sget v5, Lorg/telegram/messenger/R$string;->Discussion:I

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_discuss:I

    invoke-virtual {v1, v2, v3, v4, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_6

    .line 1883
    :cond_d
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "LinkedChannel"

    if-eqz v3, :cond_f

    .line 1884
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    sget v3, Lorg/telegram/messenger/R$string;->LinkedChannel:I

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_e

    move v5, v8

    goto :goto_3

    :cond_e
    move v5, v11

    :goto_3
    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_6

    .line 1886
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    sget v3, Lorg/telegram/messenger/R$string;->LinkedChannel:I

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_10

    move v5, v8

    goto :goto_4

    :cond_10
    move v5, v11

    :goto_4
    invoke-virtual {v1, v3, v2, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_6

    .line 1865
    :cond_11
    :goto_5
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1894
    :cond_12
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_15

    .line 1895
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_14

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_location:Z

    if-eqz v2, :cond_14

    .line 1896
    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1897
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    const-string v3, "AttachLocation"

    if-eqz v2, :cond_13

    .line 1898
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    .line 1899
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    sget v4, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->address:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_7

    .line 1901
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unknown address"

    invoke-virtual {v1, v2, v3, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_7

    .line 1904
    :cond_14
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1908
    :cond_15
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_2a

    .line 1909
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v1, :cond_1b

    if-eqz v9, :cond_16

    .line 1912
    sget v1, Lorg/telegram/messenger/R$string;->TypeLocationGroupEdit:I

    const-string v2, "TypeLocationGroupEdit"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 1914
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1916
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    sget v3, Lorg/telegram/messenger/R$string;->TypeLocationGroup:I

    const-string v4, "TypeLocationGroup"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_19

    :cond_17
    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_19

    :cond_18
    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1a

    :cond_19
    move v5, v8

    goto :goto_9

    :cond_1a
    move v5, v11

    :goto_9
    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_f

    .line 1919
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    .line 1920
    iget-boolean v2, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v2, :cond_1e

    if-eqz v9, :cond_1d

    if-eqz v1, :cond_1c

    .line 1921
    sget v1, Lorg/telegram/messenger/R$string;->TypePrivateRestrictedForwards:I

    const-string v2, "TypePrivateRestrictedForwards"

    goto :goto_a

    :cond_1c
    sget v1, Lorg/telegram/messenger/R$string;->TypePrivate:I

    const-string v2, "TypePrivate"

    goto :goto_a

    :cond_1d
    sget v1, Lorg/telegram/messenger/R$string;->TypePublic:I

    const-string v2, "TypePublic"

    :goto_a
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_1e
    if-eqz v9, :cond_20

    if-eqz v1, :cond_1f

    .line 1923
    sget v1, Lorg/telegram/messenger/R$string;->TypePrivateGroupRestrictedForwards:I

    const-string v2, "TypePrivateGroupRestrictedForwards"

    goto :goto_b

    :cond_1f
    sget v1, Lorg/telegram/messenger/R$string;->TypePrivateGroup:I

    const-string v2, "TypePrivateGroup"

    goto :goto_b

    :cond_20
    sget v1, Lorg/telegram/messenger/R$string;->TypePublicGroup:I

    const-string v2, "TypePublicGroup"

    :goto_b
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1925
    :goto_c
    iget-boolean v2, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v2, :cond_25

    .line 1926
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelType:I

    const-string v4, "ChannelType"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_21

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_23

    :cond_21
    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_23

    :cond_22
    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_24

    :cond_23
    move v5, v8

    goto :goto_d

    :cond_24
    move v5, v11

    :goto_d
    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_f

    .line 1928
    :cond_25
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    sget v3, Lorg/telegram/messenger/R$string;->GroupType:I

    const-string v4, "GroupType"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_26

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_28

    :cond_26
    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_27

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_28

    :cond_27
    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_29

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_29

    :cond_28
    move v5, v8

    goto :goto_e

    :cond_29
    move v5, v11

    :goto_e
    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1933
    :cond_2a
    :goto_f
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_30

    .line 1934
    iget-boolean v1, v0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, v0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-nez v1, :cond_2b

    sget v1, Lorg/telegram/messenger/R$string;->ChatHistoryHidden:I

    const-string v2, "ChatHistoryHidden"

    goto :goto_10

    :cond_2b
    sget v1, Lorg/telegram/messenger/R$string;->ChatHistoryVisible:I

    const-string v2, "ChatHistoryVisible"

    :goto_10
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 1935
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChatHistoryShort:I

    const-string v4, "ChatHistoryShort"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_discuss:I

    iget-object v4, v0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v4, :cond_2c

    move v6, v8

    goto :goto_11

    :cond_2c
    move v6, v11

    :goto_11
    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/String;ZIZ)V

    .line 1936
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    iget-boolean v2, v0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    xor-int/2addr v2, v8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setEnabled(Z)V

    .line 1937
    iget-boolean v1, v0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-nez v1, :cond_2f

    if-eqz v9, :cond_2f

    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_2d

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    cmp-long v2, v2, v12

    if-nez v2, :cond_2f

    :cond_2d
    if-eqz v1, :cond_2e

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-nez v1, :cond_2f

    :cond_2e
    move v1, v8

    goto :goto_12

    :cond_2f
    move v1, v11

    :goto_12
    invoke-direct {v0, v1, v7}, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShow(ZZ)V

    .line 1940
    :cond_30
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_50

    .line 1941
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const-string v12, "ChannelAdministrators"

    const-string v3, "ChannelPermissions"

    const-string v4, "ChannelSubscribers"

    const-string v5, "ChannelMembers"

    const-string v6, "ChannelBlacklist"

    if-eqz v2, :cond_45

    .line 1942
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_33

    .line 1943
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_31

    .line 1944
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v8

    .line 1945
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v13, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-static {v14, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v2, v13, v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1947
    :cond_31
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    if-lez v2, :cond_32

    move v2, v11

    goto :goto_13

    :cond_32
    move v2, v10

    :goto_13
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1949
    :cond_33
    iget-boolean v1, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    const-string v13, "%d"

    if-eqz v1, :cond_35

    .line 1950
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {v1, v2, v3, v4, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1951
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_user_remove:I

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_34

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_34

    move v5, v8

    goto :goto_14

    :cond_34
    move v5, v11

    :goto_14
    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1c

    .line 1953
    :cond_35
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1954
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v13, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {v1, v2, v4, v5, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_16

    .line 1956
    :cond_36
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v13, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    iget-object v14, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v14

    if-nez v14, :cond_37

    move v14, v8

    goto :goto_15

    :cond_37
    move v14, v11

    :goto_15
    invoke-virtual {v1, v2, v4, v5, v14}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1958
    :goto_16
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v2, :cond_39

    .line 1959
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_user_remove:I

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_38

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_38

    move v5, v8

    goto :goto_17

    :cond_38
    move v5, v11

    :goto_17
    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1a

    .line 1962
    :cond_39
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    const/16 v2, 0xe

    const/16 v4, 0x10

    if-eqz v1, :cond_3d

    .line 1963
    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    xor-int/2addr v5, v8

    .line 1966
    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->getSendMediaSelectedCount(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)I

    move-result v1

    add-int/2addr v5, v1

    .line 1967
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v6, :cond_3a

    add-int/lit8 v5, v5, 0x1

    .line 1970
    :cond_3a
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v6, :cond_3b

    add-int/lit8 v5, v5, 0x1

    .line 1973
    :cond_3b
    iget-boolean v6, v0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-eqz v6, :cond_3c

    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v6, :cond_3c

    add-int/lit8 v5, v5, 0x1

    .line 1976
    :cond_3c
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v1, :cond_3f

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1980
    :cond_3d
    iget-boolean v1, v0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-eqz v1, :cond_3e

    move v5, v2

    goto :goto_18

    :cond_3e
    move v5, v4

    .line 1982
    :cond_3f
    :goto_18
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v6, Lorg/telegram/messenger/R$string;->ChannelPermissions:I

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v11

    iget-boolean v5, v0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-eqz v5, :cond_40

    goto :goto_19

    :cond_40
    move v2, v4

    :goto_19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v8

    const-string v2, "%d/%d"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    const/4 v6, 0x1

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/String;ZIZ)V

    .line 1984
    :goto_1a
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_42

    .line 1985
    sget v2, Lorg/telegram/messenger/R$string;->MemberRequests:I

    const-string v3, "MemberRequests"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_requests:I

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_41

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_41

    move v5, v8

    goto :goto_1b

    :cond_41
    move v5, v11

    :goto_1b
    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1989
    :cond_42
    :goto_1c
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->cryptoBoxesCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_43

    .line 1990
    sget v2, Lorg/telegram/messenger/R$string;->cryptoboxes_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_cryptobox:I

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1993
    :cond_43
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    invoke-static {v12, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    goto :goto_1d

    :cond_44
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatEditActivity;->getAdminCount()I

    move-result v4

    :goto_1d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    invoke-virtual {v1, v2, v3, v4, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_22

    .line 1995
    :cond_45
    iget-boolean v2, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v2, :cond_47

    .line 1996
    sget v2, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1997
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_chats_remove:I

    iget-object v4, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v4, :cond_46

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_46

    move v4, v8

    goto :goto_1e

    :cond_46
    move v4, v11

    :goto_1e
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto :goto_21

    .line 1999
    :cond_47
    sget v2, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_48

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_48

    move v5, v8

    goto :goto_1f

    :cond_48
    move v5, v11

    :goto_1f
    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 2000
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v1, :cond_4a

    .line 2001
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_chats_remove:I

    iget-object v4, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v4, :cond_49

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_49

    move v4, v8

    goto :goto_20

    :cond_49
    move v4, v11

    :goto_20
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto :goto_21

    .line 2003
    :cond_4a
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelPermissions:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 2007
    :goto_21
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->cryptoBoxesCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_4b

    .line 2008
    sget v2, Lorg/telegram/messenger/R$string;->cryptoboxes_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_input_gift:I

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 2011
    :cond_4b
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    invoke-static {v12, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 2013
    :goto_22
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_4c

    move v2, v11

    goto :goto_23

    :cond_4c
    move v2, v10

    :goto_23
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2014
    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatEditActivity;->updateReactionsCell(Z)V

    .line 2015
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_4f

    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v1

    if-eqz v1, :cond_4f

    if-nez v9, :cond_4d

    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_4d

    goto :goto_24

    .line 2018
    :cond_4d
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    const-string v2, "InviteLinks"

    if-lez v1, :cond_4e

    .line 2019
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    sget v3, Lorg/telegram/messenger/R$string;->InviteLinks:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {v1, v2, v3, v4, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_25

    .line 2021
    :cond_4e
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    sget v3, Lorg/telegram/messenger/R$string;->InviteLinks:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    const-string v4, "1"

    invoke-virtual {v1, v2, v4, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_25

    .line 2016
    :cond_4f
    :goto_24
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2026
    :cond_50
    :goto_25
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_52

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_52

    .line 2027
    sget v2, Lorg/telegram/messenger/R$string;->GroupStickers:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v3, :cond_51

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    goto :goto_26

    :cond_51
    sget v3, Lorg/telegram/messenger/R$string;->Add:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_26
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_sticker:I

    invoke-virtual {v1, v2, v3, v4, v11}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_52
    return-void
.end method

.method private updateHistoryShow(ZZ)V
    .locals 11

    .line 2040
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2041
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2043
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/16 v2, 0x8

    if-gtz v0, :cond_1

    if-nez p1, :cond_1

    .line 2044
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2045
    invoke-virtual {p0}, Lorg/telegram/ui/ChatEditActivity;->updateColorCell()V

    return-void

    .line 2047
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    if-eqz p1, :cond_2

    return-void

    .line 2050
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 2052
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-ge v5, v7, :cond_5

    if-nez v6, :cond_3

    .line 2053
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-ne v7, v9, :cond_3

    move v6, v8

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    .line 2056
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move v5, v4

    move v6, v5

    .line 2060
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_8

    if-nez v6, :cond_6

    .line 2061
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    if-ne v7, v9, :cond_6

    move v6, v8

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_7

    .line 2064
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2067
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_9

    .line 2068
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2069
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2071
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v5, v4

    .line 2072
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_a

    .line 2073
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget-object v9, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v10

    sub-float v10, v3, v10

    mul-float/2addr v9, v10

    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    if-eqz p2, :cond_c

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 2076
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    aput v2, p2, v4

    if-eqz p1, :cond_b

    move v1, v3

    :cond_b
    aput v1, p2, v8

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    .line 2077
    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatEditActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2086
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$11;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/ChatEditActivity$11;-><init>(Lorg/telegram/ui/ChatEditActivity;ZLjava/util/ArrayList;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2095
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2096
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2097
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_9

    .line 2099
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz p1, :cond_d

    move v5, v3

    goto :goto_5

    :cond_d
    move v5, v1

    :goto_5
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2100
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    if-eqz p1, :cond_e

    move v6, v1

    goto :goto_6

    :cond_e
    move v6, v3

    :goto_6
    mul-float/2addr v5, v6

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2101
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3f4ccccd    # 0.8f

    if-eqz p1, :cond_f

    goto :goto_7

    :cond_f
    move v3, v1

    :goto_7
    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2102
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz p1, :cond_10

    move v2, v4

    :cond_10
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2103
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_11

    .line 2104
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_11
    const/4 p1, 0x0

    .line 2106
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    :goto_9
    return-void
.end method

.method private updatePublicLinksCount()V
    .locals 7

    .line 1367
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_0

    return-void

    .line 1370
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_username;

    .line 1373
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1378
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    sget v4, Lorg/telegram/messenger/R$string;->BotPublicLinks:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->BotPublicLinksCount:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {v0, v4, v2, v3, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1

    .line 1380
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->BotPublicLink:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t.me/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_1
    return-void
.end method

.method private updateReactionsCell(Z)V
    .locals 8

    .line 2111
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    .line 2113
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->availableReactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    const-string v2, "ReactionsOff"

    if-eqz v1, :cond_8

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 2115
    :cond_0
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    if-eqz v3, :cond_7

    .line 2116
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 2118
    :goto_0
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 2119
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 2120
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v7, :cond_1

    .line 2121
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    .line 2122
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v7

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v6, :cond_2

    .line 2123
    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->inactive:Z

    if-nez v6, :cond_2

    goto :goto_1

    .line 2126
    :cond_1
    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v6, :cond_2

    :goto_1
    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    if-nez v5, :cond_4

    .line 2131
    sget v0, Lorg/telegram/messenger/R$string;->ReactionsOff:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2133
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_6

    .line 2134
    sget v0, Lorg/telegram/messenger/R$string;->ReactionsOff:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2135
    :cond_6
    sget v1, Lorg/telegram/messenger/R$string;->ReactionsCount:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "ReactionsCount"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2138
    :cond_7
    sget v0, Lorg/telegram/messenger/R$string;->ReactionsAll:I

    const-string v1, "ReactionsAll"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2114
    :cond_8
    :goto_2
    sget v0, Lorg/telegram/messenger/R$string;->ReactionsOff:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v3, v0

    .line 2140
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v0, Lorg/telegram/messenger/R$string;->Reactions:I

    const-string v2, "Reactions"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_reactions2:I

    const/4 v6, 0x1

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/String;ZIZ)V

    return-void
.end method


# virtual methods
.method public synthetic canFinishFragment()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$canFinishFragment(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 29

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 497
    invoke-super/range {p0 .. p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 498
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    .line 502
    :cond_0
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 503
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 505
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$2;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$2;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 524
    new-instance v9, Lorg/telegram/ui/ChatEditActivity$3;

    invoke-direct {v9, v6, v7}, Lorg/telegram/ui/ChatEditActivity$3;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;)V

    .line 643
    sget-object v0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda34;->INSTANCE:Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda34;

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 644
    iput-object v9, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 645
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 647
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 648
    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const/4 v11, -0x1

    .line 649
    invoke-static {v11, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, v6, Lorg/telegram/ui/ChatEditActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 652
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v1, v11, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v12, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 656
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelEdit:I

    const-string v2, "ChannelEdit"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 658
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    .line 659
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 660
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 661
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    invoke-static {v11, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    new-instance v15, Landroid/widget/FrameLayout;

    invoke-direct {v15, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 664
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    invoke-static {v11, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$4;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ChatEditActivity$4;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 683
    iget-boolean v1, v6, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    const/16 v16, 0x10

    if-eqz v1, :cond_1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x20

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 685
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/16 v17, 0x3

    const/16 v18, 0x5

    const/4 v5, 0x0

    if-nez v0, :cond_6

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_4

    .line 742
    :cond_2
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v19, 0x40

    const/16 v20, 0x40

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    move/from16 v2, v18

    goto :goto_1

    :cond_3
    move/from16 v2, v17

    :goto_1
    or-int/lit8 v21, v2, 0x30

    if-eqz v1, :cond_4

    move/from16 v22, v5

    goto :goto_2

    :cond_4
    move/from16 v22, v16

    :goto_2
    const/16 v23, 0xc

    if-eqz v1, :cond_5

    move/from16 v24, v16

    goto :goto_3

    :cond_5
    move/from16 v24, v5

    :goto_3
    const/16 v25, 0xc

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_e

    .line 686
    :cond_6
    :goto_4
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v19, 0x40

    const/16 v20, 0x40

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_7

    move/from16 v2, v18

    goto :goto_5

    :cond_7
    move/from16 v2, v17

    :goto_5
    or-int/lit8 v21, v2, 0x30

    if-eqz v1, :cond_8

    move/from16 v22, v5

    goto :goto_6

    :cond_8
    move/from16 v22, v16

    :goto_6
    const/16 v23, 0xc

    if-eqz v1, :cond_9

    move/from16 v24, v16

    goto :goto_7

    :cond_9
    move/from16 v24, v5

    :goto_7
    const/16 v25, 0x8

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, 0x55000000

    .line 689
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 691
    new-instance v1, Lorg/telegram/ui/ChatEditActivity$5;

    invoke-direct {v1, v6, v7, v0}, Lorg/telegram/ui/ChatEditActivity$5;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    const/16 v19, 0x40

    const/16 v20, 0x40

    .line 700
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_a

    move/from16 v2, v18

    goto :goto_8

    :cond_a
    move/from16 v2, v17

    :goto_8
    or-int/lit8 v21, v2, 0x30

    if-eqz v0, :cond_b

    move/from16 v22, v5

    goto :goto_9

    :cond_b
    move/from16 v22, v16

    :goto_9
    const/16 v23, 0xc

    if-eqz v0, :cond_c

    move/from16 v24, v16

    goto :goto_a

    :cond_c
    move/from16 v24, v5

    :goto_a
    const/16 v25, 0x8

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v15, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x1e

    .line 703
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 704
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 705
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setNoProgress(Z)V

    .line 706
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v19, 0x40

    const/16 v20, 0x40

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_d

    move/from16 v2, v18

    goto :goto_b

    :cond_d
    move/from16 v2, v17

    :goto_b
    or-int/lit8 v21, v2, 0x30

    if-eqz v1, :cond_e

    move/from16 v22, v5

    goto :goto_c

    :cond_e
    move/from16 v22, v16

    :goto_c
    const/16 v23, 0xc

    if-eqz v1, :cond_f

    move/from16 v24, v16

    goto :goto_d

    :cond_f
    move/from16 v24, v5

    :goto_d
    const/16 v25, 0x8

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    invoke-direct {v6, v5, v5}, Lorg/telegram/ui/ChatEditActivity;->showAvatarProgress(ZZ)V

    .line 710
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    :goto_e
    new-instance v4, Lorg/telegram/ui/Components/EditTextEmoji;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, p0

    move-object v11, v4

    move/from16 v4, v19

    move v13, v5

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    iput-object v11, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    .line 747
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->albumMode:Z

    if-eqz v0, :cond_10

    .line 748
    sget v0, Lorg/telegram/messenger/R$string;->cloud_albums_name_hint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 750
    :cond_10
    iget-wide v0, v6, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 751
    sget v0, Lorg/telegram/messenger/R$string;->BotName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 752
    :cond_11
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v0, :cond_12

    .line 753
    sget v0, Lorg/telegram/messenger/R$string;->EnterChannelName:I

    const-string v1, "EnterChannelName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 755
    :cond_12
    sget v0, Lorg/telegram/messenger/R$string;->GroupName:I

    const-string v1, "GroupName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 757
    :goto_f
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v1, :cond_14

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_10

    :cond_13
    move v5, v13

    goto :goto_11

    :cond_14
    :goto_10
    move v5, v8

    :goto_11
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/EditTextEmoji;->setEnabled(Z)V

    .line 758
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setFocusable(Z)V

    .line 759
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$6;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$6;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-array v0, v8, [Landroid/text/InputFilter;

    .line 779
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v13

    .line 780
    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setFilters([Landroid/text/InputFilter;)V

    .line 781
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x10

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v2, 0x60

    if-eqz v1, :cond_15

    move/from16 v25, v18

    goto :goto_12

    :cond_15
    move/from16 v25, v2

    :goto_12
    const/16 v26, 0x0

    if-eqz v1, :cond_16

    move/from16 v27, v2

    goto :goto_13

    :cond_16
    move/from16 v27, v18

    :goto_13
    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    .line 784
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 785
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 786
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_17

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 789
    :cond_17
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$7;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ChatEditActivity$7;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    .line 795
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 796
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 797
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    :cond_18
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v1, 0x41800000    # 16.0f

    .line 845
    invoke-virtual {v0, v8, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 846
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 847
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 848
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v13, v13, v13, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 849
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 850
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_19

    move/from16 v3, v18

    goto :goto_14

    :cond_19
    move/from16 v3, v17

    :goto_14
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 851
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v3, 0x2c001

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 852
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 853
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_1b

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_15

    :cond_1a
    move v5, v13

    goto :goto_16

    :cond_1b
    :goto_15
    move v5, v8

    :goto_16
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 854
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    new-array v0, v8, [Landroid/text/InputFilter;

    .line 856
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xff

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v13

    .line 857
    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 858
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v2, Lorg/telegram/messenger/R$string;->DescriptionOptionalPlaceholder:I

    const-string v3, "DescriptionOptionalPlaceholder"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 859
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 860
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 861
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 862
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 863
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x17

    const/16 v25, 0xf

    const/16 v26, 0x17

    const/16 v27, 0x9

    invoke-static/range {v22 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_17

    .line 865
    :cond_1c
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x17

    const/16 v25, 0xc

    const/16 v26, 0x17

    const/16 v27, 0x6

    invoke-static/range {v22 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    :goto_17
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda35;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 874
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$8;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$8;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 891
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsTopSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v1, -0x2

    const/4 v2, -0x1

    .line 892
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    .line 895
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 896
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_2a

    .line 899
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_1e

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1d

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_location:Z

    if-eqz v0, :cond_1e

    .line 900
    :cond_1d
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    .line 901
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 902
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    :cond_1e
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_20

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1f

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    if-eqz v0, :cond_20

    .line 927
    :cond_1f
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    .line 928
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 929
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 930
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    :cond_20
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v0, :cond_21

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v8}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_21
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_23

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v13}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 938
    :cond_22
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    .line 939
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 940
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 941
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 948
    :cond_23
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 949
    new-instance v11, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    iget v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v2, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    move-object v0, v11

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;-><init>(IJLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v6, Lorg/telegram/ui/ChatEditActivity;->colorCell:Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    .line 950
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 951
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->colorCell:Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 952
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->colorCell:Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 961
    :cond_24
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_26

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_26

    .line 962
    :cond_25
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    .line 963
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1012
    :cond_26
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v0, :cond_27

    .line 1013
    new-instance v11, Lorg/telegram/ui/Cells/TextCell;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v6, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1014
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1015
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelSignMessages:I

    const-string v2, "ChannelSignMessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v6, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_signed:I

    invoke-virtual {v0, v1, v2, v3, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheckAndIcon(Ljava/lang/CharSequence;ZIZ)V

    .line 1016
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_19

    .line 1021
    :cond_27
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_29

    .line 1022
    new-instance v11, Lorg/telegram/ui/Cells/TextCell;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v6, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1023
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1024
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelTopics:I

    const-string v2, "ChannelTopics"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v6, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_topics:I

    invoke-virtual {v0, v1, v2, v3, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheckAndIcon(Ljava/lang/CharSequence;ZIZ)V

    .line 1025
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v0

    iget-boolean v1, v6, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    if-eqz v1, :cond_28

    move v5, v13

    goto :goto_18

    :cond_28
    sget v5, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :goto_18
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 1026
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1027
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, v6, v15}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    :cond_29
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatEditActivity;->updateColorCell()V

    .line 1049
    :cond_2a
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 1051
    iget-boolean v1, v6, Lorg/telegram/ui/ChatEditActivity;->albumMode:Z

    const/16 v2, 0x38

    if-eqz v1, :cond_2b

    const/16 v1, 0x64

    .line 1052
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1055
    :cond_2b
    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_2c

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v1, :cond_2c

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_2d

    .line 1056
    :cond_2c
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v8, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->doneButton:Landroid/view/View;

    .line 1057
    sget v1, Lorg/telegram/messenger/R$string;->Done:I

    const-string v2, "Done"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1060
    :cond_2d
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_2e

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_2e

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_2e

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_2e

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_2e

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_30

    .line 1061
    :cond_2e
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1062
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v7, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1063
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1064
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v2, v1, v0, v13, v13}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1065
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 1066
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1067
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_2f

    .line 1069
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$string;->ForumToggleDescription:I

    const-string v2, "ForumToggleDescription"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1071
    :cond_2f
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelSignMessagesInfo:I

    const-string v2, "ChannelSignMessagesInfo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    :cond_30
    :goto_1a
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    .line 1076
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1077
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1078
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/16 v5, 0x8

    if-eqz v0, :cond_40

    .line 1081
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1082
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1083
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_32

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_1b

    :cond_31
    move v1, v5

    goto :goto_1c

    :cond_32
    :goto_1b
    move v1, v13

    :goto_1c
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1084
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda30;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1094
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1095
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1102
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1103
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1116
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1117
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1126
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1127
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1128
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1138
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1139
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1140
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    :cond_33
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v0, :cond_35

    .line 1147
    :cond_34
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1148
    sget v1, Lorg/telegram/messenger/R$string;->EventLog:I

    const-string v2, "EventLog"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_log:I

    invoke-virtual {v0, v1, v2, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1149
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1150
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    :cond_35
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1154
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    .line 1155
    sget v1, Lorg/telegram/messenger/R$string;->StatisticsAndBoosts:I

    const-string v2, "StatisticsAndBoosts"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_stats:I

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1156
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1157
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    :cond_36
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_37

    .line 1171
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->cryptoBoxesCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1172
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1173
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->cryptoBoxesCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->cryptoBoxesCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1d

    :cond_37
    const/4 v2, -0x2

    const/4 v3, -0x1

    .line 1186
    :goto_1d
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_38

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v0, :cond_38

    .line 1189
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1191
    :cond_38
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_39

    .line 1192
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1194
    :cond_39
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1196
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_3a

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_3a

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    if-lez v1, :cond_3a

    .line 1197
    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    :cond_3a
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v0, :cond_3b

    .line 1200
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1202
    :cond_3b
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_3c

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v0, :cond_3d

    .line 1203
    :cond_3c
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1205
    :cond_3d
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_3e

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_3e

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz v0, :cond_3e

    .line 1206
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersContainer:Landroid/widget/FrameLayout;

    .line 1207
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1208
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersContainer:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1211
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1212
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/TextCell;->setPrioritizeTitleOverValue(Z)V

    .line 1214
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1215
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1f

    .line 1221
    :cond_3e
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_3f

    .line 1222
    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1e

    :cond_3f
    const/4 v2, -0x2

    const/4 v3, -0x1

    .line 1224
    :goto_1e
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_40

    .line 1225
    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1230
    :cond_40
    :goto_1f
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_41

    .line 1231
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1232
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1233
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/TextCell;->setPrioritizeTitleOverValue(Z)V

    .line 1234
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1235
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1241
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatEditActivity;->updatePublicLinksCount()V

    .line 1243
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->editIntroCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1244
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1245
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->editIntroCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->BotEditIntro:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_log:I

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1246
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->editIntroCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1247
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->editIntroCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1249
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->editCommandsCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1250
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1251
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->editCommandsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->BotEditCommands:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_media:I

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1252
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->editCommandsCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1253
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->editCommandsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1255
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->changeBotSettingsCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1256
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1257
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->changeBotSettingsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->BotChangeSettings:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1258
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->changeBotSettingsCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1259
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->changeBotSettingsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1262
    :cond_41
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_44

    .line 1263
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1264
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1265
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsTopSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    :cond_42
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_43

    .line 1269
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v1, -0x2

    const/4 v2, -0x1

    .line 1270
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1273
    :cond_43
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_46

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_46

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz v0, :cond_46

    .line 1274
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1275
    sget v1, Lorg/telegram/messenger/R$string;->GroupStickersInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_20

    .line 1279
    :cond_44
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->botInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1280
    sget v0, Lorg/telegram/messenger/R$string;->BotManageInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1281
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    const-string v2, "@BotFather"

    .line 1282
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_45

    .line 1284
    new-instance v2, Lorg/telegram/ui/ChatEditActivity$9;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ChatEditActivity$9;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    add-int/lit8 v3, v0, 0xa

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1297
    :cond_45
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->botInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1298
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->botInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->botInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1302
    :cond_46
    :goto_20
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_49

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_49

    .line 1303
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteContainer:Landroid/widget/FrameLayout;

    .line 1304
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1305
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteContainer:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1307
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1308
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 1309
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1310
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_47

    .line 1311
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v1, Lorg/telegram/messenger/R$string;->DeleteBot:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_21

    .line 1312
    :cond_47
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v0, :cond_48

    .line 1313
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelDelete:I

    const-string v2, "ChannelDelete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_21

    .line 1315
    :cond_48
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v1, Lorg/telegram/messenger/R$string;->DeleteAndExitButton:I

    const-string v2, "DeleteAndExitButton"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1317
    :goto_21
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1318
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1328
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 1329
    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v7, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1330
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1333
    :cond_49
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_4b

    .line 1334
    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->deleteInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    if-nez v1, :cond_4a

    .line 1335
    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v7, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 1337
    :cond_4a
    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v7, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1341
    :cond_4b
    :goto_22
    new-instance v0, Lorg/telegram/ui/Components/UndoView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x53

    const/16 v20, 0x8

    const/16 v21, 0x0

    const/16 v22, 0x8

    const/16 v23, 0x8

    .line 1342
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1344
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_4c

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_4c
    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_23
    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1, v2, v3, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V

    .line 1346
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_4d

    .line 1347
    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 1348
    :cond_4d
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v0, :cond_4e

    .line 1349
    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1351
    :cond_4e
    :goto_24
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatEditActivity;->setAvatar()V

    .line 1352
    invoke-direct {v6, v8, v13}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    .line 1355
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->albumMode:Z

    if-eqz v0, :cond_4f

    .line 1356
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1357
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1358
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1359
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1360
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1363
    :cond_4f
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    .line 1452
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_4

    .line 1453
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1454
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long p2, p2, v2

    if-nez p2, :cond_8

    .line 1455
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p2, :cond_0

    .line 1456
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 1459
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1460
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->updateCanForum()V

    .line 1461
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    .line 1462
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    if-eqz p2, :cond_8

    .line 1464
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->loadLinksCount()V

    goto :goto_2

    .line 1467
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_6

    .line 1468
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1469
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_5

    .line 1470
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->setAvatar()V

    .line 1472
    :cond_5
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_8

    .line 1473
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->updatePublicLinksCount()V

    goto :goto_2

    .line 1475
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatAvailableReactionsUpdated:I

    if-ne p1, p2, :cond_8

    .line 1476
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1477
    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long p3, p1, v1

    if-nez p3, :cond_8

    .line 1478
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_7

    .line 1480
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->availableReactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    .line 1482
    :cond_7
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatEditActivity;->updateReactionsCell(Z)V

    :cond_8
    :goto_2
    return-void
.end method

.method public didStartUpload(Z)V
    .locals 1

    .line 1497
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1500
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setProgress(F)V

    return-void
.end method

.method public synthetic didUploadFailed()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$didUploadFailed(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    return-void
.end method

.method public didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 11

    .line 1505
    new-instance v10, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda42;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p9

    move-object/from16 v6, p6

    move-wide v7, p3

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;DLjava/lang/String;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissCurrentDialog()V
    .locals 2

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ImageUpdater;->dismissCurrentDialog(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 473
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    return-void
.end method

.method public dismissDialogOnPause(Landroid/app/Dialog;)Z
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ImageUpdater;->dismissDialogOnPause(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissDialogOnPause(Landroid/app/Dialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getInitialSearchString()Ljava/lang/String;
    .locals 1

    .line 1572
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2147
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->cryptoBoxesCell:Lorg/telegram/ui/Cells/TextCell;

    const-string v3, "imageView"

    const-string v4, "textView"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    .line 2148
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->cryptoBoxesCell:Lorg/telegram/ui/Cells/TextCell;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2149
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->cryptoBoxesCell:Lorg/telegram/ui/Cells/TextCell;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v8, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v15, v2

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2150
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->cryptoBoxesCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v26, 0x0

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v8, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    move-object/from16 v24, v2

    move-object/from16 v25, v7

    move-object/from16 v27, v8

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2154
    :cond_0
    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda51;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    .line 2160
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2162
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2163
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2164
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v23, 0x0

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2165
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2167
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v24, v25

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2168
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v12, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v12, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    move-object v9, v7

    invoke-direct/range {v9 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2169
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v28, 0x0

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    sget v34, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2170
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v7

    move/from16 v16, v25

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2171
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move/from16 v24, v35

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v30

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v34, v19

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2173
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object v9, v7

    move/from16 v16, v25

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2174
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2175
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v13, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v7

    move/from16 v18, v19

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2176
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v7

    move/from16 v16, v25

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2177
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2178
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v13, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2179
    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v7, :cond_1

    .line 2180
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v7

    move/from16 v16, v25

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2181
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2182
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v13, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v7

    move/from16 v18, v19

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    :cond_1
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v7

    move/from16 v16, v25

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2186
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2187
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v13, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v7

    move/from16 v18, v19

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2188
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v7

    move/from16 v16, v25

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2189
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2190
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v13, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2192
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v7

    move/from16 v16, v25

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2193
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v28, 0x0

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2194
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v8, v13, v5

    const-string v8, "valueTextView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v10, v7

    move/from16 v18, v20

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2195
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v7

    move/from16 v16, v25

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v11, v10, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v7

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2197
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v11, v10, v5

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v7

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    move/from16 v34, v20

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2198
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2199
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v11, v10, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v7

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2200
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v11, v10, v5

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v7

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    move/from16 v34, v20

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2202
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v16, 0x0

    move-object v10, v7

    move/from16 v17, v35

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2203
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v33, v18

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2204
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v12, 0x0

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2205
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v28, v9, v10

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2206
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v16, 0x0

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2207
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v12, 0x0

    move-object v9, v7

    move/from16 v16, v18

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2209
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v33, v17

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2210
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object v9, v7

    move/from16 v16, v17

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2211
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2212
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->deleteContainer:Landroid/widget/FrameLayout;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2213
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->stickersContainer:Landroid/widget/FrameLayout;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2214
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2216
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->settingsTopSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v10, v9, v5

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v33, v18

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2217
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v8, v13, v5

    const/16 v16, 0x0

    move-object v10, v7

    move/from16 v17, v18

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2218
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->deleteInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v8, v13, v5

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2220
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v7

    move/from16 v16, v25

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2221
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v28, 0x0

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    const/16 v33, 0x0

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2222
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v38, 0x0

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v10, v9, v5

    const-string v10, "checkBox"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v39, v9

    invoke-direct/range {v36 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2223
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v9, v6, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v11, v9, v5

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v30

    sget v34, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2225
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2226
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    sget v34, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2227
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2228
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2230
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v8, v13, v5

    const/16 v16, 0x0

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2231
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/16 v28, 0x0

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    sget v34, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2233
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    move-object v9, v7

    move-object v15, v2

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2234
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v14, 0x0

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2235
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2236
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2237
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2238
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2239
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2240
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2242
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    move-object/from16 v26, v2

    move-object/from16 v27, v7

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2243
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/4 v10, 0x0

    new-array v11, v6, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Components/UndoView;

    aput-object v7, v11, v5

    const-string v7, "undoImageView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    sget v34, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    move-object v8, v2

    move/from16 v16, v34

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2244
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/16 v28, 0x0

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Components/UndoView;

    aput-object v9, v8, v5

    const-string v9, "undoTextView"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v30

    const/16 v33, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, v7

    move-object/from16 v29, v8

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2245
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/4 v11, 0x0

    new-array v12, v6, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Components/UndoView;

    aput-object v7, v12, v5

    const-string v7, "infoTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    move-object v9, v2

    move/from16 v17, v7

    invoke-direct/range {v9 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2246
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Components/UndoView;

    aput-object v10, v9, v5

    const-string v10, "textPaint"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v2

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v34, v7

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2247
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Components/UndoView;

    aput-object v10, v9, v5

    const-string v10, "progressPaint"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v2

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2248
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Components/UndoView;

    aput-object v10, v9, v5

    const-string v10, "leftImageView"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v2

    move-object/from16 v27, v8

    move-object/from16 v29, v9

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2250
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v2

    move/from16 v16, v25

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2251
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v8, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v2

    move-object/from16 v27, v7

    move-object/from16 v29, v8

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2252
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCell;

    aput-object v7, v13, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v2

    move/from16 v18, v19

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2254
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_2

    .line 2255
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v2

    move/from16 v16, v25

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2256
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v8, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, v7

    move-object/from16 v29, v8

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2257
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCell;

    aput-object v4, v13, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v2

    move/from16 v18, v19

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    .line 1801
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ImageUpdater;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    const/4 v0, 0x0

    return v0

    .line 492
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->checkDiscard()Z

    move-result v0

    return v0
.end method

.method public onBecomeFullyHidden()V
    .locals 3

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 464
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 13

    .line 338
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_4

    .line 341
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v6, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_4

    .line 348
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    iget-wide v7, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v10, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(JZLjava/util/concurrent/CountDownLatch;ZZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_4

    :cond_0
    return v5

    .line 355
    :cond_1
    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_4

    .line 357
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(J)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    .line 359
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v6, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-nez v0, :cond_4

    .line 364
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 365
    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 366
    iget v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/MessagesStorage;->loadUserInfos(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v0

    .line 367
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 368
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$UserFull;

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    goto :goto_1

    :cond_3
    return v5

    .line 376
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const-wide/16 v6, 0x5

    if-eqz v0, :cond_a

    .line 377
    iget-object v8, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v8, v6, v7, v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_2

    :cond_5
    move v0, v5

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    iput-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    .line 380
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    iput-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    .line 381
    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_8

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v1, :cond_6

    move v1, v5

    goto :goto_3

    :cond_6
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    :goto_3
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->forumUpgradeParticipantsMin:I

    if-lt v0, v1, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_9

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v4, v5

    :cond_9
    :goto_4
    iput-boolean v4, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    .line 382
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 383
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatAvailableReactionsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_5

    .line 385
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 386
    iput-boolean v5, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    .line 387
    iput-boolean v5, p0, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    .line 388
    iput-boolean v5, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    .line 389
    iput-boolean v5, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    .line 390
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 392
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iput-object p0, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 393
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/ImageUpdater;->setDelegate(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    .line 394
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_b

    .line 397
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->loadLinksCount()V

    .line 399
    :cond_b
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 419
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->clear()V

    .line 423
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 424
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 425
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatAvailableReactionsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    .line 427
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 429
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_2

    .line 431
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 450
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->preloadedReactions:Ljava/util/List;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->stopPreloadReactions(Ljava/util/List;)V

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onPause()V

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 456
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 458
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ImageUpdater;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 437
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 442
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChatEditActivity;->updateColorCell()V

    .line 443
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    const/4 v0, 0x1

    .line 444
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->onResume()V

    return-void
.end method

.method public onSuccessDeleteAlbum()V
    .locals 10

    .line 130
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 131
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v4, v2, [Ljava/lang/Object;

    iget-wide v5, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 135
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZZ)V

    .line 136
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->checkIfFolderEmpty(I)V

    .line 137
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const-class v0, Lorg/telegram/ui/DialogsActivity;

    sget-object v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda44;->INSTANCE:Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda44;

    invoke-static {p0, v0, v1}, Lcom/iMe/utils/extentions/common/BaseFragmentExtKt;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)V

    .line 141
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method public onUploadProgressChanged(F)V
    .locals 1

    .line 1489
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_0

    return-void

    .line 1492
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgress(F)V

    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 2

    .line 1806
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "path"

    .line 1807
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 1810
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1811
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "nameTextView"

    .line 1812
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 2

    .line 1834
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_3

    .line 1836
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez p1, :cond_0

    .line 1837
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1839
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    .line 1840
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->availableReactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    .line 1841
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->preloadedReactions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1842
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->preloadedReactions:Ljava/util/List;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->startPreloadReactions(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 4

    .line 1825
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz p1, :cond_1

    .line 1827
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez p1, :cond_1

    .line 1828
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    :cond_1
    return-void
.end method

.method public showConvertTooltip()V
    .locals 5

    .line 1576
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const-wide/16 v1, 0x0

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    return-void
.end method

.method public updateColorCell()V
    .locals 3

    .line 2032
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->colorCell:Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    if-eqz v0, :cond_4

    .line 2033
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->set(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_4
    return-void
.end method
