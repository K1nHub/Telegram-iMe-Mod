.class public Lorg/telegram/ui/ChatEditActivity;
.super Lcom/iMe/ui/base/mvp/JavaMvpFragment;
.source "ChatEditActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private adminCell:Lorg/telegram/ui/Cells/TextCell;

.field private albumMode:Z

.field private availableReactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarAnimation:Landroid/animation/AnimatorSet;

.field private avatarContainer:Landroid/widget/LinearLayout;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarOverlay:Landroid/view/View;

.field private avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private blockCell:Lorg/telegram/ui/Cells/TextCell;

.field cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private canForum:Z

.field private chatId:J

.field private createAfterUpload:Z

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private deleteContainer:Landroid/widget/FrameLayout;

.field private deleteInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private donationsCell:Lorg/telegram/ui/Cells/TextCell;

.field private doneButton:Landroid/view/View;

.field private donePressed:Z

.field private forum:Z

.field private forumsCell:Lorg/telegram/ui/Cells/TextCell;

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

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private reactionsCell:Lorg/telegram/ui/Cells/TextCell;

.field private setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

.field private settingsContainer:Landroid/widget/LinearLayout;

.field private settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private settingsTopSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private signCell:Lorg/telegram/ui/Cells/TextCell;

.field private signMessages:Z

.field private stickersCell:Lorg/telegram/ui/Cells/TextCell;

.field private stickersContainer:Landroid/widget/FrameLayout;

.field private stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private typeCell:Lorg/telegram/ui/Cells/TextCell;

.field private typeEditContainer:Landroid/widget/LinearLayout;

.field private undoView:Lorg/telegram/ui/Components/UndoView;

