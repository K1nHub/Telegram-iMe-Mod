.class public Lorg/telegram/ui/PrivacyControlActivity;
.super Lcom/iMe/ui/base/mvp/JavaMvpFragment;
.source "PrivacyControlActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;
.implements Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PrivacyControlActivity$DiffCallback;,
        Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;,
        Lorg/telegram/ui/PrivacyControlActivity$MessageCell;
    }
.end annotation


# instance fields
.field private alwaysShareRow:I

.field private avatarForRest:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field private avatarForRestPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

.field private cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private currentAccountRankAccess:I

.field private currentMinus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private currentPhotoForRestRow:I

.field private currentPlus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private currentSubType:I

.field private currentType:I

.field private detailRow:I

.field private doneButton:Landroid/view/View;

.field private everybodyRow:I

.field imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

.field private initialAccountRankAccess:I

.field private initialMinus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private initialPlus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private initialRulesSubType:I

.field private initialRulesType:I

.field private listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private messageCell:Lorg/telegram/ui/PrivacyControlActivity$MessageCell;

.field private messageRow:I

.field private myContactsRow:I

.field private neverShareRow:I

.field private nobodyRow:I

.field private oldAvatarView:Lorg/telegram/ui/Components/BackupImageView;

.field private oldPhotoCell:Lorg/telegram/ui/Cells/TextCell;

.field private p2pDetailRow:I

.field private p2pRow:I

.field private p2pSectionRow:I

.field private phoneContactsRow:I

.field private phoneDetailRow:I

.field private phoneEverybodyRow:I

.field private phoneSectionRow:I

.field private photoForRestDescriptionRow:I

.field private photoForRestRow:I

.field public presenter:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field private prevSubtypeContacts:Z

.field private rankDetailsRow:I

.field private rankEverybodyRow:I

.field private rankNobodyRow:I

.field private rankSectionRow:I

.field private rowCount:I

.field private rulesType:I

.field private sectionRow:I

.field private setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

.field private shareDetailRow:I

.field private shareSectionRow:I

.field private walletAccess:I

