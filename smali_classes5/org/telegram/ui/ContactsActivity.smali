.class public Lorg/telegram/ui/ContactsActivity;
.super Lcom/iMe/ui/base/mvp/JavaMvpFragment;
.source "ContactsActivity.java"

# interfaces
.implements Lcom/iMe/ui/contacts/ContactsView;
.implements Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;
    }
.end annotation


# static fields
.field private static final observers:[I


# instance fields
.field private actionBarColorAnimator:Landroid/animation/ValueAnimator;

.field private allowBots:Z

.field private allowSelf:Z

.field private allowUsernameSearch:Z

.field private animationIndex:I

.field private askAboutContacts:Z

.field private backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private bounceIconAnimator:Landroid/animation/AnimatorSet;

.field private channelId:J

.field private chatId:J

.field private checkPermission:Z

.field public contactsPresenter:Lcom/iMe/ui/contacts/ContactsPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field private contactsPrivacySettingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private createSecretChat:Z

.field private creatingChat:Z

.field private delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

.field private destroyAfterSelect:Z

.field private disableSections:Z

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

.field private floatingButtonContainer:Landroid/widget/FrameLayout;

.field private floatingHidden:Z

.field private floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private hasGps:Z

.field private ignoreUsers:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private initialSearchString:Ljava/lang/String;

.field private isChoosePremiumGiftRecipient:Z

.field private isChooseWalletTransferRecipient:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

.field private needFinishFragment:Z

.field private needForwardCount:Z

.field private needPhonebook:Z

.field private networkId:Ljava/lang/String;

.field private onlyUsers:Z

.field private permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private permissionRequestTime:J

.field private prevPosition:I

.field private prevTop:I

.field private progressToActionMode:F

.field private resetDelegate:Z

.field private final resourceManager:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ">;"
        }
    .end annotation
.end field

.field private returnAsResult:Z

.field scheduled:Z

.field private scrollUpdated:Z

.field private searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

.field private searchWas:Z

.field private searching:Z

.field private selectAlertString:Ljava/lang/String;

.field private selectedContactsCount:Lorg/telegram/ui/Components/NumberTextView;

.field private sortByName:Z

.field sortContactsRunnable:Ljava/lang/Runnable;