.field private updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

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
.method public static synthetic $r8$lambda$6_FB9xVftbbtUss4W95HUAgLyUg(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7HtG-3BZGC4pe33lDvZDguoTSLM(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$22(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A9hu-48ti08_JFwf3-WaUQ1A1wI(Lorg/telegram/ui/ChatEditActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$checkDiscard$32(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CZpiGZagFeeuymIquTfZ-Tawi8M(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DZ9c_Xtx6di58wVsbEUk-T4s0j8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HGjXQXSDYBgiLlQEvkToEuQhP3A(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$loadLinksCount$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HpEEGJaga51w6UWg6-GK3lCWvck(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$8(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IJ1mkSLfvOGxKm8EBU6gyafK4Ps(Lorg/telegram/ui/ChatEditActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$checkDiscard$31(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JkLvSszsx04qS4f-HCaQnJwrUF4(Lorg/telegram/ui/ChatEditActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$28(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$N3A_ESx2BHdgMdJiiL5IXYGXgSQ(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$loadLinksCount$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NIZxagI8l3w4btRJoPOWl018_IA(Lorg/telegram/ui/ChatEditActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$processDone$34(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PtRB_7LFgSpxo7wgvsPzXcskr2s(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QZpToYg8a4TXmCDeyLpU0uiyy78(Lorg/telegram/ui/ChatEditActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$R5M6-qcEcsjxZFUCJs6CSxKuLzA(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$SdtHvQoENA2OqnI0c18EnblSG-4(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T5vVEu0BP9q92mEr2X-pTUCp928()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$VRil2rAeZHWkFKn3QfyuOuw_s4M(Lorg/telegram/ui/ChatEditActivity;[Lorg/telegram/ui/Cells/RadioButtonCell;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$12([Lorg/telegram/ui/Cells/RadioButtonCell;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WHgEMw3svebqwnbNf6vnTbsTPXU(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZAvfRsdAtL5Khe8wHRN61OPdaE8(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/ChatEditActivity;->lambda$didUploadPhoto$30(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zb5Shxt7hoihR6veGKfnXIU31T4(Lorg/telegram/ui/ChatEditActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_CxrHIGPRwCULbjtWLioKvl2B2A(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a5wlK355dwZ_ha24o1AOWrCtX6s(Lorg/telegram/ui/ChatEditActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$processDone$33(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$a93fjRkru-F4R1rckMndt9k7zbI(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$13(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cj2zyZkfyEFK7PGP7II9CWUoSZs(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$f5Hjmc881b4VRpzF491J_sO78HU(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jIGSCkrC9lKT8pflF4znS4S4U5w(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$29(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kALR7EAM7seC4H7KMvdjTQG8nfs(Lorg/telegram/ui/ChatEditActivity;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$updateHistoryShow$35(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lpAlecDhRy03qYrsLKMwktTAHs0(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mRDFZfhFZJ3ji757NT1gZnpAO5M(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$25(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nggg_4jmyz3cQDiePZA2bQpPHSY(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pv80jZ3Z-sf0K3frKkpKZsziKg0(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$27(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rK8fuSe7sipckisMP__uix3enGo(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$getThemeDescriptions$36()V

    return-void
.end method

.method public static synthetic $r8$lambda$t2HAnx-y98bJfGWfDODSf9WEIVY(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tGOu87mZfN2lYiAxnhOP4FmPMEE(Lorg/telegram/ui/ChatEditActivity;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$15(Landroid/widget/FrameLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-xdVlcLlCYzaj-22qfw2YF-uMI(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$3(Landroid/view/View;)V

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

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 244
    invoke-direct {p0, p1}, Lcom/iMe/ui/base/mvp/JavaMvpFragment;-><init>(Landroid/os/Bundle;)V

    .line 106
    const-class v0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->walletFlowCoordinator:Lkotlin/Lazy;

    .line 199
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatEditActivity$1;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 245
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-string v0, "chat_id"

    const-wide/16 v1, 0x0

    .line 246
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    .line 247
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 248
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

    .line 249
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/iMe/fork/controller/AlbumsController;->isDialogAlbum(J)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->albumMode:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChatEditActivity;)J
    .locals 2

    .line 97
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChatEditActivity;)Landroid/view/View;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/AvatarDrawable;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChatEditActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ChatEditActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Cells/TextCell;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChatEditActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/ImageUpdater;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChatEditActivity;)Z
    .locals 0

    .line 97
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->checkDiscard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->processDone()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/EditTextEmoji;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method private checkDiscard()Z
    .locals 3

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    if-eqz v0, :cond_1

    .line 1250
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    iget-boolean v2, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    if-ne v0, v2, :cond_5

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1251
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_3

    .line 1252
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eq v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    return v0

    .line 1254
    :cond_5
    :goto_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1255
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsApplyChanges:I

    const-string v2, "UserRestrictionsApplyChanges"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1256
    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v1, :cond_6

    .line 1257
    sget v1, Lorg/telegram/messenger/R$string;->ChannelSettingsChangedAlert:I

    const-string v2, "ChannelSettingsChangedAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2

    .line 1259
    :cond_6
    sget v1, Lorg/telegram/messenger/R$string;->GroupSettingsChangedAlert:I

    const-string v2, "GroupSettingsChangedAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1261
    :goto_2
    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    const-string v2, "ApplyTheme"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1262
    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    const-string v2, "PassportDiscard"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1263
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, 0x0

    return v0
.end method

.method private getAdminCount()I
    .locals 5

    .line 1270
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1274
    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1275
    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1276
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

.method private synthetic lambda$checkDiscard$31(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1261
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$32(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1262
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$10(Landroid/view/View;)V
    .locals 3

    .line 772
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

    .line 773
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatEditTypeActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 774
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/view/View;)V
    .locals 2

    .line 783
    new-instance p1, Lorg/telegram/ui/ChatLinkActivity;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/ChatLinkActivity;-><init>(J)V

    .line 784
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatLinkActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 785
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$12([Lorg/telegram/ui/Cells/RadioButtonCell;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V
    .locals 4

    .line 826
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 827
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

    .line 828
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

    .line 829
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_2

    move v0, v3

    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    .line 830
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 831
    invoke-direct {p0, v3, v3}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$13(Landroid/content/Context;Landroid/view/View;)V
    .locals 13

    .line 794
    new-instance p2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 795
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 797
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 798
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 800
    new-instance v9, Lorg/telegram/ui/Cells/HeaderCell;

    const-string v5, "dialogTextBlue2"

    const/16 v6, 0x17

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    const/16 v3, 0x2f

    .line 801
    invoke-virtual {v9, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    .line 802
    sget v3, Lorg/telegram/messenger/R$string;->ChatHistory:I

    const-string v4, "ChatHistory"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 803
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 805
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 806
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, -0x1

    const/4 v5, -0x2

    .line 807
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x2

    new-array v7, v6, [Lorg/telegram/ui/Cells/RadioButtonCell;

    move v8, v0

    :goto_0
    if-ge v8, v6, :cond_2

    .line 812
    new-instance v9, Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-direct {v9, p1, v2}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;Z)V

    aput-object v9, v7, v8

    .line 813
    aget-object v9, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 814
    aget-object v9, v7, v8

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v8, :cond_0

    .line 816
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

    .line 818
    :cond_0
    iget-object v9, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    const-string v10, "ChatHistoryHidden"

    if-eqz v9, :cond_1

    .line 819
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

    .line 821
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

    .line 824
    :goto_1
    aget-object v9, v7, v8

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    aget-object v9, v7, v8

    new-instance v10, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda24;

    invoke-direct {v10, p0, v7, p2}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ChatEditActivity;[Lorg/telegram/ui/Cells/RadioButtonCell;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 835
    :cond_2
    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 836
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createView$14(Landroid/view/View;)V
    .locals 1

    .line 846
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    .line 847
    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$15(Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 6

    .line 856
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 858
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p2, :cond_0

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    .line 859
    sget p2, Lorg/telegram/messenger/R$string;->ChannelTopicsDiscussionForbidden:I

    const-string v0, "ChannelTopicsDiscussionForbidden"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_0

    .line 861
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

    .line 863
    :goto_0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->topics:I

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    const/4 p2, 0x3

    .line 864
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    return-void

    .line 867
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    .line 868
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

    .line 869
    check-cast p2, Lorg/telegram/ui/Cells/TextCell;

    iget-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 870
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$16(Landroid/view/View;)V
    .locals 3

    .line 909
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 910
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const-string v2, "chat_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 911
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

    .line 912
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 913
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 914
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$17(Landroid/view/View;)V
    .locals 6

    .line 920
    new-instance p1, Lorg/telegram/ui/ManageLinksActivity;

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ManageLinksActivity;-><init>(JJI)V

    .line 921
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ManageLinksActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)V

    .line 922
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$18(Landroid/view/View;)V
    .locals 3

    .line 928
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 929
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const-string v2, "chat_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 930
    new-instance v0, Lorg/telegram/ui/ChatReactionsEditActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatReactionsEditActivity;-><init>(Landroid/os/Bundle;)V

    .line 931
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatReactionsEditActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 932
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$19(Landroid/view/View;)V
    .locals 3

    .line 938
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 939
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const-string v2, "chat_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "type"

    const/4 v1, 0x1

    .line 940
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 941
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 942
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 943
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static synthetic lambda$createView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$20(Landroid/view/View;)V
    .locals 3

    .line 949
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 950
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const-string v2, "chat_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "type"

    const/4 v1, 0x2

    .line 951
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 952
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 953
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 954
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$21(Landroid/view/View;)V
    .locals 2

    .line 961
    new-instance p1, Lorg/telegram/ui/MemberRequestsActivity;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/MemberRequestsActivity;-><init>(J)V

    .line 962
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$22(Landroid/view/View;)V
    .locals 1

    .line 970
    new-instance p1, Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static synthetic lambda$createView$23()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createView$24()V
    .locals 4

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v0, v1}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForDonations(J)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object v0

    .line 984
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ManageLinksActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)V

    .line 985
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->walletFlowCoordinator:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/WalletAuthFragment;Z)V

    return-void
.end method

.method private synthetic lambda$createView$25(Landroid/view/View;)V
    .locals 2

    .line 978
    sget-object p1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda28;->INSTANCE:Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda28;

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-static {p0, p1, v0, v1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->runWithCheckIsCryptoWalletCreated(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private synthetic lambda$createView$26(Landroid/view/View;)V
    .locals 1

    .line 1022
    new-instance p1, Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$27(Landroid/view/View;)V
    .locals 2

    .line 1026
    new-instance p1, Lorg/telegram/ui/GroupStickersActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/GroupStickersActivity;-><init>(J)V

    .line 1027
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/GroupStickersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1028
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$28(Z)V
    .locals 7

    .line 1065
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1066
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

    .line 1068
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1070
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 1071
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

.method private synthetic lambda$createView$29(Landroid/view/View;)V
    .locals 11

    .line 1064
    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v9, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda33;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

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

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 3

    .line 590
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 593
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 594
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_3

    .line 595
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 596
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->dc_id:I

    if-eqz v1, :cond_1

    .line 597
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 600
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 601
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

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 605
    :goto_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual {v1, p1, v0, v2}, Lorg/telegram/ui/PhotoViewer;->openPhotoWithVideo(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    :cond_3
    return-void
.end method

.method private synthetic lambda$createView$4()V
    .locals 15

    const/4 v0, 0x0

    .line 664
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 665
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

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 666
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/ChatEditActivity;->showAvatarProgress(ZZ)V

    .line 667
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, v0, v0, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/content/DialogInterface;)V
    .locals 1

    .line 671
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 672
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x56

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 673
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    .line 675
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 4

    .line 663
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    new-instance v3, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {p1, v0, v2, v3, v1}, Lorg/telegram/ui/Components/ImageUpdater;->openMenu(ZLjava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;I)V

    .line 679
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 680
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 681
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 710
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->doneButton:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$8(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 0

    .line 754
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;-><init>()V

    .line 755
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->address:Ljava/lang/String;

    .line 756
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 758
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    .line 759
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const p3, 0x8000

    or-int/2addr p2, p3

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 760
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    .line 761
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide p4, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {p3, p4, p5, p1, p2}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 2

    .line 745
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 748
    :cond_0
    new-instance p1, Lorg/telegram/ui/LocationActivity;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    .line 749
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/LocationActivity;->setDialogId(J)V

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v1, :cond_1

    .line 751
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/LocationActivity;->setInitialLocation(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)V

    .line 753
    :cond_1
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/LocationActivity;->setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V

    .line 763
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$30(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1209
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v2, v1, Lorg/telegram/ui/ChatEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_0

    goto/16 :goto_0

    .line 1226
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    iget-object v5, v1, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v6, v1, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const-string v7, "50_50"

    invoke-virtual {v0, v2, v7, v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 1227
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChatSetNewPhoto:I

    const-string v5, "ChatSetNewPhoto"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    invoke-virtual {v0, v2, v5, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 1228
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_1

    .line 1229
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->camera_outline:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x32

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p1, v0

    move/from16 p2, v2

    move-object/from16 p3, v5

    move/from16 p4, v7

    move/from16 p5, v6

    move/from16 p6, v8

    move-object/from16 p7, v9

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 1231
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1232
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1233
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v2, v1, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 1234
    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/ChatEditActivity;->showAvatarProgress(ZZ)V

    goto :goto_2

    .line 1211
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const/4 v8, 0x0

    iget-object v15, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p8

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/16 v17, 0x0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    move-object/from16 v16, v0

    invoke-virtual/range {v5 .. v17}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(JLorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/Runnable;)V

    .line 1212
    iget-boolean v0, v1, Lorg/telegram/ui/ChatEditActivity;->createAfterUpload:Z

    if-eqz v0, :cond_4

    .line 1214
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1215
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 1216
    iput-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1219
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1221
    :cond_3
    :goto_1
    iput-boolean v4, v1, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    .line 1222
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1224
    :cond_4
    invoke-direct {v1, v4, v3}, Lorg/telegram/ui/ChatEditActivity;->showAvatarProgress(ZZ)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$36()V
    .locals 1

    .line 1750
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_0

    .line 1751
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadLinksCount$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    if-nez p1, :cond_0

    .line 294
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;

    .line 295
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->count:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    .line 296
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/messenger/MessagesStorage;->saveChatLinksCount(JI)V

    const/4 p1, 0x0

    .line 297
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadLinksCount$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 292
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processDone$33(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1300
    iput-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    return-void

    .line 1303
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    .line 1304
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1305
    iput-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    .line 1306
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 1307
    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    .line 1309
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$processDone$34(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    .line 1325
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->createAfterUpload:Z

    const/4 v0, 0x0

    .line 1326
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1327
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    return-void
.end method

.method private synthetic lambda$updateHistoryShow$35(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1678
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 1679
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1680
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

    .line 1681
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr p2, v1

    const v1, 0x3e4ccccd    # 0.2f

    add-float/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 p2, 0x0

    .line 1682
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1683
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

    .line 288
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;-><init>()V

    .line 289
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 290
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

    .line 291
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->limit:I

    .line 292
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private processDone()V
    .locals 8

    .line 1285
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1288
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1289
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0xc8

    .line 1291
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1293
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 1296
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    .line 1297
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-eqz v1, :cond_4

    .line 1298
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    new-instance v7, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda34;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    return-void

    .line 1314
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_5

    .line 1315
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    if-eq v2, v3, :cond_5

    .line 1316
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    .line 1317
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-boolean v4, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->toggleChannelInvitesHistory(JZ)V

    .line 1321
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1322
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->createAfterUpload:Z

    .line 1323
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1324
    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1329
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 1333
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1334
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->changeChatTitle(JLjava/lang/String;)V

    .line 1336
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    const-string v1, ""

    .line 1337
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1338
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

    .line 1340
    :cond_9
    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eq v1, v3, :cond_a

    .line 1341
    iput-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    .line 1342
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->toggleChannelSignatures(JZ)V

    .line 1344
    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eq v0, v1, :cond_c

    .line 1345
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->toggleChannelForum(JZ)V

    .line 1346
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1347
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 1348
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_b

    .line 1349
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    .line 1350
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "chat_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_b

    .line 1351
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(I)V

    .line 1352
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1353
    iget-wide v4, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1354
    new-instance v3, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {v3, v2}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    .line 1355
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1360
    :cond_c
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_d
    :goto_2
    return-void
.end method

.method private setAvatar()V
    .locals 8

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v0, :cond_0

    return-void

    .line 1116
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1120
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1122
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1123
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1124
    invoke-static {v0, v3}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 1125
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    if-eqz v0, :cond_3

    move v2, v3

    goto :goto_0

    .line 1128
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1131
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_7

    if-nez v2, :cond_5

    .line 1132
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1135
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChatSetPhotoOrVideo:I

    const-string v2, "ChatSetPhotoOrVideo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_2

    .line 1133
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChatSetNewPhoto:I

    const-string v2, "ChatSetNewPhoto"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 1137
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_6

    .line 1138
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

    .line 1140
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 1144
    :cond_7
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1145
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->checkCurrentImageVisibility()V

    :cond_8
    return-void
.end method

.method private showAvatarProgress(ZZ)V
    .locals 7

    .line 1364
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_0

    return-void

    .line 1367
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 1368
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 1369
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 1372
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    .line 1374
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1376
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

    .line 1377
    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v4

    .line 1376
    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_2
    new-array v0, v3, [Landroid/animation/Animator;

    .line 1379
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

    .line 1380
    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1379
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1382
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1383
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/ChatEditActivity$9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatEditActivity$9;-><init>(Lorg/telegram/ui/ChatEditActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1401
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 1404
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 1405
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1406
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1407
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1409
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 1410
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1411
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1412
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateCanForum()V
    .locals 6

    .line 1150
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->forumUpgradeParticipantsMin:I

    if-lt v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_3

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    .line 1151
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_5

    .line 1152
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v0

    iget-boolean v2, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    sget v1, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :goto_3
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    :cond_5
    return-void
.end method

.method private updateFields(ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v7, p2

    if-eqz p1, :cond_0

    .line 1455
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1457
    iput-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1460
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    const/4 v8, 0x1

    xor-int/lit8 v9, v1, 0x1

    .line 1462
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-eqz v1, :cond_5

    .line 1463
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

    .line 1466
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_8

    .line 1467
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

    .line 1470
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    const-wide/16 v12, 0x0

    if-eqz v1, :cond_12

    .line 1471
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_11

    iget-boolean v3, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v3, :cond_9

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    cmp-long v2, v2, v12

    if-nez v2, :cond_9

    goto/16 :goto_5

    .line 1474
    :cond_9
    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1475
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    cmp-long v1, v1, v12

    const-string v2, "Discussion"

    if-nez v1, :cond_a

    .line 1476
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

    .line 1478
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

    .line 1480
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 1483
    :cond_b
    iget-boolean v3, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    const-string v4, "@"

    if-eqz v3, :cond_d

    .line 1484
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1485
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    sget v4, Lorg/telegram/messenger/R$string;->Discussion:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_discuss:I

    invoke-virtual {v3, v2, v1, v4, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_6

    .line 1487
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

    .line 1490
    :cond_d
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "LinkedChannel"

    if-eqz v3, :cond_f

    .line 1491
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

    .line 1493
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

    .line 1472
    :cond_11
    :goto_5
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1501
    :cond_12
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_15

    .line 1502
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_14

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_location:Z

    if-eqz v2, :cond_14

    .line 1503
    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1504
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    const-string v3, "AttachLocation"

    if-eqz v2, :cond_13

    .line 1505
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    .line 1506
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    sget v4, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->address:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_7

    .line 1508
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unknown address"

    invoke-virtual {v1, v2, v3, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_7

    .line 1511
    :cond_14
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1515
    :cond_15
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_2a

    .line 1516
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v1, :cond_1b

    if-eqz v9, :cond_16

    .line 1519
    sget v1, Lorg/telegram/messenger/R$string;->TypeLocationGroupEdit:I

    const-string v2, "TypeLocationGroupEdit"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 1521
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

    .line 1523
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

    .line 1526
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    .line 1527
    iget-boolean v2, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v2, :cond_1e

    if-eqz v9, :cond_1d

    if-eqz v1, :cond_1c

    .line 1528
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

    .line 1530
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

    .line 1532
    :goto_c
    iget-boolean v2, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v2, :cond_25

    .line 1533
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

    .line 1535
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

    .line 1540
    :cond_2a
    :goto_f
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_30

    .line 1541
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

    .line 1542
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

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 1543
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    iget-boolean v2, v0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    xor-int/2addr v2, v8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setEnabled(Z)V

    .line 1544
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

    .line 1547
    :cond_30
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_50

    .line 1548
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const-string v12, "ChannelAdministrators"

    const-string v3, "ChannelPermissions"

    const-string v4, "ChannelSubscribers"

    const-string v5, "ChannelMembers"

    const-string v6, "ChannelBlacklist"

    if-eqz v2, :cond_45

    .line 1549
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_33

    .line 1550
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_31

    .line 1551
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v8

    .line 1552
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v13, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-static {v14, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v2, v13, v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1554
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

    .line 1556
    :cond_33
    iget-boolean v1, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    const-string v13, "%d"

    if-eqz v1, :cond_35

    .line 1557
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

    .line 1558
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

    .line 1560
    :cond_35
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1561
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

    .line 1563
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

    .line 1565
    :goto_16
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v2, :cond_39

    .line 1566
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

    .line 1569
    :cond_39
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    const/16 v2, 0xe

    const/16 v4, 0x10

    if-eqz v1, :cond_3d

    .line 1570
    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    xor-int/2addr v5, v8

    .line 1573
    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->getSendMediaSelectedCount(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)I

    move-result v1

    add-int/2addr v5, v1

    .line 1574
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v6, :cond_3a

    add-int/lit8 v5, v5, 0x1

    .line 1577
    :cond_3a
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v6, :cond_3b

    add-int/lit8 v5, v5, 0x1

    .line 1580
    :cond_3b
    iget-boolean v6, v0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-eqz v6, :cond_3c

    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v6, :cond_3c

    add-int/lit8 v5, v5, 0x1

    .line 1583
    :cond_3c
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v1, :cond_3f

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1587
    :cond_3d
    iget-boolean v1, v0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-eqz v1, :cond_3e

    move v5, v2

    goto :goto_18

    :cond_3e
    move v5, v4

    .line 1589
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

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 1591
    :goto_1a
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_42

    .line 1592
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

    .line 1596
    :cond_42
    :goto_1c
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->donationsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_43

    .line 1597
    sget v2, Lorg/telegram/messenger/R$string;->channel_donations_toolbar_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_donations_28:I

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 1600
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

    .line 1602
    :cond_45
    iget-boolean v2, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v2, :cond_47

    .line 1603
    sget v2, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 1604
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
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_21

    .line 1606
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
    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 1607
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v1, :cond_4a

    .line 1608
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
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_21

    .line 1610
    :cond_4a
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelPermissions:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 1614
    :goto_21
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->donationsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_4b

    .line 1615
    sget v2, Lorg/telegram/messenger/R$string;->channel_donations_toolbar_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_donations_28:I

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 1618
    :cond_4b
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    invoke-static {v12, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 1620
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

    .line 1621
    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatEditActivity;->updateReactionsCell(Z)V

    .line 1622
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

    .line 1625
    :cond_4d
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    const-string v2, "InviteLinks"

    if-lez v1, :cond_4e

    .line 1626
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

    .line 1628
    :cond_4e
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    sget v3, Lorg/telegram/messenger/R$string;->InviteLinks:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    const-string v4, "1"

    invoke-virtual {v1, v2, v4, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_25

    .line 1623
    :cond_4f
    :goto_24
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1633
    :cond_50
    :goto_25
    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_52

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_52

    .line 1634
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

    .line 1641
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1642
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1644
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/16 v2, 0x8

    if-gtz v0, :cond_1

    if-nez p1, :cond_1

    .line 1645
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 1647
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

    .line 1650
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 1652
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-ge v5, v7, :cond_5

    if-nez v6, :cond_3

    .line 1653
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-ne v7, v9, :cond_3

    move v6, v8

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    .line 1656
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

    .line 1660
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_8

    if-nez v6, :cond_6

    .line 1661
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    if-ne v7, v9, :cond_6

    move v6, v8

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_7

    .line 1664
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1667
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_9

    .line 1668
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1669
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1671
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v5, v4

    .line 1672
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_a

    .line 1673
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

    .line 1676
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

    .line 1677
    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatEditActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1686
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$10;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/ChatEditActivity$10;-><init>(Lorg/telegram/ui/ChatEditActivity;ZLjava/util/ArrayList;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1695
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1696
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1697
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_9

    .line 1699
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz p1, :cond_d

    move v5, v3

    goto :goto_5

    :cond_d
    move v5, v1

    :goto_5
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1700
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

    .line 1701
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

    .line 1702
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz p1, :cond_10

    move v2, v4

    :cond_10
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1703
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_11

    .line 1704
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_11
    const/4 p1, 0x0

    .line 1706
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    :goto_9
    return-void
.end method

.method private updateReactionsCell(Z)V
    .locals 7

    .line 1712
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->availableReactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    const-string v1, "ReactionsOff"

    if-eqz v0, :cond_5

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 1714
    :cond_0
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    if-eqz v2, :cond_4

    .line 1715
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 1717
    :goto_0
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 1718
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 1719
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v6, :cond_1

    .line 1720
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    .line 1721
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v6

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v5, :cond_1

    .line 1722
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->inactive:Z

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1727
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_3

    .line 1728
    sget v0, Lorg/telegram/messenger/R$string;->ReactionsOff:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1729
    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->ReactionsCount:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const-string v0, "ReactionsCount"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1731
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->ReactionsAll:I

    const-string v1, "ReactionsAll"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1713
    :cond_5
    :goto_1
    sget v0, Lorg/telegram/messenger/R$string;->ReactionsOff:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v3, v0

    .line 1735
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v0, Lorg/telegram/messenger/R$string;->Reactions:I

    const-string v2, "Reactions"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_reactions2:I

    const/4 v6, 0x1

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;ZIZ)V

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

    .line 376
    invoke-super/range {p0 .. p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 377
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    .line 381
    :cond_0
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 382
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 384
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$2;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$2;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 403
    new-instance v9, Lorg/telegram/ui/ChatEditActivity$3;

    invoke-direct {v9, v6, v7}, Lorg/telegram/ui/ChatEditActivity$3;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;)V

    .line 522
    sget-object v0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda25;->INSTANCE:Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda25;

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 523
    iput-object v9, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v10, "windowBackgroundGray"

    .line 524
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 526
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 527
    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const/4 v11, -0x1

    .line 528
    invoke-static {v11, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, v6, Lorg/telegram/ui/ChatEditActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 531
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v1, v11, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v12, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 535
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelEdit:I

    const-string v2, "ChannelEdit"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 537
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    .line 538
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 539
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    const-string v14, "windowBackgroundWhite"

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 540
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    invoke-static {v11, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    new-instance v15, Landroid/widget/FrameLayout;

    invoke-direct {v15, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 543
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    invoke-static {v11, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$4;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ChatEditActivity$4;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 562
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

    .line 564
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const/16 v17, 0x3

    const/16 v18, 0x5

    const/4 v5, 0x0

    if-eqz v0, :cond_b

    .line 565
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v19, 0x40

    const/16 v20, 0x40

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    move/from16 v2, v18

    goto :goto_1

    :cond_2
    move/from16 v2, v17

    :goto_1
    or-int/lit8 v21, v2, 0x30

    if-eqz v1, :cond_3

    move/from16 v22, v5

    goto :goto_2

    :cond_3
    move/from16 v22, v16

    :goto_2
    const/16 v23, 0xc

    if-eqz v1, :cond_4

    move/from16 v24, v16

    goto :goto_3

    :cond_4
    move/from16 v24, v5

    :goto_3
    const/16 v25, 0x8

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, 0x55000000

    .line 568
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 570
    new-instance v1, Lorg/telegram/ui/ChatEditActivity$5;

    invoke-direct {v1, v6, v7, v0}, Lorg/telegram/ui/ChatEditActivity$5;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    const/16 v19, 0x40

    const/16 v20, 0x40

    .line 579
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    move/from16 v2, v18

    goto :goto_4

    :cond_5
    move/from16 v2, v17

    :goto_4
    or-int/lit8 v21, v2, 0x30

    if-eqz v0, :cond_6

    move/from16 v22, v5

    goto :goto_5

    :cond_6
    move/from16 v22, v16

    :goto_5
    const/16 v23, 0xc

    if-eqz v0, :cond_7

    move/from16 v24, v16

    goto :goto_6

    :cond_7
    move/from16 v24, v5

    :goto_6
    const/16 v25, 0x8

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v15, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x1e

    .line 582
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 583
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 584
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setNoProgress(Z)V

    .line 585
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v19, 0x40

    const/16 v20, 0x40

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_8

    move/from16 v2, v18

    goto :goto_7

    :cond_8
    move/from16 v2, v17

    :goto_7
    or-int/lit8 v21, v2, 0x30

    if-eqz v1, :cond_9

    move/from16 v22, v5

    goto :goto_8

    :cond_9
    move/from16 v22, v16

    :goto_8
    const/16 v23, 0xc

    if-eqz v1, :cond_a

    move/from16 v24, v16

    goto :goto_9

    :cond_a
    move/from16 v24, v5

    :goto_9
    const/16 v25, 0x8

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    invoke-direct {v6, v5, v5}, Lorg/telegram/ui/ChatEditActivity;->showAvatarProgress(ZZ)V

    .line 589
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d

    .line 609
    :cond_b
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v19, 0x40

    const/16 v20, 0x40

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_c

    move/from16 v2, v18

    goto :goto_a

    :cond_c
    move/from16 v2, v17

    :goto_a
    or-int/lit8 v21, v2, 0x30

    if-eqz v1, :cond_d

    move/from16 v22, v5

    goto :goto_b

    :cond_d
    move/from16 v22, v16

    :goto_b
    const/16 v23, 0xc

    if-eqz v1, :cond_e

    move/from16 v24, v16

    goto :goto_c

    :cond_e
    move/from16 v24, v5

    :goto_c
    const/16 v25, 0xc

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    :goto_d
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

    .line 613
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v0, :cond_10

    .line 615
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->albumMode:Z

    if-eqz v0, :cond_f

    .line 616
    sget v0, Lorg/telegram/messenger/R$string;->cloud_albums_name_hint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 618
    :cond_f
    sget v0, Lorg/telegram/messenger/R$string;->EnterChannelName:I

    const-string v1, "EnterChannelName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 620
    :cond_10
    sget v0, Lorg/telegram/messenger/R$string;->GroupName:I

    const-string v1, "GroupName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 622
    :goto_e
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setEnabled(Z)V

    .line 623
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setFocusable(Z)V

    .line 624
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$6;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$6;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-array v0, v8, [Landroid/text/InputFilter;

    .line 644
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v13

    .line 645
    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setFilters([Landroid/text/InputFilter;)V

    .line 646
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x10

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v2, 0x60

    if-eqz v1, :cond_11

    move/from16 v25, v18

    goto :goto_f

    :cond_11
    move/from16 v25, v2

    :goto_f
    const/16 v26, 0x0

    if-eqz v1, :cond_12

    move/from16 v27, v2

    goto :goto_10

    :cond_12
    move/from16 v27, v18

    :goto_10
    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    .line 649
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 650
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 651
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 654
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$7;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ChatEditActivity$7;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    .line 660
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    const-string v1, "windowBackgroundWhiteBlueIcon"

    const-string v2, "windowBackgroundWhiteBlueButton"

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    :cond_13
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v1, 0x41800000    # 16.0f

    .line 687
    invoke-virtual {v0, v8, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 688
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 689
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 690
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v13, v13, v13, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 691
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_14

    move/from16 v3, v18

    goto :goto_11

    :cond_14
    move/from16 v3, v17

    :goto_11
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 693
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v3, 0x2c001

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 694
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 695
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 696
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    new-array v0, v8, [Landroid/text/InputFilter;

    .line 698
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xff

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v13

    .line 699
    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 700
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v2, Lorg/telegram/messenger/R$string;->DescriptionOptionalPlaceholder:I

    const-string v3, "DescriptionOptionalPlaceholder"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 702
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 703
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 704
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 705
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

    goto :goto_12

    .line 707
    :cond_15
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

    .line 709
    :goto_12
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 716
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$8;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$8;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 733
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsTopSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v1, -0x2

    const/4 v2, -0x1

    .line 734
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 736
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    .line 737
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 738
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_17

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_16

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_location:Z

    if-eqz v0, :cond_17

    .line 741
    :cond_16
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    .line 742
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 743
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    :cond_17
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_19

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_18

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    if-eqz v0, :cond_19

    .line 768
    :cond_18
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    .line 769
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    :cond_19
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v0, :cond_1a

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v8}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_1c

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v13}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 779
    :cond_1b
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    .line 780
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 781
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    :cond_1c
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_1e

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_1e

    .line 790
    :cond_1d
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    .line 791
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 792
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    :cond_1e
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v0, :cond_1f

    .line 841
    new-instance v11, Lorg/telegram/ui/Cells/TextCell;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v6, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    .line 842
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 843
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelSignMessages:I

    const-string v2, "ChannelSignMessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v6, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_signed:I

    invoke-virtual {v0, v1, v2, v3, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheckAndIcon(Ljava/lang/CharSequence;ZIZ)V

    .line 844
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_14

    .line 849
    :cond_1f
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_21

    .line 850
    new-instance v11, Lorg/telegram/ui/Cells/TextCell;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v6, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    .line 851
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 852
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelTopics:I

    const-string v2, "ChannelTopics"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v6, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_topics:I

    invoke-virtual {v0, v1, v2, v3, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheckAndIcon(Ljava/lang/CharSequence;ZIZ)V

    .line 853
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v0

    iget-boolean v1, v6, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    if-eqz v1, :cond_20

    move v5, v13

    goto :goto_13

    :cond_20
    sget v5, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :goto_13
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 854
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, v6, v15}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    :cond_21
    :goto_14
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 876
    iget-boolean v1, v6, Lorg/telegram/ui/ChatEditActivity;->albumMode:Z

    const/16 v2, 0x38

    if-eqz v1, :cond_22

    const/16 v1, 0x64

    .line 877
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 880
    :cond_22
    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v1, :cond_23

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_24

    .line 881
    :cond_23
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v8, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->doneButton:Landroid/view/View;

    .line 882
    sget v1, Lorg/telegram/messenger/R$string;->Done:I

    const-string v2, "Done"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 885
    :cond_24
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    const-string v1, "windowBackgroundGrayShadow"

    if-nez v0, :cond_25

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_25

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_25

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_25

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_25

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_27

    .line 886
    :cond_25
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 887
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v7, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 888
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 889
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v3, v2, v0, v13, v13}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 890
    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 891
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 892
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_26

    .line 894
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/messenger/R$string;->ForumToggleDescription:I

    const-string v3, "ForumToggleDescription"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 896
    :cond_26
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelSignMessagesInfo:I

    const-string v3, "ChannelSignMessagesInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 900
    :cond_27
    :goto_15
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    .line 901
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 902
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 903
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    .line 906
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 907
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    const/16 v5, 0x8

    if-nez v2, :cond_29

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v3, :cond_29

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_16

    :cond_28
    move v2, v5

    goto :goto_17

    :cond_29
    :goto_16
    move v2, v13

    :goto_17
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 908
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 917
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    .line 918
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 919
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 925
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    .line 926
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 927
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    .line 936
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 937
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda21;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    .line 947
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 948
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 957
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 958
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    .line 959
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 960
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 966
    :cond_2a
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v0, :cond_2c

    .line 967
    :cond_2b
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    .line 968
    sget v2, Lorg/telegram/messenger/R$string;->EventLog:I

    const-string v3, "EventLog"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_log:I

    invoke-virtual {v0, v2, v3, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 969
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 970
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 974
    :cond_2c
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_2d

    .line 975
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->donationsCell:Lorg/telegram/ui/Cells/TextCell;

    .line 976
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 977
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->donationsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->donationsCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_18

    :cond_2d
    const/4 v3, -0x2

    const/4 v4, -0x1

    .line 996
    :goto_18
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 998
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_2e

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v0, :cond_2e

    .line 999
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    :cond_2e
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_2f

    .line 1002
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1004
    :cond_2f
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1005
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1006
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_30

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_30

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    if-lez v2, :cond_30

    .line 1007
    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1009
    :cond_30
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v0, :cond_31

    .line 1010
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    :cond_31
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_32

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v0, :cond_33

    .line 1013
    :cond_32
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    :cond_33
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_34

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_34

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz v0, :cond_34

    .line 1016
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersContainer:Landroid/widget/FrameLayout;

    .line 1017
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1018
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersContainer:Landroid/widget/FrameLayout;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1021
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1022
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1023
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/TextCell;->setPrioritizeTitleOverValue(Z)V

    .line 1024
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1025
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_19

    .line 1030
    :cond_34
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_35

    .line 1031
    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    :cond_35
    :goto_19
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1035
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1036
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsTopSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1039
    :cond_36
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_37

    .line 1040
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->infoSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    .line 1041
    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1044
    :cond_37
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_38

    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_38

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz v0, :cond_38

    .line 1045
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1046
    sget v2, Lorg/telegram/messenger/R$string;->GroupStickersInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    :cond_38
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_3a

    .line 1051
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteContainer:Landroid/widget/FrameLayout;

    .line 1052
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1053
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteContainer:Landroid/widget/FrameLayout;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1055
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v2, "windowBackgroundWhiteRedText5"

    .line 1056
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 1057
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1058
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v0, :cond_39

    .line 1059
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelDelete:I

    const-string v3, "ChannelDelete"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v13}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1a

    .line 1061
    :cond_39
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/messenger/R$string;->DeleteAndExitButton:I

    const-string v3, "DeleteAndExitButton"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v13}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1063
    :goto_1a
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1064
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1074
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 1075
    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v7, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1076
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->deleteInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    :cond_3a
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_3c

    .line 1080
    iget-object v2, v6, Lorg/telegram/ui/ChatEditActivity;->deleteInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    if-nez v2, :cond_3b

    .line 1081
    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v7, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1b

    .line 1083
    :cond_3b
    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v7, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1087
    :cond_3c
    :goto_1b
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

    .line 1088
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

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

    .line 1091
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V

    .line 1092
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_3d

    .line 1093
    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    :cond_3d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatEditActivity;->setAvatar()V

    .line 1096
    invoke-direct {v6, v8, v13}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    .line 1099
    iget-boolean v0, v6, Lorg/telegram/ui/ChatEditActivity;->albumMode:Z

    if-eqz v0, :cond_3e

    .line 1100
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1101
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1102
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1103
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1104
    iget-object v0, v6, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1107
    :cond_3e
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    .line 1158
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_4

    .line 1159
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1160
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long p2, p2, v2

    if-nez p2, :cond_7

    .line 1161
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p2, :cond_0

    .line 1162
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 1165
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1166
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->updateCanForum()V

    .line 1167
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

    .line 1168
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    if-eqz p2, :cond_7

    .line 1170
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->loadLinksCount()V

    goto :goto_2

    .line 1173
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_5

    .line 1174
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1175
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_7

    .line 1176
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->setAvatar()V

    goto :goto_2

    .line 1178
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatAvailableReactionsUpdated:I

    if-ne p1, p2, :cond_7

    .line 1179
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1180
    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long p3, p1, v1

    if-nez p3, :cond_7

    .line 1181
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_6

    .line 1183
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->availableReactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    .line 1185
    :cond_6
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatEditActivity;->updateReactionsCell(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method public didStartUpload(Z)V
    .locals 1

    .line 1200
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1203
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

    .line 1208
    new-instance v10, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda30;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p9

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissCurrentDialog()V
    .locals 2

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ImageUpdater;->dismissCurrentDialog(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 352
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    return-void
.end method

.method public dismissDialogOnPause(Landroid/app/Dialog;)Z
    .locals 1

    .line 357
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

    .line 1241
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1740
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1742
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->donationsCell:Lorg/telegram/ui/Cells/TextCell;

    const-string v3, "imageView"

    const-string v4, "textView"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    .line 1743
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->donationsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "listSelectorSDK21"

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1744
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->donationsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v8, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, "windowBackgroundWhiteBlackText"

    move-object v15, v2

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1745
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->donationsCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v26, 0x0

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v8, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-string v32, "windowBackgroundWhiteGrayIcon"

    move-object/from16 v24, v2

    move-object/from16 v25, v7

    move-object/from16 v27, v8

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1749
    :cond_0
    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda36;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    .line 1755
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "windowBackgroundGray"

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, "actionBarDefault"

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "actionBarDefaultIcon"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v23, 0x0

    const-string v24, "actionBarDefaultTitle"

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1760
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v16, "actionBarDefaultSelector"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v24, "listSelectorSDK21"

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1763
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v12, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v12, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    const-string v17, "windowBackgroundWhiteBlueButton"

    move-object v9, v7

    invoke-direct/range {v9 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1764
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v20, 0x0

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "windowBackgroundWhiteBlueIcon"

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1765
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v13, 0x0

    const-string v17, "listSelectorSDK21"

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1766
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    const-string v26, "windowBackgroundWhiteBlackText"

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v13, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const-string v18, "windowBackgroundWhiteGrayIcon"

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1768
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v22, 0x0

    const-string v26, "listSelectorSDK21"

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1769
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v12, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v12, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const-string v17, "windowBackgroundWhiteBlackText"

    move-object v9, v7

    invoke-direct/range {v9 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v20, 0x0

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v22

    const-string v26, "windowBackgroundWhiteGrayIcon"

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v13, 0x0

    const-string v17, "listSelectorSDK21"

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1772
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    const-string v26, "windowBackgroundWhiteBlackText"

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v13, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const-string v18, "windowBackgroundWhiteGrayIcon"

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1774
    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v7, :cond_1

    .line 1775
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "listSelectorSDK21"

    move-object v8, v7

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1776
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "windowBackgroundWhiteBlackText"

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v27, 0x0

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, "windowBackgroundWhiteGrayIcon"

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1780
    :cond_1
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "listSelectorSDK21"

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1781
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "windowBackgroundWhiteBlackText"

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v13, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const-string v18, "windowBackgroundWhiteGrayIcon"

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1783
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v22, 0x0

    const-string v26, "listSelectorSDK21"

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v12, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v12, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const-string v17, "windowBackgroundWhiteBlackText"

    move-object v9, v7

    invoke-direct/range {v9 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v20, 0x0

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v9, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v22

    const-string v26, "windowBackgroundWhiteGrayIcon"

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v13, 0x0

    const-string v17, "listSelectorSDK21"

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1788
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    const-string v26, "windowBackgroundWhiteBlackText"

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1789
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v8, v13, v5

    const-string v8, "valueTextView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const-string v18, "windowBackgroundWhiteGrayText2"

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1790
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v22, 0x0

    const-string v26, "listSelectorSDK21"

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1791
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v13, v6, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v9, v13, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v14

    const-string v18, "windowBackgroundWhiteBlackText"

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1792
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v21, 0x0

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v11, v10, v5

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x0

    const-string v27, "windowBackgroundWhiteGrayText2"

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v14, 0x0

    const-string v18, "listSelectorSDK21"

    move-object v11, v7

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v11, v10, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v23

    const-string v27, "windowBackgroundWhiteBlackText"

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v13, 0x0

    new-array v14, v6, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v9, v14, v5

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    const-string v19, "windowBackgroundWhiteGrayText2"

    move-object v11, v7

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v23, 0x0

    const-string v27, "windowBackgroundWhiteBlackText"

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1798
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "windowBackgroundWhiteHintText"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1799
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v24, "windowBackgroundWhiteInputField"

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1800
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v11, v8, v9

    const-string v16, "windowBackgroundWhiteInputFieldActivated"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1801
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v24, "windowBackgroundWhiteBlackText"

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const-string v16, "windowBackgroundWhiteHintText"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1804
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v24, "windowBackgroundWhite"

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v16, "windowBackgroundWhite"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1806
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v24, "windowBackgroundWhite"

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->deleteContainer:Landroid/widget/FrameLayout;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v16, "windowBackgroundWhite"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->stickersContainer:Landroid/widget/FrameLayout;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v24, "windowBackgroundWhite"

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1809
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v16, "windowBackgroundWhite"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->settingsTopSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v10, v9, v5

    const-string v24, "windowBackgroundGrayShadow"

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v8, v13, v5

    const/16 v16, 0x0

    const-string v17, "windowBackgroundGrayShadow"

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->deleteInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v10, v9, v5

    const/16 v24, 0x0

    const-string v25, "windowBackgroundGrayShadow"

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1815
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v13, 0x0

    const-string v17, "listSelectorSDK21"

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v20, 0x0

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    const/16 v25, 0x0

    const-string v26, "windowBackgroundWhiteBlackText"

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1817
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v13, v5

    const-string v8, "checkBox"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const-string v18, "switchTrack"

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ChatEditActivity;->signCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v21, 0x0

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v11, v10, v5

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x0

    const-string v27, "switchTrackChecked"

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1820
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v14, 0x0

    const-string v18, "listSelectorSDK21"

    move-object v11, v7

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v23

    const-string v27, "windowBackgroundWhiteRedText5"

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v22, v9

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v13, 0x0

    const-string v17, "listSelectorSDK21"

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1823
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const-string v26, "windowBackgroundWhiteBlackText"

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ChatEditActivity;->stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v13, v6, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v8, v13, v5

    const-string v17, "windowBackgroundGrayShadow"

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1826
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ChatEditActivity;->stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/16 v20, 0x0

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v10, v9, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    const-string v26, "windowBackgroundWhiteGrayText4"

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1828
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const-string v16, "avatar_text"

    move-object v9, v7

    move-object v15, v2

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v14, 0x0

    const-string v16, "avatar_backgroundRed"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1830
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v16, "avatar_backgroundOrange"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v16, "avatar_backgroundViolet"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1832
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v16, "avatar_backgroundGreen"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1833
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v16, "avatar_backgroundCyan"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1834
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v16, "avatar_backgroundBlue"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v16, "avatar_backgroundPink"

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1837
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v24, "undo_background"

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1838
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

    const-string v16, "undo_cancelColor"

    move-object v8, v2

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1839
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/16 v19, 0x0

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Components/UndoView;

    aput-object v9, v8, v5

    const-string v9, "undoTextView"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x0

    const-string v25, "undo_cancelColor"

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
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

    const-string v17, "undo_infoColor"

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1841
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/16 v20, 0x0

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Components/UndoView;

    aput-object v9, v8, v5

    const-string v9, "textPaint"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v22

    const/16 v25, 0x0

    const-string v26, "undo_infoColor"

    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v21, v8

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1842
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v12, v6, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Components/UndoView;

    aput-object v7, v12, v5

    const-string v7, "progressPaint"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v13

    const-string v17, "undo_infoColor"

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1843
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Components/UndoView;

    aput-object v9, v8, v5

    const-string v9, "leftImageView"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v22

    const-string v26, "undo_infoColor"

    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v21, v8

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1845
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v16, "listSelectorSDK21"

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1846
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v8, v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const-string v25, "windowBackgroundWhiteBlackText"

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1847
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v11, 0x0

    new-array v12, v6, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCell;

    aput-object v4, v12, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    const-string v17, "windowBackgroundWhiteGrayIcon"

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    .line 1419
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ImageUpdater;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    const/4 v0, 0x0

    return v0

    .line 371
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->checkDiscard()Z

    move-result v0

    return v0
.end method

.method public onBecomeFullyHidden()V
    .locals 3

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 343
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 10

    .line 254
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 256
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_1

    .line 263
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(JZLjava/util/concurrent/CountDownLatch;ZZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_1

    :cond_0
    return v2

    .line 270
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-wide/16 v3, 0x5

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iput-object p0, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 273
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/ImageUpdater;->setDelegate(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    iput-boolean v3, p0, Lorg/telegram/ui/ChatEditActivity;->signMessages:Z

    .line 275
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    iput-boolean v3, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-nez v3, :cond_4

    .line 276
    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    :goto_1
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->forumUpgradeParticipantsMin:I

    if-lt v0, v3, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_6

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :cond_6
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    .line 277
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 278
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 279
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatAvailableReactionsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_7

    .line 282
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->loadLinksCount()V

    .line 284
    :cond_7
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 304
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->clear()V

    .line 308
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 309
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 310
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatAvailableReactionsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 330
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onPause()V

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 335
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 337
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ImageUpdater;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 318
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 323
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    const/4 v0, 0x1

    .line 324
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->onResume()V

    return-void
.end method

.method public onSuccessDeleteAlbum()V
    .locals 10

    .line 115
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 116
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

    .line 118
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 120
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

    .line 121
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->checkIfFolderEmpty(I)V

    .line 122
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const-class v0, Lorg/telegram/ui/DialogsActivity;

    sget-object v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda32;->INSTANCE:Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda32;

    invoke-static {p0, v0, v1}, Lcom/iMe/utils/extentions/common/BaseFragmentExtKt;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)V

    .line 126
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method public onUploadProgressChanged(F)V
    .locals 1

    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_0

    return-void

    .line 1195
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgress(F)V

    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 2

    .line 1424
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "path"

    .line 1425
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 1428
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1429
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "nameTextView"

    .line 1430
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 2

    .line 1443
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_3

    .line 1445
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez p1, :cond_0

    .line 1446
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1448
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

    .line 1449
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->availableReactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    :cond_3
    return-void
.end method

.method public showConvertTooltip()V
    .locals 5

    .line 1245
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const-wide/16 v1, 0x0

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    return-void
.end method