.field private walletWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$28psJwKeUHlYta_PrVjNwiOBx0k(Lorg/telegram/ui/PrivacyControlActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$createView$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4Hsf-jq5UvLIfnGx0tVaknRjBqs(Lorg/telegram/ui/PrivacyControlActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$createView$9(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$A7m98C3G_7rDXIj-KWVu1Tsyiuc(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$createView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$Aef4sk2o-vjZOyQ9hLuJxDUgYCg(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$didUploadPhoto$3(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DS0coIra4SjyVcnlLkDfHy6-VlM(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$didUploadPhoto$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JgUdOtA0XdrRMIMPcQfWTrZ2dd0(Lorg/telegram/ui/PrivacyControlActivity;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$createView$7(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PJMW5aRLI2UkCMB2JElaULwH9Fo(Lorg/telegram/ui/PrivacyControlActivity;Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$processDone$14(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RR0J1SXG7oVlzmzT0rt_VRFXd2Y(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$didUploadPhoto$1(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TsZS95A7cpGACAa941nwHQgh2oA(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$applyCurrentPrivacySettings$12(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eS7Q0AF1NQmpigtiAEgZRpvjQ54()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$createView$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$eyqHTa3HXLgzmZNTqKOZ8EJYzTg(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$applyCurrentPrivacySettings$13(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ieg87AO4HvvhECZ2Rz60eFRkr-M(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$providePresenter$0()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kbM6E06vRx-Z_d6oJoKAmhTTKL8(Lorg/telegram/ui/PrivacyControlActivity;ILjava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$createView$8(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$sCFkMRXieBrNMsGJxbqAL8IPl6I(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$applyCurrentPrivacySettings$10(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$veVXps_l4iR3nhXrDI2moFkizAM(Lorg/telegram/ui/PrivacyControlActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$checkDiscard$15(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xQtoYs5jdNswT4NRajEEZ195q6o(Lorg/telegram/ui/PrivacyControlActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$checkDiscard$16(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zOfAIO13plrrDjB9q2wruPSdZ_k(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;->lambda$applyCurrentPrivacySettings$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 462
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 466
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/JavaMvpFragment;-><init>()V

    const/4 v0, 0x1

    .line 122
    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->walletAccess:I

    .line 123
    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialAccountRankAccess:I

    .line 124
    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentAccountRankAccess:I

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->walletWhitelist:Ljava/util/List;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialPlus:Ljava/util/ArrayList;

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialMinus:Ljava/util/ArrayList;

    .line 467
    iput p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    if-eqz p2, :cond_0

    .line 469
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ContactsController;->loadPrivacySettings()V

    .line 471
    :cond_0
    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 472
    new-instance p1, Lorg/telegram/ui/Components/ImageUpdater;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, v0}, Lorg/telegram/ui/Components/ImageUpdater;-><init>(ZIZ)V

    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    .line 473
    iput-object p0, p1, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 474
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/ImageUpdater;->setDelegate(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    .line 475
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide v0, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    .line 476
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->hasFallbackPhoto(Lorg/telegram/tgnet/TLRPC$UserFull;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 477
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v0, 0x3e8

    invoke-static {p2, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 479
    iput-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRest:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 480
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRestPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankNobodyRow:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankEverybodyRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->p2pRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPhotoForRestRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->photoForRestDescriptionRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->photoForRestRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/PrivacyControlActivity$MessageCell;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->messageCell:Lorg/telegram/ui/PrivacyControlActivity$MessageCell;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    return-object p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/Cells/TextCell;)Lorg/telegram/ui/Cells/TextCell;
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRest:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/Components/RLottieDrawable;)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->oldAvatarView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/Components/BackupImageView;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->oldAvatarView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->oldPhotoCell:Lorg/telegram/ui/Cells/TextCell;

    return-object p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/Cells/TextCell;)Lorg/telegram/ui/Cells/TextCell;
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->oldPhotoCell:Lorg/telegram/ui/Cells/TextCell;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRestPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankDetailsRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PrivacyControlActivity;)Z
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->checkDiscard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->detailRow:I

    return p0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/PrivacyControlActivity;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->prevSubtypeContacts:Z

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentSubType:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->p2pDetailRow:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankSectionRow:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->sectionRow:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->p2pSectionRow:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneSectionRow:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentAccountRankAccess:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->processDone()V

    return-void
.end method

.method static synthetic access$5000(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneContactsRow:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneEverybodyRow:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->messageRow:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneDetailRow:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->shareSectionRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->shareDetailRow:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method private applyCurrentPrivacySettings()V
    .locals 11

    .line 771
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;-><init>()V

    .line 772
    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    .line 773
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneNumber;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneNumber;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    .line 774
    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-ne v1, v4, :cond_9

    .line 775
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;-><init>()V

    .line 776
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyAddedByPhone;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyAddedByPhone;-><init>()V

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    .line 777
    iget v5, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentSubType:I

    if-nez v5, :cond_0

    .line 778
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 780
    :cond_0
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    :goto_0
    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PrivacyControlActivity;)V

    invoke-virtual {v5, v1, v6, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_1

    :cond_1
    const/4 v5, 0x5

    if-ne v1, v5, :cond_2

    .line 790
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyForwards;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyForwards;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    :cond_2
    const/4 v5, 0x4

    if-ne v1, v5, :cond_3

    .line 792
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyProfilePhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyProfilePhoto;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    :cond_3
    const/16 v5, 0x9

    if-ne v1, v5, :cond_4

    .line 794
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyAbout;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyAbout;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    :cond_4
    if-ne v1, v2, :cond_5

    .line 796
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneP2P;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneP2P;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    :cond_5
    if-ne v1, v3, :cond_6

    .line 798
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    :cond_6
    if-ne v1, v4, :cond_7

    .line 800
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    :cond_7
    const/16 v5, 0x8

    if-ne v1, v5, :cond_8

    .line 802
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyVoiceMessages;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyVoiceMessages;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 804
    :cond_8
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    .line 806
    :cond_9
    :goto_1
    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    const/4 v5, 0x0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 807
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;-><init>()V

    .line 808
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowChatParticipants;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowChatParticipants;-><init>()V

    move v7, v5

    .line 809
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_c

    .line 810
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 811
    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 812
    iget v10, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v10, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 814
    iget v9, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 816
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 820
    :cond_a
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowChatParticipants;->chats:Ljava/util/ArrayList;

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 823
    :cond_c
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_d
    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-eq v1, v4, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 827
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;-><init>()V

    .line 828
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowChatParticipants;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowChatParticipants;-><init>()V

    move v7, v5

    .line 829
    :goto_4
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_10

    .line 830
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 831
    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 832
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v10, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 834
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 836
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 840
    :cond_e
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowChatParticipants;->chats:Ljava/util/ArrayList;

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 843
    :cond_10
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    :cond_11
    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-nez v1, :cond_12

    .line 847
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    if-ne v1, v4, :cond_13

    .line 849
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowAll;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowAll;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    if-ne v1, v3, :cond_14

    .line 851
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_6
    const/4 v1, 0x0

    .line 854
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 855
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 856
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 857
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 860
    :cond_15
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v2, v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private checkDiscard()Z
    .locals 3

    .line 1246
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1247
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1248
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsApplyChanges:I

    const-string v2, "UserRestrictionsApplyChanges"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1249
    sget v1, Lorg/telegram/messenger/R$string;->PrivacySettingsChangedAlert:I

    const-string v2, "PrivacySettingsChangedAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1250
    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    const-string v2, "ApplyTheme"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PrivacyControlActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1251
    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    const-string v2, "PassportDiscard"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PrivacyControlActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1252
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkPrivacy()V
    .locals 13

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    .line 893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    .line 894
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ContactsController;->getPrivacyRules(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 896
    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x65

    if-ne v1, v5, :cond_0

    .line 897
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->walletAccess:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->walletWhitelist:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8

    :cond_0
    if-eqz v0, :cond_10

    .line 900
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v1, -0x1

    move v6, v1

    move v5, v4

    .line 904
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_9

    .line 905
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    .line 906
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;

    if-eqz v8, :cond_2

    .line 907
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;

    .line 908
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_8

    .line 909
    iget-object v10, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 911
    :cond_2
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;

    if-eqz v8, :cond_3

    .line 912
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;

    .line 913
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v4

    :goto_2
    if-ge v9, v8, :cond_8

    .line 914
    iget-object v10, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 916
    :cond_3
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    if-eqz v8, :cond_4

    .line 917
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    .line 918
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 919
    :cond_4
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    if-eqz v8, :cond_5

    .line 920
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    .line 921
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_5
    if-ne v6, v1, :cond_8

    .line 923
    instance-of v6, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    if-eqz v6, :cond_6

    move v6, v4

    goto :goto_3

    .line 925
    :cond_6
    instance-of v6, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    if-eqz v6, :cond_7

    move v6, v3

    goto :goto_3

    :cond_7
    move v6, v2

    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v6, :cond_e

    if-ne v6, v1, :cond_a

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    goto :goto_5

    :cond_a
    if-eq v6, v2, :cond_d

    if-ne v6, v1, :cond_b

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    goto :goto_4

    :cond_b
    if-eq v6, v3, :cond_c

    if-ne v6, v1, :cond_f

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 937
    :cond_c
    iput v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    goto :goto_6

    .line 935
    :cond_d
    :goto_4
    iput v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    goto :goto_6

    .line 933
    :cond_e
    :goto_5
    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    .line 939
    :cond_f
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 940
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 941
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 942
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_8

    .line 901
    :cond_10
    :goto_7
    iput v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    .line 946
    :cond_11
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialPlus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 947
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialMinus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 948
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialRulesType:I

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialPlus:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 950
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialMinus:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 952
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_18

    .line 953
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ContactsController;->getPrivacyRules(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 954
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_a

    :cond_12
    move v1, v4

    .line 957
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_17

    .line 958
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    .line 959
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    if-eqz v6, :cond_13

    .line 960
    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentSubType:I

    goto :goto_b

    .line 962
    :cond_13
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    if-eqz v6, :cond_14

    .line 963
    iput v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentSubType:I

    goto :goto_b

    .line 965
    :cond_14
    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;

    if-eqz v5, :cond_15

    .line 966
    iput v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentSubType:I

    goto :goto_b

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 955
    :cond_16
    :goto_a
    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentSubType:I

    .line 971
    :cond_17
    :goto_b
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentSubType:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialRulesSubType:I

    .line 974
    :cond_18
    invoke-direct {p0, v4}, Lorg/telegram/ui/PrivacyControlActivity;->updateRows(Z)V

    return-void
.end method

.method private hasChanges()Z
    .locals 4

    .line 979
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialAccountRankAccess:I

    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentAccountRankAccess:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 983
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialRulesType:I

    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-eq v0, v1, :cond_1

    return v2

    .line 986
    :cond_1
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    if-ne v1, v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialRulesSubType:I

    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentSubType:I

    if-eq v0, v1, :cond_2

    return v2

    .line 989
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialMinus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    return v2

    .line 992
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialPlus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    return v2

    .line 995
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialPlus:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 996
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 997
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialPlus:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 1000
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialMinus:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialMinus:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$applyCurrentPrivacySettings$10(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    if-nez p1, :cond_0

    .line 784
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;

    .line 785
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$applyCurrentPrivacySettings$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 782
    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$applyCurrentPrivacySettings$12(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 863
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 866
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 869
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;

    .line 870
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->users:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 871
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 872
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iget p3, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V

    .line 873
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_1

    .line 875
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->showErrorAlert()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$applyCurrentPrivacySettings$13(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 860
    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkDiscard$15(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1250
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$16(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1251
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$4()V
    .locals 5

    const/4 v0, 0x0

    .line 601
    iput-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRest:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 602
    iput-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRestPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 603
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 604
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 608
    :cond_0
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 609
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 610
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 611
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->updateAvatarForRestInfo()V

    .line 612
    invoke-direct {p0, v3}, Lorg/telegram/ui/PrivacyControlActivity;->updateRows(Z)V

    .line 614
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    .line 615
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    .line 616
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    .line 617
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v1, v2, [B

    .line 619
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 622
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V

    .line 623
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$createView$5()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/content/DialogInterface;)V
    .locals 1

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x56

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 635
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    .line 637
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$7(ILjava/util/ArrayList;)V
    .locals 2

    .line 690
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 691
    iput-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    .line 692
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 693
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    .line 697
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 698
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 701
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->updateDoneButton()V

    .line 702
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$createView$8(ILjava/util/ArrayList;Z)V
    .locals 2

    .line 708
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 709
    iput-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    .line 711
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 712
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    .line 718
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 719
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 723
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->updateDoneButton()V

    .line 724
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;I)V
    .locals 8

    .line 581
    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankNobodyRow:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p1, :cond_16

    iget v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankEverybodyRow:I

    if-ne p2, v2, :cond_0

    goto/16 :goto_9

    .line 595
    :cond_0
    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPhotoForRestRow:I

    if-ne p2, p1, :cond_1

    .line 596
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget p1, Lorg/telegram/messenger/R$string;->RemovePublicPhoto:I

    const-string p2, "RemovePublicPhoto"

    .line 597
    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lorg/telegram/messenger/R$string;->RemovePhotoForRestDescription:I

    const-string p2, "RemovePhotoForRestDescription"

    .line 598
    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget p1, Lorg/telegram/messenger/R$string;->Remove:I

    const-string p2, "Remove"

    .line 599
    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PrivacyControlActivity;)V

    const/4 v7, 0x0

    .line 596
    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createSimpleAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 624
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 625
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 626
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->redPositive()V

    goto/16 :goto_a

    .line 628
    :cond_1
    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->photoForRestRow:I

    if-ne p2, p1, :cond_2

    .line 629
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz p1, :cond_19

    .line 630
    sget-object p2, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda9;->INSTANCE:Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda9;

    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PrivacyControlActivity;)V

    invoke-virtual {p1, v0, p2, v1, v0}, Lorg/telegram/ui/Components/ImageUpdater;->openMenu(ZLjava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;I)V

    .line 640
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 641
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 p2, 0x2b

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 642
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_a

    .line 644
    :cond_2
    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I

    if-eq p2, p1, :cond_12

    iget v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I

    if-eq p2, v2, :cond_12

    iget v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I

    if-ne p2, v2, :cond_3

    goto/16 :goto_7

    .line 659
    :cond_3
    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneContactsRow:I

    if-eq p2, p1, :cond_f

    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneEverybodyRow:I

    if-ne p2, p1, :cond_4

    goto/16 :goto_5

    .line 672
    :cond_4
    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I

    if-eq p2, p1, :cond_6

    iget v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I

    if-ne p2, v2, :cond_5

    goto :goto_0

    .line 728
    :cond_5
    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->p2pRow:I

    if-ne p2, p1, :cond_19

    .line 729
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    :cond_6
    :goto_0
    if-ne p2, p1, :cond_7

    .line 675
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    goto :goto_1

    .line 677
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    :goto_1
    move-object v4, p1

    .line 679
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/16 v2, 0x65

    if-eqz p1, :cond_b

    .line 680
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 681
    iget v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I

    if-ne p2, v3, :cond_8

    const-string v3, "isNeverShare"

    goto :goto_2

    :cond_8
    const-string v3, "isAlwaysShare"

    :goto_2
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 682
    iget v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    if-eqz v3, :cond_9

    move v0, v1

    :cond_9
    const-string v3, "chatAddType"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 684
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    if-ne v0, v2, :cond_a

    const-string v0, "isOnlyUsers"

    .line 685
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 688
    :cond_a
    new-instance v0, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 689
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/PrivacyControlActivity;I)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/GroupCreateActivity;->setDelegate(Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;)V

    .line 704
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 706
    :cond_b
    new-instance p1, Lorg/telegram/ui/PrivacyUsersActivity;

    const/4 v3, 0x0

    iget v5, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    if-eqz v5, :cond_c

    const/4 v6, 0x4

    if-eq v5, v6, :cond_c

    const/16 v6, 0x9

    if-eq v5, v6, :cond_c

    move v6, v1

    goto :goto_3

    :cond_c
    move v6, v0

    :goto_3
    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I

    if-ne p2, v7, :cond_d

    move v7, v1

    goto :goto_4

    :cond_d
    move v7, v0

    :goto_4
    if-ne v5, v2, :cond_e

    move v0, v1

    :cond_e
    move-object v2, p1

    move v5, v6

    move v6, v7

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/PrivacyUsersActivity;-><init>(ILjava/util/ArrayList;ZZZ)V

    .line 707
    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/PrivacyControlActivity;I)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PrivacyUsersActivity;->setDelegate(Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;)V

    .line 726
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_a

    .line 661
    :cond_f
    :goto_5
    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneEverybodyRow:I

    if-ne p2, p1, :cond_10

    goto :goto_6

    :cond_10
    move v0, v1

    .line 666
    :goto_6
    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentSubType:I

    if-ne v0, p1, :cond_11

    return-void

    .line 669
    :cond_11
    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentSubType:I

    .line 670
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->updateDoneButton()V

    .line 671
    invoke-direct {p0, v1}, Lorg/telegram/ui/PrivacyControlActivity;->updateRows(Z)V

    goto :goto_a

    :cond_12
    :goto_7
    if-ne p2, p1, :cond_13

    move v0, v1

    goto :goto_8

    .line 648
    :cond_13
    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I

    if-ne p2, p1, :cond_14

    goto :goto_8

    :cond_14
    const/4 v0, 0x2

    .line 653
    :goto_8
    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-ne v0, p1, :cond_15

    return-void

    .line 656
    :cond_15
    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    .line 657
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->updateDoneButton()V

    .line 658
    invoke-direct {p0, v1}, Lorg/telegram/ui/PrivacyControlActivity;->updateRows(Z)V

    goto :goto_a

    :cond_16
    :goto_9
    if-ne p2, p1, :cond_17

    move v0, v1

    .line 588
    :cond_17
    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentAccountRankAccess:I

    if-ne v0, p1, :cond_18

    return-void

    .line 591
    :cond_18
    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentAccountRankAccess:I

    .line 592
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->updateDoneButton()V

    .line 593
    invoke-direct {p0, v1}, Lorg/telegram/ui/PrivacyControlActivity;->updateRows(Z)V

    :cond_19
    :goto_a
    return-void
.end method

.method private synthetic lambda$didUploadPhoto$1(Lorg/telegram/tgnet/TLObject;)V
    .locals 9

    if-eqz p1, :cond_1

    .line 254
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;

    .line 255
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    .line 256
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x400000

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 257
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 258
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 259
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 261
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 262
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v1, 0x3e8

    invoke-static {p1, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRest:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v1, :cond_0

    .line 264
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 265
    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRest:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v4, v5, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    .line 266
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRest:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRest:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "@50_50"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    invoke-virtual {v5, v1, v4, v0, v3}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRest:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_1

    .line 273
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p1

    .line 274
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRest:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 275
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$didUploadPhoto$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 252
    new-instance p2, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$3(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 2

    .line 229
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRest:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRestPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 231
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->updateAvatarForRestInfo()V

    if-nez p2, :cond_0

    if-eqz p3, :cond_4

    .line 233
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;-><init>()V

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 235
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 236
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/2addr p2, v1

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    :cond_1
    if-eqz p3, :cond_2

    .line 239
    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 240
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 p2, p2, 0x2

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    .line 241
    iput-wide p4, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video_start_ts:D

    or-int/lit8 p2, p2, 0x4

    .line 242
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    :cond_2
    if-eqz p6, :cond_3

    .line 245
    iput-object p6, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video_emoji_markup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 246
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    .line 248
    :cond_3
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->fallback:Z

    .line 249
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    .line 252
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PrivacyControlActivity;)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 280
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    .line 281
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;-><init>()V

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 282
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 283
    iget-object p1, p7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 284
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 285
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 286
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide p3, p2, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    .line 287
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->PhotoForRestTooltip:I

    const-string p4, "PhotoForRestTooltip"

    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    const/4 p1, 0x0

    .line 289
    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacyControlActivity;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$processDone$14(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1234
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->applyCurrentPrivacySettings()V

    .line 1235
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "privacyAlertShowed"

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private synthetic lambda$providePresenter$0()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 115
    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method private processDone()V
    .locals 4

    .line 1212
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1217
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 1218
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->processWalletPrivacyChanges()V

    return-void

    .line 1222
    :cond_1
    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 1223
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "privacyAlertShowed"

    .line 1224
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1226
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1227
    iget v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1228
    sget v2, Lorg/telegram/messenger/R$string;->WhoCanAddMeInfo:I

    const-string v3, "WhoCanAddMeInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1230
    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->CustomHelp:I

    const-string v3, "CustomHelp"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1232
    :goto_0
    sget v2, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v3, "AppName"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1233
    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    const-string v3, "OK"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PrivacyControlActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1237
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1238
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1242
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->applyCurrentPrivacySettings()V

    return-void
.end method

.method private processWalletPrivacyChanges()V
    .locals 7

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->presenter:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialPlus:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialRulesType:I

    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    iget v5, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialAccountRankAccess:I

    iget v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentAccountRankAccess:I

    invoke-virtual/range {v0 .. v6}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->savePrivacySettings(Ljava/util/ArrayList;Ljava/util/ArrayList;IIII)V

    :cond_0
    return-void
.end method

.method private setMessageText()V
    .locals 5

    .line 1172
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->messageCell:Lorg/telegram/ui/PrivacyControlActivity$MessageCell;

    if-eqz v0, :cond_2

    .line 1173
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity$MessageCell;->access$1000(Lorg/telegram/ui/PrivacyControlActivity$MessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1174
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    const-wide/16 v1, 0x1

    if-nez v0, :cond_0

    .line 1175
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->messageCell:Lorg/telegram/ui/PrivacyControlActivity$MessageCell;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity$MessageCell;->access$1100(Lorg/telegram/ui/PrivacyControlActivity$MessageCell;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->PrivacyForwardsEverybody:I

    const-string v4, "PrivacyForwardsEverybody"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/HintView;->setOverrideText(Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->messageCell:Lorg/telegram/ui/PrivacyControlActivity$MessageCell;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity$MessageCell;->access$1000(Lorg/telegram/ui/PrivacyControlActivity$MessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->messageCell:Lorg/telegram/ui/PrivacyControlActivity$MessageCell;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity$MessageCell;->access$1100(Lorg/telegram/ui/PrivacyControlActivity$MessageCell;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->PrivacyForwardsNobody:I

    const-string v2, "PrivacyForwardsNobody"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setOverrideText(Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->messageCell:Lorg/telegram/ui/PrivacyControlActivity$MessageCell;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity$MessageCell;->access$1000(Lorg/telegram/ui/PrivacyControlActivity$MessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_0

    .line 1181
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->messageCell:Lorg/telegram/ui/PrivacyControlActivity$MessageCell;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity$MessageCell;->access$1100(Lorg/telegram/ui/PrivacyControlActivity$MessageCell;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->PrivacyForwardsContacts:I

    const-string v4, "PrivacyForwardsContacts"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/HintView;->setOverrideText(Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->messageCell:Lorg/telegram/ui/PrivacyControlActivity$MessageCell;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity$MessageCell;->access$1000(Lorg/telegram/ui/PrivacyControlActivity$MessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1184
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->messageCell:Lorg/telegram/ui/PrivacyControlActivity$MessageCell;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity$MessageCell;->access$1200(Lorg/telegram/ui/PrivacyControlActivity$MessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->forceResetMessageObject()V

    :cond_2
    return-void
.end method

.method private showErrorAlert()V
    .locals 3

    .line 881
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 884
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 885
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v2, "AppName"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 886
    sget v1, Lorg/telegram/messenger/R$string;->PrivacyFloodControlError:I

    const-string v2, "PrivacyFloodControlError"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 887
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 888
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updateAvatarForRestInfo()V
    .locals 5

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_1

    .line 295
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRest:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 296
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SetPhotoForRest:I

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "SetPhotoForRest"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextCell;->setNeedDivider(Z)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->UpdatePhotoForRest:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "UpdatePhotoForRest"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setNeedDivider(Z)V

    .line 303
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->oldAvatarView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRest:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v1, :cond_3

    .line 304
    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRestPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v3, 0x0

    const-string v4, "50_50"

    if-eqz v2, :cond_2

    .line 305
    invoke-static {v1, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_1

    .line 307
    :cond_2
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateDoneButton()V
    .locals 5

    .line 765
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->hasChanges()Z

    move-result v0

    .line 766
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 767
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private updateRows(Z)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1011
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity$DiffCallback;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/PrivacyControlActivity$DiffCallback;-><init>(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/PrivacyControlActivity$1;)V

    .line 1012
    iget-object v0, v1, Lorg/telegram/ui/PrivacyControlActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PrivacyControlActivity$DiffCallback;->fillPositions(Landroid/util/SparseIntArray;)V

    .line 1013
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, v1, Lorg/telegram/ui/PrivacyControlActivity$DiffCallback;->oldRowCount:I

    move-object v0, v1

    :cond_0
    const/4 v1, -0x1

    .line 1015
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->photoForRestRow:I

    .line 1016
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPhotoForRestRow:I

    .line 1017
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->photoForRestDescriptionRow:I

    const/4 v2, 0x0

    .line 1018
    iput v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    .line 1019
    iget v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    const/4 v6, 0x0

    add-int/2addr v6, v5

    .line 1020
    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->messageRow:I

    goto :goto_0

    .line 1022
    :cond_1
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->messageRow:I

    .line 1024
    :goto_0
    iget v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->sectionRow:I

    add-int/lit8 v6, v7, 0x1

    .line 1025
    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I

    const/16 v7, 0x65

    if-ne v3, v7, :cond_2

    .line 1028
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v6, 0x1

    .line 1030
    iput v8, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I

    :goto_1
    const/4 v6, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eq v3, v7, :cond_4

    if-eq v3, v8, :cond_4

    const/16 v10, 0x9

    if-eq v3, v10, :cond_4

    if-eqz v3, :cond_4

    if-eq v3, v9, :cond_4

    const/4 v10, 0x3

    if-eq v3, v10, :cond_4

    if-eq v3, v4, :cond_4

    if-eq v3, v6, :cond_4

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    if-ne v3, v5, :cond_3

    goto :goto_2

    .line 1045
    :cond_3
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I

    goto :goto_3

    .line 1043
    :cond_4
    :goto_2
    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v10, v4, 0x1

    iput v10, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I

    :goto_3
    if-ne v3, v6, :cond_5

    .line 1047
    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-ne v4, v5, :cond_5

    .line 1048
    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneDetailRow:I

    add-int/lit8 v4, v6, 0x1

    .line 1049
    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneSectionRow:I

    add-int/lit8 v6, v4, 0x1

    .line 1050
    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneEverybodyRow:I

    add-int/lit8 v4, v6, 0x1

    .line 1051
    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneContactsRow:I

    goto :goto_4

    .line 1053
    :cond_5
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneDetailRow:I

    .line 1054
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneSectionRow:I

    .line 1055
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneEverybodyRow:I

    .line 1056
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneContactsRow:I

    .line 1058
    :goto_4
    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->detailRow:I

    if-ne v3, v7, :cond_6

    .line 1060
    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-nez v4, :cond_6

    .line 1061
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->shareSectionRow:I

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v6, 0x1

    .line 1063
    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->shareSectionRow:I

    :goto_5
    if-ne v3, v7, :cond_7

    .line 1065
    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-ne v4, v5, :cond_7

    .line 1066
    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I

    goto :goto_7

    .line 1068
    :cond_7
    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-eq v4, v5, :cond_9

    if-ne v4, v9, :cond_8

    goto :goto_6

    .line 1071
    :cond_8
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I

    goto :goto_7

    .line 1069
    :cond_9
    :goto_6
    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I

    :goto_7
    if-ne v3, v7, :cond_a

    .line 1075
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I

    goto :goto_9

    .line 1077
    :cond_a
    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-eqz v4, :cond_c

    if-ne v4, v9, :cond_b

    goto :goto_8

    .line 1080
    :cond_b
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I

    goto :goto_9

    .line 1078
    :cond_c
    :goto_8
    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I

    :goto_9
    if-ne v3, v7, :cond_d

    .line 1083
    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-nez v4, :cond_d

    .line 1084
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->shareSectionRow:I

    goto :goto_a

    .line 1086
    :cond_d
    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->shareDetailRow:I

    :goto_a
    if-ne v3, v9, :cond_e

    .line 1088
    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->p2pSectionRow:I

    add-int/lit8 v4, v6, 0x1

    .line 1089
    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->p2pRow:I

    add-int/lit8 v6, v4, 0x1

    .line 1090
    iput v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->p2pDetailRow:I

    goto :goto_b

    .line 1092
    :cond_e
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->p2pSectionRow:I

    .line 1093
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->p2pRow:I

    .line 1094
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->p2pDetailRow:I

    :goto_b
    if-ne v3, v8, :cond_11

    .line 1097
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_f

    iget v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-eq v3, v9, :cond_f

    if-ne v3, v5, :cond_11

    .line 1098
    :cond_f
    iget v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->photoForRestRow:I

    .line 1099
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->avatarForRest:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_10

    add-int/lit8 v3, v4, 0x1

    .line 1100
    iput v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPhotoForRestRow:I

    .line 1102
    :cond_10
    iget v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->photoForRestDescriptionRow:I

    .line 1106
    :cond_11
    iget v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    if-ne v3, v7, :cond_12

    .line 1107
    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankSectionRow:I

    add-int/lit8 v1, v3, 0x1

    .line 1108
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankEverybodyRow:I

    add-int/lit8 v3, v1, 0x1

    .line 1109
    iput v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankNobodyRow:I

    add-int/lit8 v1, v3, 0x1

    .line 1110
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankDetailsRow:I

    goto :goto_c

    .line 1112
    :cond_12
    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankDetailsRow:I

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankNobodyRow:I

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankEverybodyRow:I

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankSectionRow:I

    .line 1115
    :goto_c
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->setMessageText()V

    .line 1117
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    if-eqz v1, :cond_22

    if-eqz p1, :cond_21

    .line 1119
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v1, v2

    :goto_d
    if-ge v1, p1, :cond_20

    .line 1121
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1122
    instance-of v4, v3, Lorg/telegram/ui/Cells/RadioCell;

    if-nez v4, :cond_13

    goto/16 :goto_16

    .line 1125
    :cond_13
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-nez v4, :cond_14

    goto/16 :goto_16

    .line 1129
    :cond_14
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    .line 1130
    check-cast v3, Lorg/telegram/ui/Cells/RadioCell;

    .line 1132
    iget v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankEverybodyRow:I

    if-eq v4, v6, :cond_1d

    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->rankNobodyRow:I

    if-ne v4, v7, :cond_15

    goto :goto_13

    .line 1141
    :cond_15
    iget v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I

    if-eq v4, v6, :cond_19

    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I

    if-eq v4, v7, :cond_19

    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I

    if-ne v4, v7, :cond_16

    goto :goto_10

    .line 1153
    :cond_16
    iget v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->phoneContactsRow:I

    if-ne v4, v6, :cond_17

    move v4, v5

    goto :goto_e

    :cond_17
    move v4, v2

    .line 1158
    :goto_e
    iget v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentSubType:I

    if-ne v6, v4, :cond_18

    move v4, v5

    goto :goto_f

    :cond_18
    move v4, v2

    :goto_f
    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto :goto_16

    :cond_19
    :goto_10
    if-ne v4, v6, :cond_1a

    move v4, v2

    goto :goto_11

    .line 1145
    :cond_1a
    iget v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I

    if-ne v4, v6, :cond_1b

    move v4, v9

    goto :goto_11

    :cond_1b
    move v4, v5

    .line 1150
    :goto_11
    iget v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-ne v6, v4, :cond_1c

    move v4, v5

    goto :goto_12

    :cond_1c
    move v4, v2

    :goto_12
    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto :goto_16

    :cond_1d
    :goto_13
    if-ne v4, v6, :cond_1e

    move v4, v2

    goto :goto_14

    :cond_1e
    move v4, v5

    .line 1139
    :goto_14
    iget v6, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentAccountRankAccess:I

    if-ne v6, v4, :cond_1f

    move v4, v5

    goto :goto_15

    :cond_1f
    move v4, v2

    :goto_15
    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1162
    :cond_20
    iget-object p1, v0, Lorg/telegram/ui/PrivacyControlActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PrivacyControlActivity$DiffCallback;->fillPositions(Landroid/util/SparseIntArray;)V

    .line 1163
    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1164
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_17

    .line 1166
    :cond_21
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_22
    :goto_17
    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 1

    .line 1260
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->checkDiscard()Z

    move-result v0

    return v0
.end method

.method public synthetic canFinishFragment()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$canFinishFragment(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 510
    invoke-super {p0, p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 511
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 512
    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity$MessageCell;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PrivacyControlActivity$MessageCell;-><init>(Lorg/telegram/ui/PrivacyControlActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->messageCell:Lorg/telegram/ui/PrivacyControlActivity$MessageCell;

    .line 515
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 518
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    const/16 v3, 0x65

    if-ne v0, v3, :cond_1

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_crypto_privacy_toolbar_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PrivacyPhone:I

    const-string v3, "PrivacyPhone"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PrivacyForwards:I

    const-string v3, "PrivacyForwards"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PrivacyProfilePhoto:I

    const-string v3, "PrivacyProfilePhoto"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PrivacyBio:I

    const-string v3, "PrivacyBio"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PrivacyP2P:I

    const-string v3, "PrivacyP2P"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 532
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->Calls:I

    const-string v3, "Calls"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    if-ne v0, v2, :cond_8

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->GroupsAndChannels:I

    const-string v3, "GroupsAndChannels"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PrivacyVoiceMessages:I

    const-string v3, "PrivacyVoiceMessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 538
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PrivacyLastSeen:I

    const-string v3, "PrivacyLastSeen"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 540
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PrivacyControlActivity$1;-><init>(Lorg/telegram/ui/PrivacyControlActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 553
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 554
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    const/16 v3, 0x38

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v4, Lorg/telegram/messenger/R$string;->Done:I

    const-string v5, "Done"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    .line 555
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->hasChanges()Z

    move-result v0

    .line 556
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_a

    move v5, v3

    goto :goto_1

    :cond_a
    move v5, v4

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 557
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    if-eqz v0, :cond_b

    move v5, v3

    goto :goto_2

    :cond_b
    move v5, v4

    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 558
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    move v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 559
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 561
    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;-><init>(Lorg/telegram/ui/PrivacyControlActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    .line 563
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 564
    check-cast v0, Landroid/widget/FrameLayout;

    .line 565
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 567
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PrivacyControlActivity$2;-><init>(Lorg/telegram/ui/PrivacyControlActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 574
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 575
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 576
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 577
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 579
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/PrivacyControlActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 732
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity$3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PrivacyControlActivity$3;-><init>(Lorg/telegram/ui/PrivacyControlActivity;)V

    const-wide/16 v0, 0x15e

    .line 739
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 740
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 741
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 742
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 744
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->setMessageText()V

    .line 746
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 751
    sget p2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    if-ne p1, p2, :cond_0

    .line 753
    iget p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    const/16 p2, 0x65

    if-eq p1, p2, :cond_2

    .line 754
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->checkPrivacy()V

    goto :goto_0

    .line 755
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    .line 756
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    goto :goto_0

    .line 757
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    if-ne p1, p2, :cond_2

    .line 758
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->messageCell:Lorg/telegram/ui/PrivacyControlActivity$MessageCell;

    if-eqz p1, :cond_2

    .line 759
    invoke-virtual {p1}, Lorg/telegram/ui/PrivacyControlActivity$MessageCell;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public didStartUpload(Z)V
    .locals 0

    return-void
.end method

.method public synthetic didUploadFailed()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$didUploadFailed(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    return-void
.end method

.method public didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 10

    .line 228
    new-instance v9, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda6;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object/from16 v7, p9

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic getInitialSearchString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$getInitialSearchString(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 1700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1702
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v11, 0x0

    aput-object v2, v5, v11

    const-class v2, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v12, 0x1

    aput-object v2, v5, v12

    const-class v2, Lorg/telegram/ui/Cells/RadioCell;

    const/4 v13, 0x2

    aput-object v2, v5, v13

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1703
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v21

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1706
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1708
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1709
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1711
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1713
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v4, v3, v11

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v16, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    move/from16 v22, v27

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v5, v11

    const-string v6, "valueTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v32

    sget v36, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v30, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v5

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v30, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v11

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v32, 0x0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v5

    move/from16 v35, v21

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1720
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v37, v5, v6

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v11

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v35, v2

    move-object/from16 v36, v3

    move-object/from16 v38, v5

    move/from16 v42, v6

    invoke-direct/range {v35 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v11

    const/16 v18, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v30, v5, v7

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v7, v5, v11

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v5

    move/from16 v35, v6

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1725
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v16, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1727
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v6, v5, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v23

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1728
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v30, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v4, v11

    const-string v5, "radioButton"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v32

    sget v36, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    const/16 v35, 0x0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v4

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1729
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v11

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v12

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v28, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1732
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v4, v3, v11

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v4, v3, v12

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v2

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v27

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v29, v21

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1735
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v3, v8, v11

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v3, v8, v12

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v4, v3, v11

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v4, v3, v12

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    move-object v14, v2

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1737
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v11

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v12

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v27, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1738
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v4, v3, v11

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v4, v3, v12

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    move-object v14, v2

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1739
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v11

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v12

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v27, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v19

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleShadow:I

    move-object v14, v2

    move/from16 v21, v10

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1741
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1742
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextIn:I

    const/16 v19, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1743
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextOut:I

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1744
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v11

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheck:I

    move-object v14, v2

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1745
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v11

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckSelected:I

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v27, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1746
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v11

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v12

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckRead:I

    move-object v14, v2

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1747
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v11

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v12

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckReadSelected:I

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v27, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1748
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v11

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v12

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaSentCheck:I

    move-object v14, v2

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1749
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1750
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1752
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyNameText:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMessageText:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1754
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMessageText:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1755
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMediaMessageSelectedText:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1756
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageSelectedText:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeText:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeText:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeSelectedText:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1760
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeSelectedText:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1208
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->checkDiscard()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 491
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 492
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->checkPrivacy()V

    const/4 v0, 0x0

    .line 493
    invoke-direct {p0, v0}, Lorg/telegram/ui/PrivacyControlActivity;->updateRows(Z)V

    .line 494
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 495
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 496
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 502
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 503
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 504
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 505
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1200
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    .line 1202
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1190
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    const/4 v0, 0x0

    .line 1191
    invoke-direct {p0, v0}, Lorg/telegram/ui/PrivacyControlActivity;->updateRows(Z)V

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->onResume()V

    :cond_0
    return-void
.end method

.method public onSuccessLoadPrivacySettings(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->walletWhitelist:Ljava/util/List;

    .line 132
    iput p2, p0, Lorg/telegram/ui/PrivacyControlActivity;->walletAccess:I

    .line 133
    iput p3, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentAccountRankAccess:I

    iput p3, p0, Lorg/telegram/ui/PrivacyControlActivity;->initialAccountRankAccess:I

    .line 134
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->checkPrivacy()V

    return-void
.end method

.method public onSuccessSaveCryptoSettings()V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method public synthetic onUploadProgressChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$onUploadProgressChanged(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;F)V

    return-void
.end method

.method providePresenter()Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;
    .locals 3
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 115
    const-class v0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PrivacyControlActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PrivacyControlActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    return-object v0
.end method

.method public showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