.field private sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public transferRecipientPresenter:Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field private userWithCryptoAddressDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4Q_0ogkFBqF6HjzxkarPhUGHt-A(Lorg/telegram/ui/ContactsActivity;Landroid/animation/AnimatorSet;ZZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ContactsActivity;->lambda$onCustomTransitionAnimation$17(Landroid/animation/AnimatorSet;ZZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9fkePsMy_97fgLiLAH2p5SJjNdE(Lorg/telegram/ui/ContactsActivity;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$showErrorDialog$1(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BjmR-brgPCEWoOWgLsgRHDQevH4(Lorg/telegram/ui/ContactsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity;->lambda$createMenuForBlockedContactsAction$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cn6VZAGnyKyCpUtEmrh-fTwU3u4(Landroid/animation/ValueAnimator;Landroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity;->lambda$onCustomTransitionAnimation$16(Landroid/animation/ValueAnimator;Landroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DpXey3PTxrpcaVbqFbIDuwRn1Tg(Lorg/telegram/ui/ContactsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$askForPermissons$14(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EXG1_W44PsaZ211bXufCsGvO45k(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ContactsActivity;->lambda$didSelectResult$12(Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JixAzdjDh64O-OjucwgXuGcM9Rs(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ContactsActivity;->lambda$didSelectResult$11(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$L7lgHrmFqXxQfis2Yjg0-DeE90M(Lorg/telegram/ui/ContactsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity;->lambda$onRequestPermissionsResultFragment$15(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$M_6Dt_5JD5IdzCCNP6e5_uceJak(Lorg/telegram/ui/ContactsActivity;ILandroid/view/View;IFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$9(ILandroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$U16vpVCE9NjjNiNYgSBe5xZ4sLg(Lorg/telegram/ui/ContactsActivity;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->lambda$provideTransferRecipientPresenter$0()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Y3SUXtKVmXA7RHpiaEFkO-iKHTY(Lorg/telegram/ui/ContactsActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$8(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YU_incLIgNZW2-9VXxqwJqYEuyY(Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$openDeleteContactsDialog$3(Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_D90P8nH5RoQrhQhB8dMoEXU_1Q(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/fork/enums/ContactsActionType;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity;->lambda$showMembersActionConfirmationAlert$7(Lcom/iMe/fork/enums/ContactsActionType;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dTicV7KzbfwmvRO6xxa7wvNojYE(Lorg/telegram/ui/ContactsActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$callActionModeAnimation$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qDlNtz1_UK02kxI0SVqSPYc15FM(Lorg/telegram/ui/ContactsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$onResume$13(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s1ERao1aEPglZdoKxmf3_DdP0N0(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->lambda$getThemeDescriptions$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$so8F_WSoKmun2rq-FY6xyTmHrEU(Lorg/telegram/ui/ContactsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u36DRTi4yMKspuZx-OG8kBGpJSw(Lorg/telegram/ui/ContactsActivity;[Lcom/iMe/model/contacts/ContactsFilter;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactsActivity;->lambda$openFilterBottomSheet$4([Lcom/iMe/model/contacts/ContactsFilter;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yFdUkhZ0u96X3jScctq5JRiaas0(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/fork/enums/ContactsActionType;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$showMembersActionConfirmationAlert$6(Lcom/iMe/fork/enums/ContactsActionType;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 169
    sget v1, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onContactsActionsClicked:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lorg/telegram/ui/ContactsActivity;->observers:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 530
    invoke-direct {p0, p1}, Lcom/iMe/ui/base/mvp/JavaMvpFragment;-><init>(Landroid/os/Bundle;)V

    .line 156
    const-class p1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {p1}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->resourceManager:Lkotlin/Lazy;

    .line 483
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const/4 p1, 0x1

    .line 498
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->allowSelf:Z

    .line 499
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    .line 500
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    .line 501
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    .line 502
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->resetDelegate:Z

    const/4 v0, 0x0

    .line 505
    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    .line 507
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    .line 512
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    .line 516
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    const/4 p1, -0x1

    .line 520
    iput p1, p0, Lorg/telegram/ui/ContactsActivity;->animationIndex:I

    .line 1607
    new-instance p1, Lorg/telegram/ui/ContactsActivity$14;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ContactsActivity$14;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->sortContactsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ContactsActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity;->validateAndGoNext(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ContactsActivity;Z)Z
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->floatingHidden:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/ContactsActivity;Z)Z
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->floatingHidden:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ContactsActivity;Z)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->hideFloatingButton(Z)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->showItemsAnimated()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ContactsActivity;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ContactsActivity;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/ui/Cells/UserCell;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->processSwitchCheckedUserCell(Lorg/telegram/ui/Cells/UserCell;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ContactsActivity;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 145
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ContactsActivity;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ContactsActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->openDeleteContactsDialog(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 145
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ContactsActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ContactsActivity;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ContactsActivity;->prevPosition:I

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/ContactsActivity;I)I
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/ContactsActivity;->prevPosition:I

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ContactsActivity;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ContactsActivity;->prevTop:I

    return p0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/ContactsActivity;I)I
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/ContactsActivity;->prevTop:I

    return p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->scrollUpdated:Z

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/ContactsActivity;Z)Z
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->scrollUpdated:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/ContactsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->bounceIconAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ContactsActivity;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ContactsActivity;->animationIndex:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/ContactsActivity;Z)Z
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->searching:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/ContactsActivity;Z)Z
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->searching:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ContactsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->contactsPrivacySettingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method private askForPermissons(Z)V
    .locals 4

    .line 1467
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1468
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    if-eqz v1, :cond_2

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1471
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    if-eqz p1, :cond_1

    .line 1472
    new-instance p1, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createContactsPermissionDialog(Landroid/app/Activity;Lorg/telegram/messenger/MessagesStorage$IntCallback;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1479
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1482
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ContactsActivity;->permissionRequestTime:J

    .line 1483
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1484
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_CONTACTS"

    .line 1485
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 1486
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 1487
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v1, 0x1

    .line 1489
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1491
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private callActionModeAnimation()V
    .locals 3

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBarColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 353
    iget v2, p0, Lorg/telegram/ui/ContactsActivity;->progressToActionMode:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBarColorAnimator:Landroid/animation/ValueAnimator;

    .line 354
    new-instance v1, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBarColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBarColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBarColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private createActionMode()V
    .locals 9

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 341
    new-instance v1, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ContactsActivity;->selectedContactsCount:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v2, 0x12

    .line 342
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->selectedContactsCount:Lorg/telegram/ui/Components/NumberTextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 344
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->selectedContactsCount:Lorg/telegram/ui/Components/NumberTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 345
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->selectedContactsCount:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x48

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    sget v1, Lcom/iMe/common/IdFabric$Menu;->DELETE:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    const/16 v3, 0x36

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-void
.end method

.method private createMenuForBlockedContactsAction()V
    .locals 4

    .line 414
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 416
    invoke-static {}, Lcom/iMe/fork/enums/ContactsActionType;->getTextsArray()[Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {}, Lcom/iMe/fork/enums/ContactsActionType;->getIconsArray()[I

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    .line 415
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 420
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_7

    .line 1284
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 1285
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1288
    :cond_0
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    const-string v2, "Cancel"

    const-string v3, "OK"

    if-eqz p2, :cond_3

    .line 1289
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-eqz p2, :cond_1

    .line 1291
    :try_start_0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    const-string p2, "BotCantJoinGroups"

    sget p3, Lorg/telegram/messenger/R$string;->BotCantJoinGroups:I

    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1293
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 1297
    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/ContactsActivity;->channelId:J

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-eqz p2, :cond_3

    .line 1298
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v4, p0, Lorg/telegram/ui/ContactsActivity;->channelId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    .line 1299
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1300
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1301
    sget p2, Lorg/telegram/messenger/R$string;->AddBotAdminAlert:I

    const-string v3, "AddBotAdminAlert"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1302
    sget p2, Lorg/telegram/messenger/R$string;->AddBotAsAdmin:I

    const-string v3, "AddBotAsAdmin"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1303
    sget p2, Lorg/telegram/messenger/R$string;->AddAsAdmin:I

    const-string v3, "AddAsAdmin"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v3, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1, p3}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1309
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1311
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->CantAddBotAsAdmin:I

    const-string p2, "CantAddBotAsAdmin"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1312
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1314
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1318
    :cond_3
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1319
    sget p3, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v4, "AppName"

    invoke-static {v4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1320
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p3, v4}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1322
    iget-boolean v4, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p3, v5, v6

    .line 1323
    sget p3, Lorg/telegram/messenger/R$string;->AddToTheGroupForwardCount:I

    const-string v6, "AddToTheGroupForwardCount"

    invoke-static {v6, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v5, v1

    const-string p3, "%s\n\n%s"

    invoke-static {p3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1324
    new-instance v5, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41900000    # 18.0f

    .line 1325
    invoke-virtual {v5, v1, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const-string v6, "50"

    .line 1326
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1327
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/16 v6, 0x11

    .line 1328
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setGravity(I)V

    .line 1329
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v4, 0x6

    .line 1330
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1331
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1333
    new-instance v4, Lorg/telegram/ui/ContactsActivity$12;

    invoke-direct {v4, p0, v5}, Lorg/telegram/ui/ContactsActivity$12;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1367
    invoke-virtual {p2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2

    :cond_4
    move-object v5, v0

    .line 1369
    :goto_2
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1371
    sget p3, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-instance v3, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1, v5}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1372
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1373
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    if-eqz v5, :cond_a

    .line 1375
    invoke-virtual {v5}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_6

    .line 1377
    instance-of p2, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_5

    .line 1378
    move-object p2, p1

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_5
    const/16 p2, 0x18

    .line 1380
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/16 p2, 0x24

    .line 1381
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1382
    invoke-virtual {v5, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1384
    :cond_6
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v5, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    goto :goto_3

    .line 1388
    :cond_7
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->isChooseWalletTransferRecipient:Z

    if-eqz p2, :cond_8

    .line 1389
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ContactsActivity;->validateAndGoNext(Ljava/lang/String;Z)V

    return-void

    .line 1393
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    if-eqz p2, :cond_9

    .line 1394
    invoke-interface {p2, p1, p3, p0}, Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V

    .line 1395
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->resetDelegate:Z

    if-eqz p1, :cond_9

    .line 1396
    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    .line 1399
    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    if-eqz p1, :cond_a

    .line 1400
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_a
    :goto_3
    return-void
.end method

.method private hideActionMode()V
    .locals 3

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBarColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 336
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->callActionModeAnimation()V

    return-void
.end method

.method private hideFloatingButton(Z)V
    .locals 8

    .line 1636
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->floatingHidden:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1639
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->floatingHidden:Z

    .line 1640
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    .line 1641
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v1, [F

    iget-boolean v6, p0, Lorg/telegram/ui/ContactsActivity;->floatingHidden:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    const/16 v6, 0x64

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    int-to-float v6, v6

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x12c

    .line 1642
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1643
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1644
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    xor-int/2addr p1, v1

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1645
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private synthetic lambda$askForPermissons$14(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1473
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    if-nez p1, :cond_1

    return-void

    .line 1477
    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/ContactsActivity;->askForPermissons(Z)V

    return-void
.end method

.method private synthetic lambda$callActionModeAnimation$2(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 355
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ContactsActivity;->progressToActionMode:F

    const/4 p1, 0x0

    .line 356
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/ContactsActivity;->progressToActionMode:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 361
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$createMenuForBlockedContactsAction$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 418
    invoke-static {p2}, Lcom/iMe/fork/enums/ContactsActionType;->getByPosition(I)Lcom/iMe/fork/enums/ContactsActionType;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->showMembersActionConfirmationAlert(Lcom/iMe/fork/enums/ContactsActionType;)V

    return-void
.end method

.method private synthetic lambda$createView$10(Landroid/view/View;)V
    .locals 1

    .line 1203
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustNothing(Landroid/app/Activity;I)V

    .line 1204
    new-instance p1, Lorg/telegram/ui/ContactsActivity$10;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, p0, v0}, Lorg/telegram/ui/ContactsActivity$10;-><init>(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    .line 1210
    invoke-virtual {p1}, Lorg/telegram/ui/NewContactBottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$createView$8(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1048
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    const-string v0, "sms"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "sms_body"

    .line 1049
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/ContactsController;->getInviteText(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/16 p3, 0x1f4

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1052
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$9(ILandroid/view/View;IFF)V
    .locals 7

    .line 872
    iget-object p4, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    iget-object p5, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    const-string v0, "user_id"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p4, p5, :cond_8

    .line 873
    invoke-virtual {p5, p3}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 874
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_6

    .line 875
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 876
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Adapters/SearchAdapter;->isGlobalSearch(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 877
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 878
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p2, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 880
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p3

    invoke-virtual {p3, p2, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 882
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-eqz p2, :cond_2

    .line 883
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    if-eqz p2, :cond_1

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_1

    return-void

    .line 886
    :cond_1
    invoke-direct {p0, p1, v3, v1}, Lorg/telegram/ui/ContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    goto/16 :goto_3

    .line 888
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz p2, :cond_4

    .line 889
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget p4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p4

    cmp-long p2, p2, p4

    if-nez p2, :cond_3

    return-void

    .line 892
    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    .line 893
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/SecretChatHelper;->getInstance(I)Lorg/telegram/messenger/SecretChatHelper;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_3

    .line 895
    :cond_4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 896
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 897
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 899
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz p1, :cond_5

    .line 900
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 902
    :cond_5
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_3

    .line 906
    :cond_6
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 907
    check-cast p1, Ljava/lang/String;

    const-string p2, "section"

    .line 908
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    .line 909
    new-instance p2, Lorg/telegram/ui/NewContactBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/NewContactBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    .line 910
    invoke-virtual {p2, p1, v3}, Lorg/telegram/ui/NewContactBottomSheet;->setInitialPhoneNumber(Ljava/lang/String;Z)V

    .line 911
    invoke-virtual {p2}, Lorg/telegram/ui/NewContactBottomSheet;->show()V

    goto/16 :goto_3

    .line 913
    :cond_7
    instance-of p2, p1, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p2, :cond_24

    .line 914
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 915
    iget-object p2, p1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object p3, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p2, p3, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createContactInviteDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 918
    :cond_8
    iget-object p4, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p4, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result p4

    .line 919
    iget-object p5, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p5, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result p5

    if-ltz p5, :cond_24

    if-gez p4, :cond_9

    goto/16 :goto_3

    .line 925
    :cond_9
    instance-of v4, p2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v4, :cond_a

    iget-boolean v5, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 926
    check-cast p2, Lorg/telegram/ui/Cells/UserCell;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ContactsActivity;->processSwitchCheckedUserCell(Lorg/telegram/ui/Cells/UserCell;)V

    return-void

    .line 929
    :cond_a
    instance-of v5, p2, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;

    if-eqz v5, :cond_b

    .line 930
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->openFilterBottomSheet()V

    return-void

    .line 934
    :cond_b
    iget-object v5, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    iget-boolean v6, v5, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    if-eqz v6, :cond_d

    if-ne p4, v3, :cond_d

    if-nez v4, :cond_c

    return-void

    .line 938
    :cond_c
    check-cast p2, Lorg/telegram/ui/Cells/UserCell;

    .line 939
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/UserCell;->getDialogId()J

    move-result-wide p1

    .line 940
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object p5, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p5}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object p5

    invoke-virtual {p3, p4, p1, p2, p5}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;JLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return-void

    :cond_d
    if-eqz v6, :cond_e

    if-le p4, v3, :cond_e

    add-int/lit8 p4, p4, -0x1

    .line 945
    :cond_e
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    if-eqz p2, :cond_f

    if-eqz p1, :cond_1c

    :cond_f
    if-nez p4, :cond_1c

    .line 946
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz p2, :cond_16

    if-nez p5, :cond_10

    .line 948
    new-instance p1, Lorg/telegram/ui/InviteContactsActivity;

    invoke-direct {p1}, Lorg/telegram/ui/InviteContactsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    :cond_10
    if-ne p5, v3, :cond_24

    .line 949
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->hasGps:Z

    if-eqz p1, :cond_24

    .line 950
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_11

    .line 951
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_11

    const-string p3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 953
    invoke-virtual {p2, p3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_11

    .line 954
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity;

    invoke-direct {p1, v3}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_11
    const/16 p2, 0x1c

    if-lt p1, p2, :cond_12

    .line 961
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    .line 962
    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v3

    goto :goto_0

    :cond_12
    const/16 p2, 0x13

    if-lt p1, p2, :cond_14

    .line 965
    :try_start_0
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "location_mode"

    invoke-static {p1, p2, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_13

    move v2, v3

    :cond_13
    move v3, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 968
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_14
    :goto_0
    if-nez v3, :cond_15

    .line 972
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 975
    :cond_15
    new-instance p1, Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-direct {p1}, Lorg/telegram/ui/PeopleNearbyActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    :cond_16
    if-eqz p1, :cond_18

    if-nez p5, :cond_24

    .line 979
    new-instance p1, Lorg/telegram/ui/GroupInviteActivity;

    iget-wide p2, p0, Lorg/telegram/ui/ContactsActivity;->chatId:J

    const-wide/16 p4, 0x0

    cmp-long p4, p2, p4

    if-eqz p4, :cond_17

    goto :goto_1

    :cond_17
    iget-wide p2, p0, Lorg/telegram/ui/ContactsActivity;->channelId:J

    :goto_1
    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/GroupInviteActivity;-><init>(J)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    :cond_18
    if-nez p5, :cond_19

    .line 983
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 984
    new-instance p2, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_3

    :cond_19
    if-ne p5, v3, :cond_1a

    .line 986
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "onlyUsers"

    .line 987
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "destroyAfterSelect"

    .line 988
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "createSecretChat"

    .line 989
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "allowBots"

    .line 990
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "allowSelf"

    .line 991
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    new-instance p2, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_3

    :cond_1a
    const/4 p1, 0x2

    if-ne p5, p1, :cond_24

    .line 994
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 995
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    const-string p3, "channel_intro"

    if-nez p2, :cond_1b

    invoke-interface {p1, p3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 996
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "step"

    .line 997
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 998
    new-instance p2, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 1000
    :cond_1b
    new-instance p2, Lorg/telegram/ui/ActionIntroActivity;

    invoke-direct {p2, v2}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1001
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p3, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 1006
    :cond_1c
    invoke-virtual {v5, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result p1

    .line 1007
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result p2

    .line 1008
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object p1

    .line 1010
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_21

    .line 1011
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 1012
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-eqz p2, :cond_1e

    .line 1013
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    if-eqz p2, :cond_1d

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_1d

    return-void

    .line 1016
    :cond_1d
    invoke-direct {p0, p1, v3, v1}, Lorg/telegram/ui/ContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    goto/16 :goto_3

    .line 1018
    :cond_1e
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz p2, :cond_1f

    .line 1019
    iput-boolean v3, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    .line 1020
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/SecretChatHelper;->getInstance(I)Lorg/telegram/messenger/SecretChatHelper;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_3

    .line 1022
    :cond_1f
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1023
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1024
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 1026
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz p1, :cond_20

    .line 1027
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_3

    .line 1029
    :cond_20
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_3

    .line 1033
    :cond_21
    instance-of p2, p1, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p2, :cond_24

    .line 1034
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1036
    iget-object p2, p1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_22

    .line 1037
    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_22
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_24

    .line 1039
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_23

    goto :goto_3

    .line 1042
    :cond_23
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1043
    sget p3, Lorg/telegram/messenger/R$string;->InviteUser:I

    const-string p4, "InviteUser"

    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1044
    sget p3, Lorg/telegram/messenger/R$string;->AppName:I

    const-string p4, "AppName"

    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1046
    sget p3, Lorg/telegram/messenger/R$string;->OK:I

    const-string p4, "OK"

    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ContactsActivity;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1055
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p3, "Cancel"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1056
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    nop

    :cond_24
    :goto_3
    return-void
.end method

.method private synthetic lambda$didSelectResult$11(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1304
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    if-eqz p3, :cond_0

    .line 1305
    invoke-interface {p3, p1, p2, p0}, Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V

    const/4 p1, 0x0

    .line 1306
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    :cond_0
    return-void
.end method

.method private synthetic lambda$didSelectResult$12(Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1371
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2}, Lorg/telegram/ui/ContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$18()V
    .locals 5

    .line 1916
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    .line 1917
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1919
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1920
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v4, :cond_0

    .line 1921
    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    goto :goto_1

    .line 1922
    :cond_0
    instance-of v4, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v4, :cond_1

    .line 1923
    check-cast v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static synthetic lambda$onCustomTransitionAnimation$16(Landroid/animation/ValueAnimator;Landroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1722
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/16 p2, 0x30

    .line 1723
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p0

    .line 1724
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onCustomTransitionAnimation$17(Landroid/animation/AnimatorSet;ZZLandroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1761
    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v2, :cond_0

    return-void

    .line 1764
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/ContactsActivity;->animationIndex:I

    const/4 v4, 0x1

    new-array v5, v4, [I

    sget v6, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-virtual {v2, v3, v5, v7}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[IZ)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ContactsActivity;->animationIndex:I

    .line 1765
    invoke-virtual/range {p1 .. p1}, Landroid/animation/AnimatorSet;->start()V

    if-eqz p2, :cond_2

    .line 1767
    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p3, :cond_1

    sget v3, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon_camera:I

    goto :goto_0

    :cond_1
    sget v3, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon_reverse_camera:I

    :goto_0
    const/16 v5, 0x38

    invoke-virtual {v2, v3, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_2

    .line 1769
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p3, :cond_3

    sget v3, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon:I

    goto :goto_1

    :cond_3
    sget v3, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon_reverse:I

    :goto_1
    const/16 v5, 0x34

    invoke-virtual {v2, v3, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1771
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1772
    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->bounceIconAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_4

    .line 1773
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1775
    :cond_4
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ContactsActivity;->bounceIconAnimator:Landroid/animation/AnimatorSet;

    .line 1776
    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    const-wide/16 v5, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz p3, :cond_a

    move v11, v7

    :goto_3
    const/4 v12, 0x6

    if-ge v11, v12, :cond_f

    .line 1780
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    if-nez v11, :cond_5

    new-array v13, v8, [Landroid/animation/Animator;

    .line 1782
    iget-object v14, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v15, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v10, [F

    fill-array-data v3, :array_0

    .line 1783
    invoke-static {v14, v15, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v13, v7

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_1

    .line 1784
    invoke-static {v3, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v13, v4

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_2

    .line 1785
    invoke-static {v1, v3, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v13, v10

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_3

    .line 1786
    invoke-static {v1, v3, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v13, v9

    .line 1782
    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v3, 0x3e02b931

    mul-float/2addr v3, v2

    float-to-long v13, v3

    .line 1788
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1789
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_4

    :cond_5
    if-ne v11, v4, :cond_6

    new-array v3, v8, [Landroid/animation/Animator;

    .line 1791
    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_4

    .line 1792
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v7

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_5

    .line 1793
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v4

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_6

    .line 1794
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v10

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_7

    .line 1795
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v9

    .line 1791
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v3, 0x3eb93105

    mul-float/2addr v3, v2

    float-to-long v13, v3

    .line 1797
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1798
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_4

    :cond_6
    if-ne v11, v10, :cond_7

    new-array v3, v8, [Landroid/animation/Animator;

    .line 1800
    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_8

    .line 1801
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v7

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_9

    .line 1802
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v4

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_a

    .line 1803
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v10

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_b

    .line 1804
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v9

    .line 1800
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v3, 0x3e59df52

    mul-float/2addr v3, v2

    float-to-long v13, v3

    .line 1806
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1807
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_4

    :cond_7
    if-ne v11, v9, :cond_8

    new-array v3, v8, [Landroid/animation/Animator;

    .line 1809
    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_c

    .line 1810
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v7

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_d

    .line 1811
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v4

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_e

    .line 1812
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v10

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_f

    .line 1813
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v9

    .line 1809
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v3, 0x3dd9df52

    mul-float v13, v2, v3

    float-to-long v13, v13

    .line 1815
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1816
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_4

    :cond_8
    if-ne v11, v8, :cond_9

    new-array v3, v8, [Landroid/animation/Animator;

    .line 1818
    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_10

    .line 1819
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v7

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_11

    .line 1820
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v4

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_12

    .line 1821
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v10

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_13

    .line 1822
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v9

    .line 1818
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v3, 0x3dd9df52

    mul-float v13, v2, v3

    float-to-long v13, v13

    .line 1824
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1825
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    :cond_9
    new-array v3, v8, [Landroid/animation/Animator;

    .line 1827
    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_14

    .line 1828
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v7

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_15

    .line 1829
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v4

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_16

    .line 1830
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v10

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_17

    .line 1831
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v9

    .line 1827
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v3, 0x3dae4c41

    mul-float/2addr v3, v2

    float-to-long v13, v3

    .line 1834
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1835
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1837
    :goto_4
    invoke-virtual {v12, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1838
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v13

    add-long/2addr v5, v13

    .line 1839
    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->bounceIconAnimator:Landroid/animation/AnimatorSet;

    new-array v13, v4, [Landroid/animation/Animator;

    aput-object v12, v13, v7

    invoke-virtual {v3, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_a
    move v3, v7

    :goto_5
    const/4 v11, 0x5

    if-ge v3, v11, :cond_f

    .line 1843
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    const v12, 0x3e471c72

    if-nez v3, :cond_b

    new-array v13, v8, [Landroid/animation/Animator;

    .line 1845
    iget-object v14, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v15, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v10, [F

    fill-array-data v8, :array_18

    .line 1846
    invoke-static {v14, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v7

    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_19

    .line 1847
    invoke-static {v8, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v4

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_1a

    .line 1848
    invoke-static {v1, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v10

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_1b

    .line 1849
    invoke-static {v1, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v9

    .line 1845
    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    mul-float/2addr v12, v2

    float-to-long v12, v12

    .line 1851
    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1852
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_6
    const/4 v8, 0x4

    const v12, 0x3dd9df52

    goto/16 :goto_7

    :cond_b
    if-ne v3, v4, :cond_c

    const/4 v8, 0x4

    new-array v12, v8, [Landroid/animation/Animator;

    .line 1854
    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_1c

    .line 1855
    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v7

    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_1d

    .line 1856
    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v4

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v13, v10, [F

    fill-array-data v13, :array_1e

    .line 1857
    invoke-static {v1, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v10

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v13, v10, [F

    fill-array-data v13, :array_1f

    .line 1858
    invoke-static {v1, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v9

    .line 1854
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v8, 0x3e638e39

    mul-float/2addr v8, v2

    float-to-long v12, v8

    .line 1860
    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1861
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6

    :cond_c
    if-ne v3, v10, :cond_d

    const/4 v8, 0x4

    new-array v13, v8, [Landroid/animation/Animator;

    .line 1863
    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_20

    .line 1864
    invoke-static {v8, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v7

    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_21

    .line 1865
    invoke-static {v8, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v4

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_22

    .line 1866
    invoke-static {v1, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v10

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_23

    .line 1867
    invoke-static {v1, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v9

    .line 1863
    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    mul-float/2addr v12, v2

    float-to-long v12, v12

    .line 1869
    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1870
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_6

    :cond_d
    if-ne v3, v9, :cond_e

    const/4 v8, 0x4

    new-array v12, v8, [Landroid/animation/Animator;

    .line 1872
    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_24

    .line 1873
    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v7

    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_25

    .line 1874
    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v4

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v13, v10, [F

    fill-array-data v13, :array_26

    .line 1875
    invoke-static {v1, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v10

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v13, v10, [F

    fill-array-data v13, :array_27

    .line 1876
    invoke-static {v1, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v9

    .line 1872
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v8, v2

    float-to-long v12, v8

    .line 1878
    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1879
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_6

    :cond_e
    const/4 v8, 0x4

    new-array v12, v8, [Landroid/animation/Animator;

    .line 1881
    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_28

    .line 1882
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v12, v7

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_29

    .line 1883
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v12, v4

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_2a

    .line 1884
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v12, v10

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_2b

    .line 1885
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v12, v9

    .line 1881
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v12, 0x3dd9df52

    mul-float v13, v2, v12

    float-to-long v13, v13

    .line 1887
    invoke-virtual {v11, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1888
    sget-object v13, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1890
    :goto_7
    invoke-virtual {v11, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1891
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v13

    add-long/2addr v5, v13

    .line 1892
    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->bounceIconAnimator:Landroid/animation/AnimatorSet;

    new-array v14, v4, [Landroid/animation/Animator;

    aput-object v11, v14, v7

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 1895
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->bounceIconAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/ContactsActivity$17;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ContactsActivity$17;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1906
    iget-object v1, v0, Lorg/telegram/ui/ContactsActivity;->bounceIconAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_4
    .array-data 4
        0x3f666666    # 0.9f
        0x3f87ae14    # 1.06f
    .end array-data

    :array_5
    .array-data 4
        0x3f666666    # 0.9f
        0x3f87ae14    # 1.06f
    .end array-data

    :array_6
    .array-data 4
        0x3f666666    # 0.9f
        0x3f87ae14    # 1.06f
    .end array-data

    :array_7
    .array-data 4
        0x3f666666    # 0.9f
        0x3f87ae14    # 1.06f
    .end array-data

    :array_8
    .array-data 4
        0x3f87ae14    # 1.06f
        0x3f666666    # 0.9f
    .end array-data

    :array_9
    .array-data 4
        0x3f87ae14    # 1.06f
        0x3f666666    # 0.9f
    .end array-data

    :array_a
    .array-data 4
        0x3f87ae14    # 1.06f
        0x3f666666    # 0.9f
    .end array-data

    :array_b
    .array-data 4
        0x3f87ae14    # 1.06f
        0x3f666666    # 0.9f
    .end array-data

    :array_c
    .array-data 4
        0x3f666666    # 0.9f
        0x3f83d70a    # 1.03f
    .end array-data

    :array_d
    .array-data 4
        0x3f666666    # 0.9f
        0x3f83d70a    # 1.03f
    .end array-data

    :array_e
    .array-data 4
        0x3f666666    # 0.9f
        0x3f83d70a    # 1.03f
    .end array-data

    :array_f
    .array-data 4
        0x3f666666    # 0.9f
        0x3f83d70a    # 1.03f
    .end array-data

    :array_10
    .array-data 4
        0x3f83d70a    # 1.03f
        0x3f7ae148    # 0.98f
    .end array-data

    :array_11
    .array-data 4
        0x3f83d70a    # 1.03f
        0x3f7ae148    # 0.98f
    .end array-data

    :array_12
    .array-data 4
        0x3f83d70a    # 1.03f
        0x3f7ae148    # 0.98f
    .end array-data

    :array_13
    .array-data 4
        0x3f83d70a    # 1.03f
        0x3f7ae148    # 0.98f
    .end array-data

    :array_14
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f800000    # 1.0f
    .end array-data

    :array_15
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f800000    # 1.0f
    .end array-data

    :array_16
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f800000    # 1.0f
    .end array-data

    :array_17
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f800000    # 1.0f
    .end array-data

    :array_18
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_19
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1b
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1c
    .array-data 4
        0x3f666666    # 0.9f
        0x3f87ae14    # 1.06f
    .end array-data

    :array_1d
    .array-data 4
        0x3f666666    # 0.9f
        0x3f87ae14    # 1.06f
    .end array-data

    :array_1e
    .array-data 4
        0x3f666666    # 0.9f
        0x3f87ae14    # 1.06f
    .end array-data

    :array_1f
    .array-data 4
        0x3f666666    # 0.9f
        0x3f87ae14    # 1.06f
    .end array-data

    :array_20
    .array-data 4
        0x3f87ae14    # 1.06f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_21
    .array-data 4
        0x3f87ae14    # 1.06f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_22
    .array-data 4
        0x3f87ae14    # 1.06f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_23
    .array-data 4
        0x3f87ae14    # 1.06f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_24
    .array-data 4
        0x3f6b851f    # 0.92f
        0x3f828f5c    # 1.02f
    .end array-data

    :array_25
    .array-data 4
        0x3f6b851f    # 0.92f
        0x3f828f5c    # 1.02f
    .end array-data

    :array_26
    .array-data 4
        0x3f6b851f    # 0.92f
        0x3f828f5c    # 1.02f
    .end array-data

    :array_27
    .array-data 4
        0x3f6b851f    # 0.92f
        0x3f828f5c    # 1.02f
    .end array-data

    :array_28
    .array-data 4
        0x3f828f5c    # 1.02f
        0x3f800000    # 1.0f
    .end array-data

    :array_29
    .array-data 4
        0x3f828f5c    # 1.02f
        0x3f800000    # 1.0f
    .end array-data

    :array_2a
    .array-data 4
        0x3f828f5c    # 1.02f
        0x3f800000    # 1.0f
    .end array-data

    :array_2b
    .array-data 4
        0x3f828f5c    # 1.02f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$onRequestPermissionsResultFragment$15(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1507
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1508
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1509
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1511
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onResume$13(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1421
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    if-nez p1, :cond_1

    return-void

    .line 1425
    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/ContactsActivity;->askForPermissons(Z)V

    return-void
.end method

.method private static synthetic lambda$openDeleteContactsDialog$3(Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 0

    .line 373
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 374
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openFilterBottomSheet$4([Lcom/iMe/model/contacts/ContactsFilter;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 1

    .line 399
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 400
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aget-object p1, p1, p3

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/ForkCommonController;->setSelectedContactsFilter(Lcom/iMe/model/contacts/ContactsFilter;)V

    .line 401
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ForkCommonController;->saveConfig()V

    .line 402
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/iMe/fork/controller/ForkCommonController;->getSelectedContactsFilter()Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setFilterModel(Lcom/iMe/model/contacts/ContactsFilter;)V

    .line 404
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->refreshContactsList()V

    .line 405
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 407
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$provideTransferRecipientPresenter$0()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->networkId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$showErrorDialog$1(Ljava/lang/Long;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ContactsActivity;->sendInvitationToChat(J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMembersActionConfirmationAlert$6(Lcom/iMe/fork/enums/ContactsActionType;)V
    .locals 0

    .line 425
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->startContactsProcessingService(Lcom/iMe/fork/enums/ContactsActionType;)V

    return-void
.end method

.method private synthetic lambda$showMembersActionConfirmationAlert$7(Lcom/iMe/fork/enums/ContactsActionType;Ljava/lang/Boolean;)V
    .locals 0

    .line 436
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 437
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->startContactsProcessingService(Lcom/iMe/fork/enums/ContactsActionType;)V

    :cond_0
    return-void
.end method

.method private openDeleteContactsDialog(Ljava/lang/Runnable;)V
    .locals 9

    .line 369
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    sget v0, Lorg/telegram/messenger/R$string;->SyncContactsDeleteTitle:I

    const-string v1, "SyncContactsDeleteTitle"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->SyncContactsDeleteText:I

    const-string v1, "SyncContactsDeleteText"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v1, "Delete"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v8, p1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Runnable;)V

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->showConfirmationDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private openFilterBottomSheet()V
    .locals 10

    .line 380
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    sget v1, Lorg/telegram/messenger/R$string;->contacts_filter_header:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 385
    invoke-static {}, Lcom/iMe/model/contacts/ContactsFilter;->values()[Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v1

    .line 387
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 388
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 389
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v4, 0x0

    move v5, v4

    .line 391
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 392
    new-instance v6, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x4

    .line 393
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v8, v4, v7, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 394
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 395
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 396
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/iMe/model/contacts/ContactsFilter;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/fork/controller/ForkCommonController;->getSelectedContactsFilter()Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v8

    aget-object v9, v1, v5

    if-ne v8, v9, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 397
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    new-instance v7, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v7, p0, v1, v0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ContactsActivity;[Lcom/iMe/model/contacts/ContactsFilter;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 410
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private processSwitchCheckedUserCell(Lorg/telegram/ui/Cells/UserCell;)V
    .locals 4

    .line 309
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 313
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->contactsPresenter:Lcom/iMe/ui/contacts/ContactsPresenter;

    invoke-virtual {v2, v0, v1}, Lcom/iMe/ui/contacts/ContactsPresenter;->indexOfSelectedId(J)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 314
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->contactsPresenter:Lcom/iMe/ui/contacts/ContactsPresenter;

    invoke-virtual {p1, v0, v1}, Lcom/iMe/ui/contacts/ContactsPresenter;->addOrRemoveSelectedContact(J)V

    return-void
.end method

.method private scheduleSort()V
    .locals 3

    .line 1616
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->scheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1617
    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->scheduled:Z

    .line 1618
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->sortContactsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1619
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->sortContactsRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private sendInvitationToChat(J)V
    .locals 18

    move-object/from16 v0, p0

    .line 463
    iget-object v1, v0, Lorg/telegram/ui/ContactsActivity;->transferRecipientPresenter:Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    .line 464
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->getSendingMediaInfo()Ljava/util/ArrayList;

    move-result-object v3

    .line 465
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide/from16 v4, p1

    invoke-static/range {v2 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingMedia(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZZLorg/telegram/messenger/MessageObject;ZIZLandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;)V

    return-void
.end method

.method private showActionMode()V
    .locals 3

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeIsExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->createActionMode()V

    .line 321
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    .line 324
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->callActionModeAnimation()V

    return-void
.end method

.method private showCameraScanner()V
    .locals 2

    .line 300
    new-instance v0, Lorg/telegram/ui/ContactsActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContactsActivity$1;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    const/4 v1, 0x1

    invoke-static {p0, v1, v1, v0, v1}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private showItemsAnimated()V
    .locals 3

    .line 1661
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 1662
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 1663
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ContactsActivity$15;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ContactsActivity$15;-><init>(Lorg/telegram/ui/ContactsActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private showMembersActionConfirmationAlert(Lcom/iMe/fork/enums/ContactsActionType;)V
    .locals 9

    .line 424
    sget-object v0, Lcom/iMe/fork/enums/ContactsActionType;->DELETE:Lcom/iMe/fork/enums/ContactsActionType;

    if-ne p1, v0, :cond_0

    .line 425
    new-instance v0, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/fork/enums/ContactsActionType;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/ContactsActivity;->openDeleteContactsDialog(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 426
    :cond_0
    sget-object v0, Lcom/iMe/fork/enums/ContactsActionType;->UNBLOCK:Lcom/iMe/fork/enums/ContactsActionType;

    if-ne p1, v0, :cond_1

    .line 429
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    sget v0, Lorg/telegram/messenger/R$string;->contacts_filter_confirm_unblock:I

    .line 431
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->Unblock:I

    const-string v1, "Unblock"

    .line 432
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v8, p0, p1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/fork/enums/ContactsActionType;)V

    move-object v1, p0

    .line 427
    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->showConfirmationDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private startContactsProcessingService(Lcom/iMe/fork/enums/ContactsActionType;)V
    .locals 6

    .line 445
    const-class v0, Lcom/iMe/services/FilteredContactsProcessingService;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isServiceRunning(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    sget p1, Lorg/telegram/messenger/R$string;->already_processing:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->getSelectedContactsFilter()Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getFilteredContacts(Lcom/iMe/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object v1

    .line 450
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 451
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 452
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 454
    :cond_1
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v4, Lcom/iMe/services/FilteredContactsProcessingService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "contacts_ids"

    .line 455
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 456
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "selected_filter_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "selected_contacts_action_name"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void
.end method

.method private updateVisibleRows(I)V
    .locals 4

    .line 1624
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 1625
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1627
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1628
    instance-of v3, v2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_0

    .line 1629
    check-cast v2, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private validateAndGoNext(Ljava/lang/String;Z)V
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->transferRecipientPresenter:Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->validateRecipient(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public clearSelectedContacts()V
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public closeActionMode()V
    .locals 2

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 217
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->changeActionMode(Z)V

    .line 219
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->hideActionMode()V

    :cond_1
    return-void
.end method

.method public createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 3

    .line 1270
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    .line 1271
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 1272
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 1274
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1275
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1276
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1277
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1278
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    return-object p1
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 25

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 610
    invoke-super/range {p0 .. p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    const/4 v14, 0x0

    .line 611
    iput-boolean v14, v12, Lorg/telegram/ui/ContactsActivity;->searching:Z

    .line 612
    iput-boolean v14, v12, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    .line 615
    iget-boolean v0, v12, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v1, v14}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v1, v12, Lorg/telegram/ui/ContactsActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 618
    :cond_0
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 619
    :goto_0
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 620
    iget-boolean v0, v12, Lorg/telegram/ui/ContactsActivity;->destroyAfterSelect:Z

    if-eqz v0, :cond_3

    .line 621
    iget-boolean v0, v12, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->SelectContact:I

    const-string v2, "SelectContact"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 624
    :cond_1
    iget-boolean v0, v12, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz v0, :cond_2

    .line 625
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->NewSecretChat:I

    const-string v2, "NewSecretChat"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 627
    :cond_2
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->NewMessageTitle:I

    const-string v2, "NewMessageTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 631
    :cond_3
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->Contacts:I

    const-string v2, "Contacts"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 634
    :goto_1
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$2;

    invoke-direct {v1, v12}, Lorg/telegram/ui/ContactsActivity$2;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 658
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 659
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v14, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ContactsActivity$3;

    invoke-direct {v2, v12}, Lorg/telegram/ui/ContactsActivity$3;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    .line 729
    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    const-string v3, "Search"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 730
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 731
    iget-boolean v1, v12, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-nez v1, :cond_5

    iget-boolean v1, v12, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-nez v1, :cond_5

    .line 732
    iget-boolean v1, v12, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_contacts_time:I

    goto :goto_2

    :cond_4
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_contacts_name:I

    :goto_2
    invoke-virtual {v0, v15, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/ui/ContactsActivity;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 733
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrContactSorting:I

    const-string v3, "AccDescrContactSorting"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 736
    :cond_5
    iget-boolean v1, v12, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz v1, :cond_6

    .line 737
    sget v1, Lcom/iMe/common/IdFabric$Menu;->CONTACTS_PRIVACY_SETTINGS:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_chat_admin:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v12, Lorg/telegram/ui/ContactsActivity;->contactsPrivacySettingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 741
    :cond_6
    new-instance v11, Lorg/telegram/ui/ContactsActivity$4;

    iget-object v3, v12, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    iget-boolean v4, v12, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, v12, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    iget-boolean v8, v12, Lorg/telegram/ui/ContactsActivity;->allowSelf:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-boolean v2, v12, Lorg/telegram/ui/ContactsActivity;->isChoosePremiumGiftRecipient:Z

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v16, v2

    move-object/from16 v2, p1

    move-object v15, v11

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/ContactsActivity$4;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/content/Context;Landroidx/collection/LongSparseArray;ZZZZZZIZ)V

    iput-object v15, v12, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    .line 752
    iget-wide v0, v12, Lorg/telegram/ui/ContactsActivity;->chatId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v0, :cond_7

    .line 753
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v12, Lorg/telegram/ui/ContactsActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 754
    invoke-static {v0, v9}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    :goto_3
    move v11, v0

    goto :goto_4

    .line 755
    :cond_7
    iget-wide v0, v12, Lorg/telegram/ui/ContactsActivity;->channelId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 756
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v12, Lorg/telegram/ui/ContactsActivity;->channelId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 757
    invoke-static {v0, v9}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v10

    goto :goto_3

    :cond_8
    move v0, v14

    goto :goto_3

    :cond_9
    move v11, v14

    .line 762
    :goto_4
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v12, Lorg/telegram/ui/ContactsActivity;->hasGps:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 764
    :catchall_0
    iput-boolean v14, v12, Lorg/telegram/ui/ContactsActivity;->hasGps:Z

    .line 766
    :goto_5
    new-instance v15, Lorg/telegram/ui/ContactsActivity$5;

    iget-boolean v4, v12, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    iget-boolean v5, v12, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    iget-object v6, v12, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    iget-boolean v8, v12, Lorg/telegram/ui/ContactsActivity;->hasGps:Z

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move v7, v11

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ContactsActivity$5;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;IZLandroidx/collection/LongSparseArray;IZ)V

    iput-object v15, v12, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    .line 788
    iget-boolean v0, v12, Lorg/telegram/ui/ContactsActivity;->isChooseWalletTransferRecipient:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 789
    invoke-virtual {v15, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setChooseWalletTransferRecipientMode(Z)V

    goto :goto_6

    :cond_a
    const/4 v0, 0x1

    .line 790
    iget-boolean v1, v12, Lorg/telegram/ui/ContactsActivity;->isChoosePremiumGiftRecipient:Z

    if-eqz v1, :cond_b

    .line 791
    invoke-virtual {v15, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setChoosePremiumGiftRecipientMode(Z)V

    goto :goto_6

    .line 792
    :cond_b
    iget-boolean v0, v12, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz v0, :cond_c

    .line 793
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->getSelectedContactsFilter()Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setFilterModel(Lcom/iMe/model/contacts/ContactsFilter;)V

    .line 794
    iget-object v0, v12, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->contactsPresenter:Lcom/iMe/ui/contacts/ContactsPresenter;

    invoke-virtual {v1}, Lcom/iMe/ui/contacts/ContactsPresenter;->getSelectedContacts()Landroidx/collection/LongSparseArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setCheckedMap(Landroidx/collection/LongSparseArray;)V

    .line 797
    :cond_c
    :goto_6
    iget-object v0, v12, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_e

    iget-boolean v1, v12, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    move v1, v10

    goto :goto_7

    :cond_e
    move v1, v14

    :goto_7
    invoke-virtual {v0, v1, v14}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setSortType(IZ)V

    .line 798
    iget-object v0, v12, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    iget-boolean v1, v12, Lorg/telegram/ui/ContactsActivity;->disableSections:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setDisableSections(Z)V

    .line 800
    new-instance v0, Lorg/telegram/ui/ContactsActivity$6;

    invoke-direct {v0, v12, v13}, Lorg/telegram/ui/ContactsActivity$6;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 833
    check-cast v0, Landroid/widget/FrameLayout;

    .line 835
    new-instance v1, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v1, v13}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x6

    .line 836
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 837
    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 839
    new-instance v2, Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v3, 0x1

    invoke-direct {v2, v13, v1, v3}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v2, v12, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 840
    invoke-virtual {v2, v1, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 841
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 842
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v3, v14}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 843
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v3, "NoResult"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    const-string v3, "SearchEmptyViewFilteredSubtitle2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 847
    new-instance v1, Lorg/telegram/ui/ContactsActivity$7;

    invoke-direct {v1, v12, v13}, Lorg/telegram/ui/ContactsActivity$7;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/content/Context;)V

    iput-object v1, v12, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 856
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 857
    invoke-virtual {v1, v14}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    const-wide/16 v3, 0x96

    .line 858
    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 859
    invoke-virtual {v1, v14}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 860
    iget-object v3, v12, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 861
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 862
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 863
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled(I)V

    .line 864
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, v13, v3, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v4, v12, Lorg/telegram/ui/ContactsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 865
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, v12, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 866
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v12, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 869
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 871
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2, v12, v11}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ContactsActivity;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1061
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ContactsActivity$8;

    invoke-direct {v2, v12}, Lorg/telegram/ui/ContactsActivity$8;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1153
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ContactsActivity$9;

    invoke-direct {v2, v12}, Lorg/telegram/ui/ContactsActivity$9;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1199
    iget-boolean v1, v12, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-nez v1, :cond_1c

    iget-boolean v1, v12, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-nez v1, :cond_1c

    iget-boolean v1, v12, Lorg/telegram/ui/ContactsActivity;->isChooseWalletTransferRecipient:Z

    if-nez v1, :cond_1c

    iget-boolean v1, v12, Lorg/telegram/ui/ContactsActivity;->isChoosePremiumGiftRecipient:Z

    if-nez v1, :cond_1c

    .line 1200
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v12, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 1201
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x3c

    const/16 v5, 0x15

    const/16 v6, 0x38

    if-lt v3, v5, :cond_f

    move v7, v6

    goto :goto_8

    :cond_f
    move v7, v4

    :goto_8
    add-int/lit8 v18, v7, 0x14

    if-lt v3, v5, :cond_10

    move v7, v6

    goto :goto_9

    :cond_10
    move v7, v4

    :goto_9
    add-int/lit8 v19, v7, 0x14

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_11

    goto :goto_a

    :cond_11
    const/4 v9, 0x5

    :goto_a
    or-int/lit8 v20, v9, 0x50

    const/4 v8, 0x4

    if-eqz v7, :cond_12

    move/from16 v21, v8

    goto :goto_b

    :cond_12
    move/from16 v21, v14

    :goto_b
    const/16 v22, 0x0

    if-eqz v7, :cond_13

    move/from16 v23, v14

    goto :goto_c

    :cond_13
    move/from16 v23, v8

    :goto_c
    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1202
    iget-object v0, v12, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, v12}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    .line 1214
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1215
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-static {v0, v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ge v3, v5, :cond_14

    .line 1217
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1218
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v9, -0x1000000

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v9, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1219
    new-instance v7, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v7, v1, v0, v14, v14}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1220
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v0, v7

    .line 1223
    :cond_14
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1224
    iget-object v0, v12, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v7, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1225
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "view_animations"

    const/4 v7, 0x1

    .line 1226
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1228
    iget-object v1, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    .line 1230
    instance-of v7, v1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v7, :cond_15

    .line 1231
    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_17

    .line 1234
    sget-object v7, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_STORY:Lcom/iMe/storage/domain/model/filters/FilterFab;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/DialogsActivity;->checkCurrentFab(Lcom/iMe/storage/domain/model/filters/FilterFab;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1235
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_16

    sget v0, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon_camera:I

    goto :goto_e

    :cond_16
    sget v0, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon_reverse_camera:I

    :goto_e
    invoke-virtual {v1, v0, v6, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_10

    .line 1237
    :cond_17
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_18

    sget v0, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon:I

    goto :goto_f

    :cond_18
    sget v0, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon_reverse:I

    :goto_f
    const/16 v7, 0x34

    invoke-virtual {v1, v0, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1239
    :goto_10
    iget-object v0, v12, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/messenger/R$string;->CreateNewContact:I

    const-string v7, "CreateNewContact"

    invoke-static {v7, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-lt v3, v5, :cond_19

    .line 1241
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    const/4 v1, 0x1

    new-array v7, v1, [I

    const v9, 0x10100a7

    aput v9, v7, v14

    .line 1242
    iget-object v9, v12, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v11, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v13, v10, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v13, v14

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v13, v1

    invoke-static {v9, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move v13, v3

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v1, v14, [I

    .line 1243
    iget-object v7, v12, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-array v15, v10, [F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v15, v14

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    const/4 v10, 0x1

    aput v8, v15, v10

    invoke-static {v7, v11, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1244
    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 1245
    iget-object v0, v12, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$11;

    invoke-direct {v1, v12}, Lorg/telegram/ui/ContactsActivity$11;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_11

    :cond_19
    move v13, v3

    .line 1253
    :goto_11
    iget-object v0, v12, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, v12, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-lt v13, v5, :cond_1a

    move v15, v6

    goto :goto_12

    :cond_1a
    move v15, v4

    :goto_12
    if-lt v13, v5, :cond_1b

    move/from16 v16, v6

    goto :goto_13

    :cond_1b
    move/from16 v16, v4

    :goto_13
    const/16 v17, 0x33

    const/16 v18, 0xa

    const/16 v19, 0x6

    const/16 v20, 0xa

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1256
    :cond_1c
    iget-object v0, v12, Lorg/telegram/ui/ContactsActivity;->initialSearchString:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 1257
    iget-object v1, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->openSearchField(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 1258
    iput-object v0, v12, Lorg/telegram/ui/ContactsActivity;->initialSearchString:Ljava/lang/String;

    .line 1261
    :cond_1d
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1263
    iget-object v0, v12, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setStories(Ljava/util/ArrayList;Z)V

    .line 1265
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 1556
    sget p2, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    if-ne p1, p2, :cond_0

    .line 1557
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz p1, :cond_d

    .line 1558
    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->refreshOnBlockedUsersLoaded()V

    goto/16 :goto_1

    .line 1560
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onContactsActionsClicked:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_4

    .line 1561
    array-length p1, p3

    if-lt p1, v0, :cond_3

    aget-object p1, p3, v1

    instance-of p1, p1, Lcom/iMe/model/contacts/ContactsFilter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-nez p1, :cond_1

    goto :goto_0

    .line 1564
    :cond_1
    aget-object p1, p3, v1

    check-cast p1, Lcom/iMe/model/contacts/ContactsFilter;

    .line 1565
    sget-object p2, Lcom/iMe/model/contacts/ContactsFilter;->BLOCKED:Lcom/iMe/model/contacts/ContactsFilter;

    if-ne p1, p2, :cond_2

    .line 1566
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->createMenuForBlockedContactsAction()V

    goto/16 :goto_1

    .line 1568
    :cond_2
    sget-object p1, Lcom/iMe/fork/enums/ContactsActionType;->DELETE:Lcom/iMe/fork/enums/ContactsActionType;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->showMembersActionConfirmationAlert(Lcom/iMe/fork/enums/ContactsActionType;)V

    goto/16 :goto_1

    :cond_3
    :goto_0
    return-void

    .line 1571
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    if-ne p1, p2, :cond_6

    .line 1572
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz p1, :cond_5

    .line 1573
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setStories(Ljava/util/ArrayList;Z)V

    .line 1575
    :cond_5
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->loadHiddenStories()V

    goto/16 :goto_1

    .line 1576
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    if-ne p1, p2, :cond_8

    .line 1577
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz p1, :cond_d

    .line 1578
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    if-nez p2, :cond_7

    const/4 p2, 0x2

    .line 1579
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setSortType(IZ)V

    .line 1581
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1583
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_b

    .line 1584
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1585
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr p2, p1

    if-nez p2, :cond_9

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p2, p1

    if-nez p2, :cond_9

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_a

    .line 1586
    :cond_9
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->updateVisibleRows(I)V

    .line 1588
    :cond_a
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz p1, :cond_d

    .line 1589
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->scheduleSort()V

    goto :goto_1

    .line 1591
    :cond_b
    sget p2, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    if-ne p1, p2, :cond_c

    .line 1592
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    if-eqz p1, :cond_d

    .line 1593
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1594
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1595
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const-string p3, "enc_id"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1596
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1597
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_1

    .line 1599
    :cond_c
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, p2, :cond_d

    .line 1600
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    if-nez p1, :cond_d

    .line 1601
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    :cond_d
    :goto_1
    return-void
.end method

.method protected getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 1437
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1913
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1915
    new-instance v11, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    .line 1930
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1931
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultTop:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1932
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1934
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1936
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object v3, v2

    move/from16 v10, v19

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1937
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1938
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1939
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1940
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1941
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1942
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1944
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1946
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    const/4 v12, 0x1

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/LetterSectionCell;

    const/4 v13, 0x0

    aput-object v5, v4, v13

    const-string v14, "textView"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1948
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v13

    sget-object v33, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v36, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    invoke-direct/range {v29 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1950
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollActive:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1951
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollInactive:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1952
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollText:I

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1954
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v4, v13

    const-string v5, "nameTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v25, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move/from16 v31, v32

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1955
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/UserCell;

    aput-object v2, v5, v13

    const-string v2, "statusColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/4 v4, 0x0

    move-object v2, v15

    move-object v9, v11

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1956
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/UserCell;

    aput-object v2, v5, v13

    const-string v2, "statusOnlineColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    move-object v2, v15

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1957
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v4, v13

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/16 v18, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1958
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

    .line 1959
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1960
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1961
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1962
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1963
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1964
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1966
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v17, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v4, v13

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v23, v32

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1967
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v25, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v4, v13

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v4, v13

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const/16 v17, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1970
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    const/16 v27, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1971
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1972
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v17, v4, v5

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1974
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v4, v13

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    const/16 v25, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1975
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v4, v3, v13

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v12, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v3, v7, v13

    new-array v9, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v3, v9, v13

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedCheck:I

    const/4 v6, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1978
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v4, v3, v13

    new-array v4, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v13

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    const/16 v16, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1979
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v4, v13

    sget-object v26, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/16 v24, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v4, v3, v13

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText3:I

    const/16 v19, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1981
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v4, v13

    const/4 v5, 0x3

    new-array v6, v5, [Landroid/graphics/Paint;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v8, v7, v13

    aput-object v8, v6, v13

    aget-object v7, v7, v12

    aput-object v7, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNamePaint:Landroid/text/TextPaint;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    const/16 v26, 0x0

    const/16 v29, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v6

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1982
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v4, v3, v13

    new-array v4, v5, [Landroid/graphics/Paint;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v6, v5, v13

    aput-object v6, v4, v13

    aget-object v5, v5, v12

    aput-object v5, v4, v12

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNameEncryptedPaint:Landroid/text/TextPaint;

    aput-object v5, v4, v8

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->contactsPresenter:Lcom/iMe/ui/contacts/ContactsPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/contacts/ContactsPresenter;->closeActionMode()V

    const/4 v0, 0x0

    return v0

    .line 193
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1442
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1443
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 1444
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ContactsActivity$13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContactsActivity$13;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 14

    move-object v7, p0

    .line 1691
    iget-boolean v0, v7, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [F

    if-eqz p1, :cond_1

    .line 1695
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    goto :goto_0

    :cond_1
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    :goto_0
    move-object v8, v2

    .line 1696
    iget-object v2, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1697
    iget-object v3, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_2

    iget-object v3, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v3

    iget-object v4, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 1699
    :goto_1
    instance-of v3, v0, Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_3

    .line 1700
    check-cast v0, Lorg/telegram/ui/DialogsActivity;

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_4

    return-object v1

    .line 1705
    :cond_4
    sget-object v3, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_STORY:Lcom/iMe/storage/domain/model/filters/FilterFab;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/DialogsActivity;->checkCurrentFab(Lcom/iMe/storage/domain/model/filters/FilterFab;)Z

    move-result v10

    .line 1706
    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getFloatingButton()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    .line 1707
    invoke-virtual {v5}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v11, v3

    goto :goto_3

    :cond_5
    move-object v11, v1

    .line 1708
    :goto_3
    iget-object v3, v7, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v3, :cond_8

    iget-object v3, v7, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_6

    if-eqz v11, :cond_6

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_6

    iget-object v3, v7, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_6

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isFabAnimationsDisabled()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    if-eqz v10, :cond_7

    .line 1710
    iget-object v0, v7, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon_camera:I

    const/16 v3, 0x38

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_4

    .line 1712
    :cond_7
    iget-object v0, v7, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon:I

    const/16 v3, 0x34

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1714
    :goto_4
    iget-object v0, v7, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    iget-object v2, v7, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    return-object v1

    :cond_8
    const/16 v0, 0x8

    .line 1717
    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    .line 1719
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1721
    :cond_9
    new-instance v0, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, v8, v2}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda0;-><init>(Landroid/animation/ValueAnimator;Landroid/view/ViewGroup;)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1726
    iget-object v0, v7, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_a

    .line 1727
    iget-object v1, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1728
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, v7, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_a
    const-wide/16 v0, 0x96

    .line 1730
    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1731
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1733
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1734
    new-instance v13, Lorg/telegram/ui/ContactsActivity$16;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v11

    move v3, p1

    move v4, v10

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ContactsActivity$16;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/view/View;ZZLorg/telegram/ui/Components/RLottieImageView;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v9, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    .line 1759
    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1760
    new-instance v6, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda12;

    move-object v0, v6

    move-object v1, p0

    move-object v2, v12

    move v3, v10

    move v4, p1

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/animation/AnimatorSet;ZZLandroid/view/View;)V

    const-wide/16 v0, 0x32

    invoke-static {v6, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-object v12

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 1

    .line 1459
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDialogDismiss(Landroid/app/Dialog;)V

    .line 1460
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1461
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->askForPermissons(Z)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 8

    .line 535
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 537
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->loadBlockedPeersIfNeedIt()V

    .line 538
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/ContactsActivity;->observers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 540
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 541
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 542
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 543
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 544
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 545
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "is_choose_wallet_transfer_recipient"

    .line 548
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->isChooseWalletTransferRecipient:Z

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "is_choose_premium_gift_recipient"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->isChoosePremiumGiftRecipient:Z

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "network_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 552
    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->networkId:Ljava/lang/String;

    .line 555
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "onlyUsers"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    .line 556
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "destroyAfterSelect"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->destroyAfterSelect:Z

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "returnAsResult"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    .line 558
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "createSecretChat"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    .line 559
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "selectAlertString"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "allowUsernameSearch"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    .line 561
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "needForwardCount"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "allowBots"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "allowSelf"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->allowSelf:Z

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "channelId"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/ui/ContactsActivity;->channelId:J

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "needFinishFragment"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "chat_id"

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/ContactsActivity;->chatId:J

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "disableSections"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->disableSections:Z

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "resetDelegate"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->resetDelegate:Z

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "needPhonebook"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    goto :goto_0

    .line 571
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    .line 574
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-nez v0, :cond_2

    .line 575
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    .line 578
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkInviteText()V

    .line 579
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatusesMaybe(Z)V

    .line 580
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->loadHiddenStories()V

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 588
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 589
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/ContactsActivity;->observers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 590
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 591
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 592
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 593
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 594
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    .line 595
    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    .line 596
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 597
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ContactsActivity;->animationIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1547
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 1548
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 1549
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_0
    return-void
.end method

.method public onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 233
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity;->userWithCryptoAddressDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    if-eqz p3, :cond_1

    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 235
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->userWithCryptoAddressDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    invoke-interface {p1, v0, p2}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 238
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity;->userWithCryptoAddressDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    invoke-interface {p3, p1, p2}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->resetDelegate:Z

    if-eqz p1, :cond_1

    .line 241
    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->userWithCryptoAddressDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    .line 244
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    if-eqz p1, :cond_2

    .line 245
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_2
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-ne p1, v2, :cond_1

    .line 1499
    array-length p1, p3

    if-lez p1, :cond_0

    aget p1, p3, v1

    if-nez p1, :cond_0

    .line 1500
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->showCameraScanner()V

    goto/16 :goto_2

    .line 1502
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1503
    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    const-string p3, "AppName"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1504
    sget p2, Lorg/telegram/messenger/R$string;->QRCodePermissionNoCameraWithHint:I

    const-string p3, "QRCodePermissionNoCameraWithHint"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1505
    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    const-string p3, "PermissionOpenSettings"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1514
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    const-string p3, "OK"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1515
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    move p1, v1

    .line 1519
    :goto_0
    array-length v2, p2

    if-ge p1, v2, :cond_5

    .line 1520
    array-length v2, p3

    if-gt v2, p1, :cond_2

    goto :goto_1

    .line 1523
    :cond_2
    aget-object v2, p2, p1

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1524
    aget p1, p3, p1

    if-nez p1, :cond_3

    .line 1525
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    goto :goto_2

    .line 1527
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    const-string p2, "askAboutContacts"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1528
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v1, p0, Lorg/telegram/ui/ContactsActivity;->permissionRequestTime:J

    sub-long/2addr p1, v1

    const-wide/16 v1, 0xc8

    cmp-long p1, p1, v1

    if-gez p1, :cond_5

    .line 1530
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "package"

    .line 1531
    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 1532
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1533
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1535
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1407
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 1408
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 1409
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz v0, :cond_0

    .line 1410
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 1412
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1413
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1415
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    const-string v1, "android.permission.READ_CONTACTS"

    .line 1416
    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 1418
    invoke-virtual {v0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1420
    new-instance v1, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createContactsPermissionDialog(Landroid/app/Activity;Lorg/telegram/messenger/MessagesStorage$IntCallback;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 1427
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1429
    invoke-direct {p0, v0}, Lorg/telegram/ui/ContactsActivity;->askForPermissons(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSelectedQtyChange(I)V
    .locals 2

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectedContactsCount:Lorg/telegram/ui/Components/NumberTextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 199
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 0

    .line 602
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    .line 603
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public openActionMode()V
    .locals 2

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->changeActionMode(Z)V

    .line 209
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->showActionMode()V

    :cond_1
    return-void
.end method

.method public openChatScreen(J)V
    .locals 2

    .line 282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    .line 283
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 284
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method providePresenter()Lcom/iMe/ui/contacts/ContactsPresenter;
    .locals 1
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 160
    const-class v0, Lcom/iMe/ui/contacts/ContactsPresenter;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/contacts/ContactsPresenter;

    return-object v0
.end method

.method provideTransferRecipientPresenter()Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;
    .locals 3
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 165
    const-class v0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    return-object v0
.end method

.method public setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V
    .locals 0

    .line 1649
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    return-void
.end method

.method public setInitialSearchString(Ljava/lang/String;)V
    .locals 0

    .line 1657
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->initialSearchString:Ljava/lang/String;

    return-void
.end method

.method public setUserWithCryptoAddressDelegate(Lcom/iMe/fork/utils/Callbacks$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->userWithCryptoAddressDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    return-void
.end method

.method public showErrorDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 7

    .line 262
    new-instance v6, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v6, p0, p5}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ContactsActivity;Ljava/lang/Long;)V

    const/16 v4, 0x11

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 263
    invoke-static/range {v0 .. v6}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDialogInfoWithAnimation(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 262
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRequestPermissionDialog(Ljava/lang/String;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    .line 251
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRequestPermissionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method
