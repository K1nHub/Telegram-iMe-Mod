.class public Lorg/telegram/ui/ChannelCreateActivity;
.super Lcom/smedialink/ui/base/mvp/JavaMvpFragment;
.source "ChannelCreateActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelCreateActivity$AlbumModeDelegate;
    }
.end annotation


# static fields
.field private static final observers:[I


# instance fields
.field private adminedChannelCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/AdminedChannelCell;",
            ">;"
        }
    .end annotation
.end field

.field private adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private adminnedChannelsLayout:Landroid/widget/LinearLayout;

.field private albumMode:Z

.field private albumModeDelegate:Lorg/telegram/ui/ChannelCreateActivity$AlbumModeDelegate;

.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarAnimation:Landroid/animation/AnimatorSet;

.field private avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarOverlay:Landroid/view/View;

.field private avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private canCreatePublic:Z

.field private cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private chatId:J

.field private checkReqId:I

.field private checkRunnable:Ljava/lang/Runnable;

.field private checkTextView:Landroid/widget/TextView;

.field private createAfterUpload:Z

.field private currentStep:I

.field private descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private doneButton:Landroid/view/View;

.field private doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

.field private doneButtonDrawableAnimator:Landroid/animation/ValueAnimator;

.field private donePressed:Z

.field private doneRequestId:Ljava/lang/Integer;

.field private editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private enableDoneLoading:Ljava/lang/Runnable;

.field private featureAlbumId:J

.field private forcePublic:Ljava/lang/Boolean;

.field private headerCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private headerCell2:Lorg/telegram/ui/Cells/HeaderCell;

.field private helpTextView:Landroid/widget/TextView;

.field private imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

.field private inputEmojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

.field private inputPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

.field private inputVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

.field private inputVideoPath:Ljava/lang/String;

.field private invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

.field private isGroup:Z

.field private isPrivate:Z

.field private lastCheckName:Ljava/lang/String;

.field private lastNameAvailable:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private linearLayout2:Landroid/widget/LinearLayout;

.field private linkContainer:Landroid/widget/LinearLayout;

.field private loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

.field private loadingAdminedChannels:Z

.field private loadingInvite:Z

.field private nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

.field private nameToSet:Ljava/lang/String;

.field private onFinishListener:Lorg/telegram/messenger/Utilities$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

.field private privateContainer:Landroid/widget/LinearLayout;

.field private publicContainer:Landroid/widget/LinearLayout;

.field private radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

.field private radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

.field private sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private videoTimestamp:D


# direct methods
.method public static synthetic $r8$lambda$1TIXoZ9PFPMEBI_cVL6FO3vYHao(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$loadAdminedChannels$22(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3RIaSxolvtM-NlHg9sMJswV2bsU(Lorg/telegram/ui/ChannelCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$3l0s9V6vcNVkcvy1kxEfxd9UsPk(Lorg/telegram/ui/ChannelCreateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$loadAdminedChannels$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7L6erfB_Tn3CuGVnEKgjJije5zw(Lorg/telegram/ui/ChannelCreateActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$createView$11(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$80-TSfFq2bwCtGnoMLYvNSAbwSA(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Ljava/lang/String;DLorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$didUploadPhoto$17(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Ljava/lang/String;DLorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8YiuiCjcfm6nySHXpzpLttJ7_uQ(Lorg/telegram/ui/ChannelCreateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$createView$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9YARIg_2Fh6usFnVnzYHDpmnHas(Lorg/telegram/ui/ChannelCreateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$createView$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DYW-AY0dwUsvXMPCBzWduwT04Do(Lorg/telegram/ui/ChannelCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$loadAdminedChannels$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$DqtPHDALqln9sDHTpwYDaESgLEc(Lorg/telegram/ui/ChannelCreateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$createView$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HkbeO-DbNm8qr9vHAPMhcoiFPj8(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$new$2(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IpA3SqZwNCi33VrK2W5pek3Z1UE(Lorg/telegram/ui/ChannelCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$getThemeDescriptions$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$JKJf4kJj6muaIWXM5Y5x-0eSih4(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$loadAdminedChannels$20(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JwAWkP3fvRnm4aOcYNpJcrd8Q-U(Lorg/telegram/ui/ChannelCreateActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$updateDoneProgress$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PABvstK1f1FYnO7YtbhOIoB1fiU(Lorg/telegram/ui/ChannelCreateActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$showDoneCancelDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qk4SJ_vEoMPj9nZTGEZ5Xpvdr2I(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$checkUserName$24(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y83KZ5md7ZWak2-P8XfK_VRSsOY(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$new$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZB5lAg7N4D9A5IF9ZJjc0BnmEa0(Lorg/telegram/ui/ChannelCreateActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$createView$9(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZoB6H4AZ-5bLG4CrQ06eYYP5Vsg(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$loadAdminedChannels$23(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bzf0oS6T5CxQAnf0ZTM_n_n6sfM(Lorg/fork/utils/Callbacks$Callback1;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$newInstanceInAlbumMode$0(Lorg/fork/utils/Callbacks$Callback1;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$eIJ9iYN82xwHhzmTkvn51CXtSI4(Lorg/telegram/ui/ChannelCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$createView$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$enLl6npsvsHHf5dNAQCMo1R6psw(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$checkUserName$25(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gNtDHU87F5rABHrsGVl9qilbPWo(Lorg/telegram/ui/ChannelCreateActivity;Lorg/fork/utils/Callbacks$Callback1;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$newInstanceInAlbumMode$1(Lorg/telegram/ui/ChannelCreateActivity;Lorg/fork/utils/Callbacks$Callback1;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$hp5BwHxRHMvjan1MMjKh8LcbqzA(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$checkUserName$26(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iVc0A_IpdIrlRKYLi6OWCdLFnSk(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$generateLink$15(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l9GzBP11aYGGAk8JE4DSDHdCsjo(Lorg/telegram/ui/ChannelCreateActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$createView$12(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lAPh9yZeALezZLRxLGNTzMLpn08(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$createView$7(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qL91kCYLHu6b7ng0N1zYX5KlzDw(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$generateLink$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-Py3GhiFQaUwD_oqtG-7_r_oA8(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$loadAdminedChannels$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xRn4B_VIVc0AkKc-xGcBIFkT2WY(Lorg/telegram/ui/ChannelCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->lambda$showPremiumIncreaseLimitDialog$27()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 105
    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lorg/telegram/ui/ChannelCreateActivity;->observers:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    .line 211
    invoke-direct {p0, p1}, Lcom/smedialink/ui/base/mvp/JavaMvpFragment;-><init>(Landroid/os/Bundle;)V

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    .line 348
    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->enableDoneLoading:Ljava/lang/Runnable;

    const-string v1, "step"

    const/4 v2, 0x0

    .line 212
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    const-string v1, "forcePublic"

    .line 213
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->forcePublic:Ljava/lang/Boolean;

    .line 216
    :cond_0
    iget v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    if-nez v1, :cond_1

    .line 217
    new-instance p1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 218
    new-instance p1, Lorg/telegram/ui/Components/ImageUpdater;

    invoke-direct {p1, v0, v0, v0}, Lorg/telegram/ui/Components/ImageUpdater;-><init>(ZIZ)V

    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    .line 220
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;-><init>()V

    const-string v0, "1"

    .line 221
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->username:Ljava/lang/String;

    .line 222
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 223
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    const-string v1, "canCreatePublic"

    .line 226
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    xor-int/lit8 v1, v0, 0x1

    .line 227
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-nez v0, :cond_2

    .line 229
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->loadAdminedChannels()V

    :cond_2
    const-wide/16 v0, 0x0

    const-string v2, "chat_id"

    .line 232
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->chatId:J

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelCreateActivity;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->showDoneCancelDialog()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastNameAvailable:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/TextView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelCreateActivity;)J
    .locals 2

    .line 100
    iget-wide v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->chatId:J

    return-wide v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastCheckName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ChannelCreateActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/messenger/Utilities$Callback2;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->onFinishListener:Lorg/telegram/messenger/Utilities$Callback2;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChannelCreateActivity;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelCreateActivity;->updateDoneProgress(Z)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelCreateActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/view/View;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;)Z
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelCreateActivity;->checkUserName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/ChannelCreateActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/EditTextEmoji;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->enableDoneLoading:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/ImageUpdater;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->createAfterUpload:Z

    return p1
.end method

.method static synthetic access$702(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelCreateActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private checkAlbumCreated()V
    .locals 6

    .line 130
    iget-wide v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->featureAlbumId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->featureAlbumId:J

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MessagesController;->hasDialog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-wide v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->featureAlbumId:J

    .line 132
    iput-wide v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->featureAlbumId:J

    const/4 v2, 0x0

    .line 133
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)V

    .line 134
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->albumModeDelegate:Lorg/telegram/ui/ChannelCreateActivity$AlbumModeDelegate;

    invoke-interface {v2, v0, v1}, Lorg/telegram/ui/ChannelCreateActivity$AlbumModeDelegate;->didAlbumCreated(J)V

    :cond_0
    return-void
.end method

.method private checkUserName(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1337
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1338
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1340
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1342
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1343
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 1344
    iput-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 1345
    iput-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastCheckName:Ljava/lang/String;

    .line 1346
    iget v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkReqId:I

    if-eqz v1, :cond_1

    .line 1347
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkReqId:I

    invoke-virtual {v1, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1350
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastNameAvailable:Z

    const-string v1, "windowBackgroundWhiteRedText4"

    if-eqz p1, :cond_9

    const-string v3, "_"

    .line 1352
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "LinkInvalid"

    if-nez v4, :cond_8

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 1358
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 1359
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x39

    const/16 v7, 0x30

    if-nez v3, :cond_3

    if-lt v4, v7, :cond_3

    if-gt v4, v6, :cond_3

    .line 1361
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->LinkInvalidStartNumber:I

    const-string v3, "LinkInvalidStartNumber"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1363
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return v0

    :cond_3
    if-lt v4, v7, :cond_4

    if-le v4, v6, :cond_7

    :cond_4
    const/16 v6, 0x61

    if-lt v4, v6, :cond_5

    const/16 v6, 0x7a

    if-le v4, v6, :cond_7

    :cond_5
    const/16 v6, 0x41

    if-lt v4, v6, :cond_6

    const/16 v6, 0x5a

    if-le v4, v6, :cond_7

    :cond_6
    const/16 v6, 0x5f

    if-eq v4, v6, :cond_7

    .line 1367
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->LinkInvalid:I

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1369
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return v0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1353
    :cond_8
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->LinkInvalid:I

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1355
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return v0

    :cond_9
    if-eqz p1, :cond_c

    .line 1374
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_a

    goto :goto_3

    .line 1380
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_b

    .line 1381
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->LinkInvalidLong:I

    const-string v3, "LinkInvalidLong"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1383
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return v0

    .line 1387
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->LinkChecking:I

    const-string v3, "LinkChecking"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1389
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1390
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastCheckName:Ljava/lang/String;

    .line 1391
    new-instance v0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    .line 1427
    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v2

    .line 1375
    :cond_c
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->LinkInvalidShort:I

    const-string v3, "LinkInvalidShort"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1376
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1377
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return v0
.end method

.method private generateLink()V
    .locals 5

    .line 991
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingInvite:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 994
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 998
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 1001
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingInvite:Z

    .line 1002
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;-><init>()V

    .line 1003
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->chatId:J

    neg-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1004
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->admin_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1005
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->limit:I

    .line 1007
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$checkUserName$24(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;)V
    .locals 3

    const/4 v0, 0x0

    .line 1396
    iput v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkReqId:I

    .line 1397
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastCheckName:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_0

    .line 1398
    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p3, :cond_0

    .line 1399
    iget-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget p3, Lorg/telegram/messenger/R$string;->LinkAvailable:I

    const/4 p4, 0x1

    new-array v1, p4, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "LinkAvailable"

    invoke-static {p1, p3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string p2, "windowBackgroundWhiteGreenText"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1401
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1402
    iput-boolean p4, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastNameAvailable:Z

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x4

    const-string p3, "windowBackgroundWhiteRedText4"

    if-eqz p2, :cond_1

    .line 1404
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "USERNAME_INVALID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 1405
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->UsernameInvalidShort:I

    const-string p4, "UsernameInvalidShort"

    invoke-static {p4, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1406
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    .line 1407
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "USERNAME_PURCHASE_AVAILABLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1408
    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->username:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, p1, :cond_2

    .line 1409
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->UsernameInvalidShortPurchase:I

    const-string p3, "UsernameInvalidShortPurchase"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1411
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->UsernameInUsePurchase:I

    const-string p3, "UsernameInUsePurchase"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string p2, "windowBackgroundWhiteGrayText8"

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 1414
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "CHANNELS_ADMIN_PUBLIC_TOO_MUCH"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1415
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1416
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    .line 1417
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->showPremiumIncreaseLimitDialog()V

    goto :goto_1

    .line 1419
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1420
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->LinkInUse:I

    const-string p3, "LinkInUse"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1422
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastNameAvailable:Z

    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic lambda$checkUserName$25(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 1395
    new-instance v6, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda17;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkUserName$26(Ljava/lang/String;)V
    .locals 4

    .line 1392
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;-><init>()V

    .line 1393
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->username:Ljava/lang/String;

    .line 1394
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1395
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;)V

    const/4 p1, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkReqId:I

    return-void
.end method

.method private synthetic lambda$createView$10(Landroid/view/View;)V
    .locals 4

    .line 640
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {p1, v0, v2, v3, v1}, Lorg/telegram/ui/Components/ImageUpdater;->openMenu(ZLjava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;I)V

    .line 660
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 661
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 662
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 717
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 718
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$12(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 744
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButton:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 745
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$13(Landroid/view/View;)V
    .locals 0

    .line 815
    iget-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    if-nez p1, :cond_0

    .line 816
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->showPremiumIncreaseLimitDialog()V

    return-void

    .line 819
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 822
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    .line 823
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V

    return-void
.end method

.method private synthetic lambda$createView$14(Landroid/view/View;)V
    .locals 0

    .line 840
    iget-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 843
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    .line 844
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V

    return-void
.end method

.method private static synthetic lambda$createView$7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$8()V
    .locals 4

    const/4 v0, 0x0

    .line 641
    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 642
    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 643
    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->inputPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 644
    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->inputVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 645
    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->inputVideoPath:Ljava/lang/String;

    .line 646
    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->inputEmojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    const-wide/16 v1, 0x0

    .line 647
    iput-wide v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->videoTimestamp:D

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 648
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/ChannelCreateActivity;->showAvatarProgress(ZZ)V

    .line 649
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v0, v0, v3, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/content/DialogInterface;)V
    .locals 1

    .line 653
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 654
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x56

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 655
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    .line 657
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$didUploadPhoto$17(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Ljava/lang/String;DLorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1107
    :cond_0
    iget-object p1, p7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1108
    iget-object p2, p8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1109
    iget-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-string p4, "50_50"

    invoke-virtual {p2, p1, p4, p3, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 1110
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/ChannelCreateActivity;->showAvatarProgress(ZZ)V

    goto :goto_2

    .line 1086
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->inputPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1087
    iput-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity;->inputVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1088
    iput-object p3, p0, Lorg/telegram/ui/ChannelCreateActivity;->inputEmojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 1089
    iput-object p4, p0, Lorg/telegram/ui/ChannelCreateActivity;->inputVideoPath:Ljava/lang/String;

    .line 1090
    iput-wide p5, p0, Lorg/telegram/ui/ChannelCreateActivity;->videoTimestamp:D

    .line 1091
    iget-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->createAfterUpload:Z

    if-eqz p1, :cond_3

    .line 1092
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_2

    .line 1094
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1095
    iput-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1097
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1100
    :cond_2
    :goto_1
    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelCreateActivity;->updateDoneProgress(Z)V

    .line 1101
    iput-boolean v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z

    .line 1102
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 1104
    :cond_3
    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/ChannelCreateActivity;->showAvatarProgress(ZZ)V

    .line 1105
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$generateLink$15(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1009
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;

    .line 1010
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1012
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingInvite:Z

    .line 1013
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    iget-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setLink(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$generateLink$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1007
    new-instance v0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$28()V
    .locals 4

    .line 1470
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1471
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1473
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1474
    instance-of v3, v2, Lorg/telegram/ui/Cells/AdminedChannelCell;

    if-eqz v3, :cond_0

    .line 1475
    check-cast v2, Lorg/telegram/ui/Cells/AdminedChannelCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/AdminedChannelCell;->update()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$18()V
    .locals 1

    const/4 v0, 0x1

    .line 1316
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    .line 1317
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1318
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ChannelCreateActivity;->checkUserName(Ljava/lang/String;)Z

    .line 1320
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V

    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1314
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    .line 1315
    new-instance p1, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$20(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1310
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;-><init>()V

    .line 1311
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    const-string p1, ""

    .line 1312
    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->username:Ljava/lang/String;

    .line 1313
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda25;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    const/16 v0, 0x40

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$21(Landroid/view/View;)V
    .locals 8

    .line 1299
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    .line 1300
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->getCurrentChannel()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 1301
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1302
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v2, "AppName"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1303
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    const/4 v2, 0x1

    const-string v3, "/"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_0

    .line 1304
    sget v1, Lorg/telegram/messenger/R$string;->RevokeLinkAlert:I

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v3, v5, v2

    const-string v2, "RevokeLinkAlert"

    invoke-static {v2, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1306
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->RevokeLinkAlertChannel:I

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v3, v5, v2

    const-string v2, "RevokeLinkAlertChannel"

    invoke-static {v2, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1308
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1309
    sget v1, Lorg/telegram/messenger/R$string;->RevokeButton:I

    const-string v2, "RevokeButton"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1325
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$22(Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    const/4 v0, 0x0

    .line 1286
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedChannels:Z

    if-eqz p1, :cond_4

    .line 1288
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1291
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1292
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1294
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1295
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    const/4 v1, 0x0

    .line 1297
    :goto_1
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1298
    new-instance v2, Lorg/telegram/ui/Cells/AdminedChannelCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-direct {v2, v3, v4, v0, v0}, Lorg/telegram/ui/Cells/AdminedChannelCell;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;ZI)V

    .line 1327
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v2, v3, v5}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChannel(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 1328
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    const/16 v5, 0x48

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1331
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$23(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1285
    new-instance p2, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda18;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 223
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "CHANNELS_ADMIN_PUBLIC_TOO_MUCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 223
    new-instance p1, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda20;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 1

    const/4 v0, 0x1

    .line 348
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChannelCreateActivity;->updateDoneProgress(Z)V

    return-void
.end method

.method private static synthetic lambda$newInstanceInAlbumMode$0(Lorg/fork/utils/Callbacks$Callback1;J)V
    .locals 0

    .line 121
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$newInstanceInAlbumMode$1(Lorg/telegram/ui/ChannelCreateActivity;Lorg/fork/utils/Callbacks$Callback1;J)V
    .locals 1

    .line 121
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p0}, Lorg/fork/controller/AlbumsController;->getInstance(I)Lorg/fork/controller/AlbumsController;

    move-result-object p0

    new-instance v0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda11;-><init>(Lorg/fork/utils/Callbacks$Callback1;J)V

    invoke-virtual {p0, p2, p3, v0}, Lorg/fork/controller/AlbumsController;->addAlbum(JLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showDoneCancelDialog$4(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p2, 0x0

    .line 336
    iput-boolean p2, p0, Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z

    .line 337
    iput-boolean p2, p0, Lorg/telegram/ui/ChannelCreateActivity;->createAfterUpload:Z

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 339
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneRequestId:Ljava/lang/Integer;

    .line 342
    :cond_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChannelCreateActivity;->updateDoneProgress(Z)V

    .line 343
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showPremiumIncreaseLimitDialog$27()V
    .locals 1

    const/4 v0, 0x1

    .line 1459
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    .line 1460
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V

    return-void
.end method

.method private synthetic lambda$updateDoneProgress$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CrossfadeDrawable;->setProgress(F)V

    .line 361
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private loadAdminedChannels()V
    .locals 3

    .line 1279
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedChannels:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1282
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedChannels:Z

    .line 1283
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V

    .line 1284
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;-><init>()V

    .line 1285
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static newInstanceInAlbumMode(Lorg/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ChannelCreateActivity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/telegram/ui/ChannelCreateActivity;"
        }
    .end annotation

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "step"

    const/4 v2, 0x0

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, v1, Lorg/telegram/ui/ChannelCreateActivity;->albumMode:Z

    .line 121
    new-instance v0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda28;

    invoke-direct {v0, v1, p0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Lorg/fork/utils/Callbacks$Callback1;)V

    iput-object v0, v1, Lorg/telegram/ui/ChannelCreateActivity;->albumModeDelegate:Lorg/telegram/ui/ChannelCreateActivity$AlbumModeDelegate;

    return-object v1
.end method

.method private showAvatarProgress(ZZ)V
    .locals 8

    .line 1121
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v0, :cond_0

    return-void

    .line 1124
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1126
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 1127
    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 1130
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 1132
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-array p2, p2, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v3, [F

    aput v0, v7, v2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v2

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    aput v1, v6, v2

    .line 1135
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v3

    .line 1134
    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 1137
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1138
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1140
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1142
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-array p2, p2, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v3, [F

    aput v1, v7, v2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, p2, v2

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    aput v0, v6, v2

    .line 1143
    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v3

    .line 1142
    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1145
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1146
    iget-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/ChannelCreateActivity$10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChannelCreateActivity$10;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1165
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_4
    const/4 p2, 0x4

    if-eqz p1, :cond_5

    .line 1168
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1169
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1170
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 1171
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1173
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1174
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1175
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 1176
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private showDoneCancelDialog()V
    .locals 3

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 331
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 332
    sget v1, Lorg/telegram/messenger/R$string;->StopLoadingTitle:I

    const-string v2, "StopLoadingTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 333
    sget v1, Lorg/telegram/messenger/R$string;->StopLoading:I

    const-string v2, "StopLoading"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 334
    sget v1, Lorg/telegram/messenger/R$string;->WaitMore:I

    const-string v2, "WaitMore"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 335
    sget v1, Lorg/telegram/messenger/R$string;->Stop:I

    const-string v2, "Stop"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 345
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private showPremiumIncreaseLimitDialog()V
    .locals 4

    .line 1453
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1456
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;II)V

    const/4 v1, 0x1

    .line 1457
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentIsChannel:Z

    .line 1458
    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onSuccessRunnable:Ljava/lang/Runnable;

    .line 1462
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updateDoneProgress(Z)V
    .locals 5

    if-nez p1, :cond_0

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->enableDoneLoading:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    if-eqz v0, :cond_4

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButtonDrawableAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 358
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    aput v4, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButtonDrawableAnimator:Landroid/animation/ValueAnimator;

    .line 359
    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButtonDrawableAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43480000    # 200.0f

    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float p1, p1, v1

    float-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButtonDrawableAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButtonDrawableAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method private updatePrivatePublic()V
    .locals 7

    .line 1018
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    if-nez v0, :cond_0

    return-void

    .line 1021
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    const-string v1, "windowBackgroundGrayShadow"

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    if-nez v0, :cond_2

    .line 1022
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v4, Lorg/telegram/messenger/R$string;->ChangePublicLimitReached:I

    const-string v5, "ChangePublicLimitReached"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1024
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 1025
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedChannels:Z

    if-eqz v0, :cond_1

    .line 1028
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1030
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v3, v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1031
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 1033
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v4, v5, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 1039
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteGrayText4"

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1040
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 1041
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1043
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v4, v5, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1045
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1046
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1047
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isGroup:Z

    const-string v1, "ChannelInviteLinkTitle"

    const-string v4, "ChannelLinkTitle"

    if-eqz v0, :cond_5

    .line 1048
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-boolean v5, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v5, :cond_3

    sget v5, Lorg/telegram/messenger/R$string;->MegaPrivateLinkHelp:I

    const-string v6, "MegaPrivateLinkHelp"

    goto :goto_0

    :cond_3
    sget v5, Lorg/telegram/messenger/R$string;->MegaUsernameHelp:I

    const-string v6, "MegaUsernameHelp"

    :goto_0
    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v5, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v5, :cond_4

    sget v4, Lorg/telegram/messenger/R$string;->ChannelInviteLinkTitle:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->ChannelLinkTitle:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1051
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-boolean v5, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v5, :cond_6

    sget v5, Lorg/telegram/messenger/R$string;->ChannelPrivateLinkHelp:I

    const-string v6, "ChannelPrivateLinkHelp"

    goto :goto_2

    :cond_6
    sget v5, Lorg/telegram/messenger/R$string;->ChannelUsernameHelp:I

    const-string v6, "ChannelUsernameHelp"

    :goto_2
    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v5, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v5, :cond_7

    sget v4, Lorg/telegram/messenger/R$string;->ChannelInviteLinkTitle:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    sget v1, Lorg/telegram/messenger/R$string;->ChannelLinkTitle:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1055
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_6

    :cond_9
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_7

    :cond_a
    const/4 v1, 0x7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :goto_7
    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1057
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LinkActionView;->setLink(Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-nez v1, :cond_c

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v2, 0x0

    :cond_c
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1060
    :goto_9
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 1061
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 1062
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1063
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

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

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 371
    invoke-super/range {p0 .. p1}, Lcom/smedialink/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 372
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    .line 376
    :cond_0
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 377
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 379
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$1;

    invoke-direct {v1, v8}, Lorg/telegram/ui/ChannelCreateActivity$1;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 459
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 460
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 461
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "actionBarDefaultIcon"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 462
    new-instance v2, Lorg/telegram/ui/Components/CrossfadeDrawable;

    new-instance v4, Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Components/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, v8, Lorg/telegram/ui/ChannelCreateActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/16 v1, 0x38

    .line 463
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget v3, Lorg/telegram/messenger/R$string;->Done:I

    const-string v4, "Done"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v2, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->doneButton:Landroid/view/View;

    .line 465
    iget v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    const-string v12, "windowBackgroundWhiteHintText"

    const-string v15, "windowBackgroundWhiteBlackText"

    const-string v4, "windowBackgroundWhite"

    const/4 v5, 0x0

    const/16 v16, 0x3

    const/4 v2, -0x2

    const/4 v1, -0x1

    const/4 v11, 0x0

    if-nez v0, :cond_15

    .line 467
    iget-boolean v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->albumMode:Z

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v17, Lorg/telegram/messenger/R$string;->cloud_albums_intro_button:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 470
    :cond_1
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->NewChannel:I

    const-string v6, "NewChannel"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 472
    :goto_0
    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$2;

    invoke-direct {v3, v8, v9}, Lorg/telegram/ui/ChannelCreateActivity$2;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Landroid/content/Context;)V

    .line 591
    sget-object v0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda8;->INSTANCE:Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda8;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 592
    iput-object v3, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 593
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 594
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 596
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 597
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 598
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 601
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    new-instance v0, Lorg/telegram/ui/ChannelCreateActivity$3;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/ChannelCreateActivity$3;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x20

    .line 620
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 621
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v20, v15

    const-wide/16 v14, 0x5

    invoke-virtual {v0, v14, v15, v5, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 623
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v21, 0x40

    const/16 v22, 0x40

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    const/4 v4, 0x5

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    :goto_1
    or-int/lit8 v23, v4, 0x30

    const/16 v4, 0x10

    if-eqz v2, :cond_3

    const/16 v24, 0x0

    goto :goto_2

    :cond_3
    const/16 v24, 0x10

    :goto_2
    const/16 v25, 0xc

    if-eqz v2, :cond_4

    const/16 v26, 0x10

    goto :goto_3

    :cond_4
    const/16 v26, 0x0

    :goto_3
    const/16 v27, 0xc

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v2, 0x55000000

    .line 626
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 628
    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$4;

    invoke-direct {v2, v8, v9, v0}, Lorg/telegram/ui/ChannelCreateActivity$4;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v2, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarOverlay:Landroid/view/View;

    .line 637
    sget v0, Lorg/telegram/messenger/R$string;->ChatSetPhotoOrVideo:I

    const-string v14, "ChatSetPhotoOrVideo"

    invoke-static {v14, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarOverlay:Landroid/view/View;

    const/16 v21, 0x40

    const/16 v22, 0x40

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5

    const/4 v14, 0x5

    goto :goto_4

    :cond_5
    const/4 v14, 0x3

    :goto_4
    or-int/lit8 v23, v14, 0x30

    if-eqz v2, :cond_6

    const/16 v24, 0x0

    goto :goto_5

    :cond_6
    const/16 v24, 0x10

    :goto_5
    const/16 v25, 0xc

    if-eqz v2, :cond_7

    const/16 v26, 0x10

    goto :goto_6

    :cond_7
    const/16 v26, 0x0

    :goto_6
    const/16 v27, 0xc

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarOverlay:Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v8}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->camera:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v14, 0x3c

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v24

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v0

    move/from16 v22, v2

    invoke-direct/range {v21 .. v27}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 667
    new-instance v0, Lorg/telegram/ui/ChannelCreateActivity$5;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/ChannelCreateActivity$5;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    .line 680
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 681
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v2, v8, Lorg/telegram/ui/ChannelCreateActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 682
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 683
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 684
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v0, v2, v11, v11, v14}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 685
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v21, 0x40

    const/16 v22, 0x40

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    const/4 v14, 0x5

    goto :goto_7

    :cond_8
    const/4 v14, 0x3

    :goto_7
    or-int/lit8 v23, v14, 0x30

    const/16 v14, 0xf

    if-eqz v2, :cond_9

    const/16 v24, 0x0

    goto :goto_8

    :cond_9
    const/16 v24, 0xf

    :goto_8
    const/16 v25, 0xc

    if-eqz v2, :cond_a

    const/16 v26, 0xf

    goto :goto_9

    :cond_a
    const/16 v26, 0x0

    :goto_9
    const/16 v27, 0xc

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    new-instance v0, Lorg/telegram/ui/ChannelCreateActivity$6;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/ChannelCreateActivity$6;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v2, 0x1e

    .line 694
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 695
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 696
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RadialProgressView;->setNoProgress(Z)V

    .line 697
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v21, 0x40

    const/16 v22, 0x40

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_b

    const/4 v2, 0x5

    goto :goto_a

    :cond_b
    const/4 v2, 0x3

    :goto_a
    or-int/lit8 v23, v2, 0x30

    if-eqz v1, :cond_c

    const/16 v24, 0x0

    goto :goto_b

    :cond_c
    const/16 v24, 0x10

    :goto_b
    const/16 v25, 0xc

    if-eqz v1, :cond_d

    const/16 v26, 0x10

    goto :goto_c

    :cond_d
    const/16 v26, 0x0

    :goto_c
    const/16 v27, 0xc

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    invoke-direct {v8, v11, v11}, Lorg/telegram/ui/ChannelCreateActivity;->showAvatarProgress(ZZ)V

    .line 701
    new-instance v14, Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v4, 0x0

    const/4 v15, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v3

    const/4 v7, 0x5

    move-object/from16 v3, p0

    move-object v13, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    iput-object v14, v8, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    .line 703
    iget-boolean v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->albumMode:Z

    if-eqz v0, :cond_e

    .line 704
    sget v0, Lorg/telegram/messenger/R$string;->cloud_albums_name_hint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 706
    :cond_e
    sget v0, Lorg/telegram/messenger/R$string;->EnterChannelName:I

    const-string v1, "EnterChannelName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 707
    :goto_d
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->nameToSet:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 708
    iget-object v1, v8, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iput-object v13, v8, Lorg/telegram/ui/ChannelCreateActivity;->nameToSet:Ljava/lang/String;

    :cond_f
    new-array v0, v10, [Landroid/text/InputFilter;

    .line 712
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v11

    .line 713
    iget-object v1, v8, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setFilters([Landroid/text/InputFilter;)V

    .line 714
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 715
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 716
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, v8}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 723
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x10

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_10

    const/16 v25, 0x5

    goto :goto_e

    :cond_10
    const/16 v3, 0x60

    const/16 v25, 0x60

    :goto_e
    const/16 v26, 0x0

    if-eqz v1, :cond_11

    const/16 v3, 0x60

    const/16 v27, 0x60

    goto :goto_f

    :cond_11
    const/16 v27, 0x5

    :goto_f
    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v1, 0x41900000    # 18.0f

    .line 726
    invoke-virtual {v0, v10, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 727
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 728
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 729
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 730
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, "windowBackgroundWhiteInputField"

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "windowBackgroundWhiteInputFieldActivated"

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "windowBackgroundWhiteRedText3"

    invoke-virtual {v8, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    .line 731
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v11, v11, v11, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 732
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_12

    const/4 v3, 0x5

    goto :goto_10

    :cond_12
    const/4 v3, 0x3

    :goto_10
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 733
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v1, 0x2c001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 734
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    new-array v0, v10, [Landroid/text/InputFilter;

    .line 736
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x78

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v11

    .line 737
    iget-object v1, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 738
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/messenger/R$string;->DescriptionPlaceholder:I

    const-string v2, "DescriptionPlaceholder"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 740
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 741
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 742
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x18

    const/16 v20, 0x12

    const/16 v21, 0x18

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, v8}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 750
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$7;

    invoke-direct {v1, v8}, Lorg/telegram/ui/ChannelCreateActivity$7;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 767
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    .line 768
    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 769
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText8"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 770
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_13

    const/4 v3, 0x5

    goto :goto_11

    :cond_13
    const/4 v3, 0x3

    :goto_11
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 771
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->DescriptionInfo:I

    const-string v2, "DescriptionInfo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, v8, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    const/4 v9, -0x2

    const/4 v10, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_14

    const/4 v11, 0x5

    goto :goto_12

    :cond_14
    const/4 v11, 0x3

    :goto_12
    const/16 v12, 0x18

    const/16 v13, 0xa

    const/16 v14, 0x18

    const/16 v15, 0x14

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    iget-boolean v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->albumMode:Z

    if-eqz v0, :cond_24

    .line 775
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 776
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, v8, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_1a

    :cond_15
    move-object v13, v5

    move-object/from16 v20, v15

    const/4 v7, 0x5

    if-ne v0, v10, :cond_24

    .line 780
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v9}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 781
    check-cast v0, Landroid/widget/ScrollView;

    .line 782
    invoke-virtual {v0, v10}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 783
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 784
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 785
    iget-object v3, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v5, v8, Lorg/telegram/ui/ChannelCreateActivity;->chatId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 788
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    const/4 v0, 0x1

    goto :goto_13

    :cond_17
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->isGroup:Z

    .line 789
    iget-object v3, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_18

    sget v0, Lorg/telegram/messenger/R$string;->GroupSettingsTitle:I

    const-string v5, "GroupSettingsTitle"

    goto :goto_14

    :cond_18
    sget v0, Lorg/telegram/messenger/R$string;->ChannelSettingsTitle:I

    const-string v5, "ChannelSettingsTitle"

    :goto_14
    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v3, "windowBackgroundGray"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 791
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 793
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v3, 0x17

    invoke-direct {v0, v9, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->headerCell2:Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v3, 0x2e

    .line 794
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    .line 795
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->headerCell2:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 796
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->headerCell2:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v3, v8, Lorg/telegram/ui/ChannelCreateActivity;->isGroup:Z

    if-eqz v3, :cond_19

    sget v3, Lorg/telegram/messenger/R$string;->GroupTypeHeader:I

    const-string v5, "GroupTypeHeader"

    goto :goto_15

    :cond_19
    sget v3, Lorg/telegram/messenger/R$string;->ChannelTypeHeader:I

    const-string v5, "ChannelTypeHeader"

    :goto_15
    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, v8, Lorg/telegram/ui/ChannelCreateActivity;->headerCell2:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 799
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 800
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 801
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 802
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    new-instance v0, Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 805
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 806
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->forcePublic:Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 807
    iput-boolean v10, v8, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    .line 809
    :cond_1a
    iget-boolean v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->isGroup:Z

    if-eqz v0, :cond_1b

    .line 810
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v3, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v5, "MegaPublic"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$string;->MegaPublicInfo:I

    const-string v6, "MegaPublicInfo"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v8, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    xor-int/2addr v6, v10

    invoke-virtual {v0, v3, v5, v11, v6}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_16

    .line 812
    :cond_1b
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v5, "ChannelPublic"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$string;->ChannelPublicInfo:I

    const-string v6, "ChannelPublicInfo"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v8, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    xor-int/2addr v6, v10

    invoke-virtual {v0, v3, v5, v11, v6}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 814
    :goto_16
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v8}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->forcePublic:Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 826
    :cond_1c
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v8, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    :cond_1d
    new-instance v0, Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 830
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 831
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->forcePublic:Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 832
    iput-boolean v11, v8, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    .line 834
    :cond_1e
    iget-boolean v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->isGroup:Z

    if-eqz v0, :cond_1f

    .line 835
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v3, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v5, "MegaPrivate"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$string;->MegaPrivateInfo:I

    const-string v6, "MegaPrivateInfo"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v8, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    invoke-virtual {v0, v3, v5, v11, v6}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_17

    .line 837
    :cond_1f
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v5, "ChannelPrivate"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$string;->ChannelPrivateInfo:I

    const-string v6, "ChannelPrivateInfo"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v8, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    invoke-virtual {v0, v3, v5, v11, v6}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 839
    :goto_17
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, v8}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->forcePublic:Ljava/lang/Boolean;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_21

    .line 847
    :cond_20
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v8, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    :cond_21
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 851
    iget-object v3, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    .line 854
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 855
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 856
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, v8, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 859
    iget-object v3, v8, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 861
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    .line 862
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 863
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v3, v8, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    const/16 v22, -0x1

    const/16 v23, 0x24

    const/16 v24, 0x15

    const/16 v25, 0x7

    const/16 v26, 0x15

    const/16 v27, 0x0

    invoke-static/range {v22 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v10, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 868
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 869
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 870
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 871
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setLines(I)V

    .line 872
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 873
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 874
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v11, v11, v11, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 875
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 876
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v3, 0x28000

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 877
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 878
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-object v3, v8, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v5, 0x24

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v3, 0x41900000    # 18.0f

    .line 881
    invoke-virtual {v0, v10, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 882
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 883
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 884
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 885
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setLines(I)V

    .line 886
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 887
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v11, v11, v11, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 888
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 889
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v3, 0x28020

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 890
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 891
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelUsernamePlaceholder:I

    const-string v6, "ChannelUsernamePlaceholder"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 893
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 894
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 895
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-object v3, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity$8;

    invoke-direct {v3, v8}, Lorg/telegram/ui/ChannelCreateActivity$8;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 913
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Landroid/widget/LinearLayout;

    .line 914
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 915
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v3, v8, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Landroid/widget/LinearLayout;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    new-instance v12, Lorg/telegram/ui/Components/LinkActionView;

    const/4 v3, 0x0

    iget-wide v5, v8, Lorg/telegram/ui/ChannelCreateActivity;->chatId:J

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v8, Lorg/telegram/ui/ChannelCreateActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v18

    move-object v0, v12

    const/4 v2, -0x1

    move-object/from16 v1, p1

    const/4 v15, -0x1

    move-object/from16 v2, p0

    move-object/from16 v19, v4

    move-wide v4, v5

    move v6, v14

    const/4 v14, 0x5

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/LinkActionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZ)V

    iput-object v12, v8, Lorg/telegram/ui/ChannelCreateActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    .line 919
    invoke-virtual {v12, v10}, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption(Z)V

    .line 920
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    invoke-virtual {v0, v11, v13}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;)V

    .line 921
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Landroid/widget/LinearLayout;

    iget-object v1, v8, Lorg/telegram/ui/ChannelCreateActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 923
    new-instance v0, Lorg/telegram/ui/ChannelCreateActivity$9;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/ChannelCreateActivity$9;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteLinkText"

    .line 960
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 961
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteLinkSelection"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 962
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 963
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_22

    const/4 v3, 0x5

    goto :goto_18

    :cond_22
    const/4 v3, 0x3

    :goto_18
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 964
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 965
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v11, v2, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 966
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v1, v8, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v20, -0x2

    const/16 v21, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_23

    const/16 v22, 0x5

    goto :goto_19

    :cond_23
    const/16 v22, 0x3

    :goto_19
    const/16 v23, 0x12

    const/16 v24, 0x3

    const/16 v25, 0x12

    const/16 v26, 0x7

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 969
    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string v2, "windowBackgroundGrayShadow"

    invoke-static {v9, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 970
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, -0x2

    invoke-static {v15, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    .line 973
    iget-object v2, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {v15, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 975
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    .line 976
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 977
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 978
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-static {v15, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v2, "windowBackgroundGrayShadow"

    .line 981
    invoke-static {v9, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 982
    iget-object v0, v8, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, v8, Lorg/telegram/ui/ChannelCreateActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v15, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 984
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V

    .line 987
    :cond_24
    :goto_1a
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1231
    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne v0, v2, :cond_0

    .line 1232
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChannelCreateActivity;->checkAlbumCreated()V

    goto/16 :goto_4

    .line 1234
    :cond_0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    .line 1235
    iget-object v0, v1, Lorg/telegram/ui/ChannelCreateActivity;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_1

    .line 1237
    :try_start_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1238
    iput-object v3, v1, Lorg/telegram/ui/ChannelCreateActivity;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1240
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1243
    :cond_1
    :goto_0
    invoke-direct {v1, v4}, Lorg/telegram/ui/ChannelCreateActivity;->updateDoneProgress(Z)V

    .line 1244
    iput-boolean v4, v1, Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z

    goto/16 :goto_4

    .line 1245
    :cond_2
    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    if-ne v0, v2, :cond_8

    .line 1246
    iget-object v0, v1, Lorg/telegram/ui/ChannelCreateActivity;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_3

    .line 1248
    :try_start_1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1249
    iput-object v3, v1, Lorg/telegram/ui/ChannelCreateActivity;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1251
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1254
    :cond_3
    :goto_1
    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1255
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "step"

    const/4 v13, 0x1

    .line 1256
    invoke-virtual {v0, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "chat_id"

    .line 1257
    invoke-virtual {v0, v2, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1258
    iget-boolean v2, v1, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    const-string v3, "canCreatePublic"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1259
    iget-object v2, v1, Lorg/telegram/ui/ChannelCreateActivity;->forcePublic:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 1260
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "forcePublic"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1262
    :cond_4
    iget-object v2, v1, Lorg/telegram/ui/ChannelCreateActivity;->inputPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v2, :cond_6

    iget-object v2, v1, Lorg/telegram/ui/ChannelCreateActivity;->inputVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v2, :cond_6

    iget-object v2, v1, Lorg/telegram/ui/ChannelCreateActivity;->inputEmojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move-wide/from16 v18, v14

    goto :goto_3

    .line 1263
    :cond_6
    :goto_2
    iget v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, v1, Lorg/telegram/ui/ChannelCreateActivity;->inputPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v7, v1, Lorg/telegram/ui/ChannelCreateActivity;->inputVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v8, v1, Lorg/telegram/ui/ChannelCreateActivity;->inputEmojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iget-wide v9, v1, Lorg/telegram/ui/ChannelCreateActivity;->videoTimestamp:D

    iget-object v11, v1, Lorg/telegram/ui/ChannelCreateActivity;->inputVideoPath:Ljava/lang/String;

    iget-object v12, v1, Lorg/telegram/ui/ChannelCreateActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v3, v1, Lorg/telegram/ui/ChannelCreateActivity;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/16 v16, 0x0

    move-object/from16 v17, v3

    move-wide v3, v14

    move-object/from16 v13, v17

    move-wide/from16 v18, v14

    move-object/from16 v14, v16

    invoke-virtual/range {v2 .. v14}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(JLorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/Runnable;)V

    .line 1266
    :goto_3
    iget-boolean v2, v1, Lorg/telegram/ui/ChannelCreateActivity;->albumMode:Z

    if-eqz v2, :cond_7

    move-wide/from16 v2, v18

    neg-long v2, v2

    .line 1267
    iput-wide v2, v1, Lorg/telegram/ui/ChannelCreateActivity;->featureAlbumId:J

    .line 1268
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChannelCreateActivity;->checkAlbumCreated()V

    return-void

    .line 1272
    :cond_7
    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 1273
    iget-object v0, v1, Lorg/telegram/ui/ChannelCreateActivity;->onFinishListener:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ChannelCreateActivity;->setOnFinishListener(Lorg/telegram/messenger/Utilities$Callback2;)V

    const/4 v0, 0x1

    .line 1274
    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_8
    :goto_4
    return-void
.end method

.method public didStartUpload(Z)V
    .locals 1

    .line 1076
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1079
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

    .line 1084
    new-instance v10, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda19;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p9

    move-object/from16 v5, p5

    move-wide v6, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Ljava/lang/String;DLorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissCurrentDialog()V
    .locals 2

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ImageUpdater;->dismissCurrentDialog(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    return-void
.end method

.method public dismissDialogOnPause(Landroid/app/Dialog;)Z
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ImageUpdater;->dismissDialogOnPause(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissDialogOnPause(Landroid/app/Dialog;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getInitialSearchString()Ljava/lang/String;
    .locals 1

    .line 1117
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1467
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1469
    new-instance v10, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda27;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    .line 1481
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v14, v3, v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "windowBackgroundGray"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v27, "actionBarDefault"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v14, 0x0

    const-string v18, "actionBarDefaultIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v22, 0x0

    const-string v26, "actionBarDefaultTitle"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v18, "actionBarDefaultSelector"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v26, "windowBackgroundWhiteBlackText"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const-string v18, "windowBackgroundWhiteHintText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v26, "windowBackgroundWhiteInputField"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1492
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v13, v3, v4

    const-string v18, "windowBackgroundWhiteInputFieldActivated"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v26, "windowBackgroundWhiteBlackText"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const-string v18, "windowBackgroundWhiteHintText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1495
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v26, "windowBackgroundWhiteInputField"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v13, v3, v4

    const-string v18, "windowBackgroundWhiteInputFieldActivated"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1497
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v26, "windowBackgroundWhiteGrayText8"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v18, "windowBackgroundWhite"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v26, "windowBackgroundWhite"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v18, "windowBackgroundGrayShadow"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "textView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v23

    const/16 v21, 0x0

    const/16 v26, 0x0

    const-string v27, "windowBackgroundWhiteBlueHeader"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->headerCell2:Lorg/telegram/ui/Cells/HeaderCell;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v3, v14, v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    const/16 v18, 0x0

    const-string v19, "windowBackgroundWhiteBlueHeader"

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1504
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v23, 0x0

    const-string v27, "windowBackgroundWhiteBlackText"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v18, "windowBackgroundWhiteHintText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v21, v5, v8

    const/16 v22, 0x0

    const-string v26, "windowBackgroundWhiteRedText4"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v13, v3, v5

    const-string v18, "windowBackgroundWhiteGrayText8"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v21, v5, v8

    const-string v26, "windowBackgroundWhiteGreenText"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1510
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v3, v14, v7

    const-string v18, "windowBackgroundGrayShadow"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v4, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v8, v5, v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x0

    const-string v27, "windowBackgroundWhiteGrayText4"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v3, v14, v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    const-string v19, "windowBackgroundWhiteRedText4"

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v4, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v8, v5, v7

    const-string v27, "windowBackgroundGrayShadow"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v5

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v18, "windowBackgroundWhite"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Landroid/widget/LinearLayout;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v26, "listSelectorSDK21"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1517
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Landroid/widget/LinearLayout;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/TextBlockCell;

    aput-object v3, v14, v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    const/16 v18, 0x0

    const-string v19, "windowBackgroundWhiteBlackText"

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v8, v5, v7

    const-string v8, "progressBar"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v24

    const/16 v22, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "progressCircle"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v5

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v18, "listSelectorSDK21"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v5, v4, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v8, v5, v7

    const-string v8, "radioButton"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const-string v27, "radioBackground"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v3, v14, v7

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    const-string v19, "radioBackgroundChecked"

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1522
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v4, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v9, v5, v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x0

    const-string v28, "windowBackgroundWhiteBlackText"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v5

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v3, v14, v7

    const-string v3, "valueTextView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v15

    const-string v19, "windowBackgroundWhiteGrayText2"

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v27, "listSelectorSDK21"

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v14, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v14, v7

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v15

    const-string v19, "radioBackground"

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v11, v9, v7

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x0

    const-string v28, "radioBackgroundChecked"

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move-object/from16 v23, v9

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v14, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v14, v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v15

    const-string v19, "windowBackgroundWhiteBlackText"

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1528
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v6, v4, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v8, v6, v7

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    const-string v28, "windowBackgroundWhiteGrayText2"

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v3, v14, v7

    const-string v3, "nameTextView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v15

    const-string v19, "windowBackgroundWhiteBlackText"

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v6, v5, v7

    const-string v6, "statusTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    const-string v28, "windowBackgroundWhiteGrayText"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v5

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1532
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v3, v14, v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v15

    const-string v19, "windowBackgroundWhiteLinkText"

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v5, v4, v7

    const-string v5, "deleteButton"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const-string v28, "windowBackgroundWhiteGrayText"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1534
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v9, "avatar_text"

    move-object v2, v11

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v7, 0x0

    const-string v9, "avatar_backgroundRed"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1536
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundOrange"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1537
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundViolet"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundGreen"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1539
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundCyan"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundBlue"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1541
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundPink"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ImageUpdater;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 242
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/ChannelCreateActivity;->observers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 243
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 244
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 245
    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 246
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->generateLink()V

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_1

    .line 249
    iput-object p0, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 250
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/ImageUpdater;->setDelegate(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    .line 252
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 257
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 259
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneRequestId:Ljava/lang/Integer;

    .line 262
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/ChannelCreateActivity;->observers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 263
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 264
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->clear()V

    .line 268
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 288
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onPause()V

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onPause()V

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->onPause()V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ImageUpdater;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 276
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onResume()V

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->onResume()V

    :cond_1
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1222
    iget p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 1223
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 1224
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboard()V

    :cond_0
    return-void
.end method

.method public onUploadProgressChanged(F)V
    .locals 1

    .line 1068
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_0

    return-void

    .line 1071
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgress(F)V

    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 2

    .line 1205
    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    if-nez v0, :cond_2

    .line 1206
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    const-string v1, "path"

    .line 1207
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    :cond_0
    const-string v0, "nameTextView"

    .line 1209
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1211
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 1212
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1214
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameToSet:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 2

    .line 1190
    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    if-nez v0, :cond_1

    .line 1191
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "path"

    .line 1192
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 1195
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1196
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "nameTextView"

    .line 1197
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setOnFinishListener(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->onFinishListener:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method
