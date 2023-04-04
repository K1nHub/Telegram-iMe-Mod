.class public Lorg/telegram/ui/ContactsActivity;
.super Lcom/iMe/ui/base/mvp/JavaMvpFragment;
.source "ContactsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lcom/iMe/ui/contacts/ContactsView;
.implements Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;


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

.field private isChooseWalletTransferRecipient:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

.field private needFinishFragment:Z

.field private needForwardCount:Z

.field private needPhonebook:Z

.field private networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field private onlyUsers:Z

.field private permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private permissionRequestTime:J

.field public presenter:Lcom/iMe/ui/contacts/ContactsPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field private prevPosition:I

.field private prevTop:I

.field private progressToActionMode:F

.field private resetDelegate:Z

.field public resourceManager:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ">;"
        }
    .end annotation
.end field

.field private returnAsResult:Z

.field private scrollUpdated:Z

.field private searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

.field private searchWas:Z

.field private searching:Z

.field private selectAlertString:Ljava/lang/String;

.field private selectedContactsCount:Lorg/telegram/ui/Components/NumberTextView;

.field private sortByName:Z

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
.method public static synthetic $r8$lambda$2-X64o2khfyD10GJtNynlPNMjn4(Lorg/telegram/ui/ContactsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity;->lambda$onRequestPermissionsResultFragment$16(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8y37aj9agz_F_zPTdZGQMsvUCz4(Lorg/telegram/ui/ContactsActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$9(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$A6q2JKfzen78MYdjxwhXBQWciYU(Lorg/telegram/ui/ContactsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity;->lambda$createMenuForBlockedContactsAction$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HmmiCHRqgbaCBk6-OL0Up6EtCOA(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->lambda$getThemeDescriptions$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$Hs7RBqA_53Jhe-StBoW-GUsUevE(Lorg/telegram/ui/ContactsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I-N2IEwSOcQsIJtrx0OHZcQjjZU(Lorg/telegram/ui/ContactsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$onResume$14(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JeUWesf6IkVwX5toQtam0yevzWw(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/fork/enums/ContactsActionType;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$showMembersActionConfirmationAlert$5(Lcom/iMe/fork/enums/ContactsActionType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JnDmwViDFOWWsMftSn-75lQqEnc(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ContactsActivity;->lambda$didSelectResult$13(Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$U16vpVCE9NjjNiNYgSBe5xZ4sLg(Lorg/telegram/ui/ContactsActivity;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->lambda$provideTransferRecipientPresenter$0()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Uem_jfa1QH7UfedvIypia6vOC80(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/fork/enums/ContactsActionType;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity;->lambda$showMembersActionConfirmationAlert$6(Lcom/iMe/fork/enums/ContactsActionType;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YBfvP5kBa_LuFa9B9Krx97-NI1U(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$_O14409lX-kLZNjC7jxJ50DnBJI(Lorg/telegram/ui/ContactsActivity;ILandroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$10(ILandroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aqghIhBx0HjUbX3iMz-bY8bqTFU(Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$openDeleteContactsDialog$2(Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fsLKRj2hZYvO1yQe524Aq8jiXVo(Landroid/animation/ValueAnimator;Landroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity;->lambda$onCustomTransitionAnimation$17(Landroid/animation/ValueAnimator;Landroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ftzbxkYkp_7Nl5fT_RdlaWBE-ug(Lorg/telegram/ui/ContactsActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$callActionModeAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l0bDheAfoyDJnlor3AUtLbf6Iks(Lorg/telegram/ui/ContactsActivity;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$8(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qHAcpQAWkvHZfrkoZsB6YykqYiw(Lorg/telegram/ui/ContactsActivity;[Lcom/iMe/model/contacts/ContactsFilter;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactsActivity;->lambda$openFilterBottomSheet$3([Lcom/iMe/model/contacts/ContactsFilter;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t22lj9FgvrTFfE4IEV84GY1ykcY(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ContactsActivity;->lambda$didSelectResult$12(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vVGi7f56JCL3-jFm-oPm9UjKcGw(Lorg/telegram/ui/ContactsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$askForPermissons$15(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yCgx4UCk_Q-pdmE84MPYZagyrdA(Lorg/telegram/ui/ContactsActivity;Landroid/animation/AnimatorSet;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactsActivity;->lambda$onCustomTransitionAnimation$18(Landroid/animation/AnimatorSet;ZLandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 157
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

    .line 548
    invoke-direct {p0, p1}, Lcom/iMe/ui/base/mvp/JavaMvpFragment;-><init>(Landroid/os/Bundle;)V

    .line 144
    const-class p1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {p1}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->resourceManager:Lkotlin/Lazy;

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->isChooseWalletTransferRecipient:Z

    .line 501
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const/4 p1, 0x1

    .line 516
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->allowSelf:Z

    .line 517
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    .line 518
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    .line 519
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    .line 520
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->resetDelegate:Z

    const/4 v0, 0x0

    .line 523
    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    .line 525
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    .line 530
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    .line 534
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    const/4 p1, -0x1

    .line 538
    iput p1, p0, Lorg/telegram/ui/ContactsActivity;->animationIndex:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ContactsActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity;->validateAndGoNext(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ContactsActivity;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->floatingHidden:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/ContactsActivity;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->floatingHidden:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ContactsActivity;Z)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->hideFloatingButton(Z)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->showItemsAnimated()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ContactsActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ContactsActivity;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/ContactsActivity;->prevPosition:I

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/ContactsActivity;I)I
    .locals 0

    .line 135
    iput p1, p0, Lorg/telegram/ui/ContactsActivity;->prevPosition:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ContactsActivity;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/ContactsActivity;->prevTop:I

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/ContactsActivity;I)I
    .locals 0

    .line 135
    iput p1, p0, Lorg/telegram/ui/ContactsActivity;->prevTop:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->scrollUpdated:Z

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/ContactsActivity;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->scrollUpdated:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ContactsActivity;)Landroid/view/View;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/ContactsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->bounceIconAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ContactsActivity;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/ContactsActivity;->animationIndex:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ContactsActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->openDeleteContactsDialog(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/ContactsActivity;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->searching:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/ContactsActivity;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->searching:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ContactsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->contactsPrivacySettingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method private askForPermissons(Z)V
    .locals 4

    .line 1336
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1337
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

    .line 1340
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    if-eqz p1, :cond_1

    .line 1341
    new-instance p1, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createContactsPermissionDialog(Landroid/app/Activity;Lorg/telegram/messenger/MessagesStorage$IntCallback;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1348
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1351
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ContactsActivity;->permissionRequestTime:J

    .line 1352
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_CONTACTS"

    .line 1354
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 1355
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 1356
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v1, 0x1

    .line 1358
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1360
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private callActionModeAnimation()V
    .locals 3

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBarColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 361
    iget v2, p0, Lorg/telegram/ui/ContactsActivity;->progressToActionMode:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBarColorAnimator:Landroid/animation/ValueAnimator;

    .line 362
    new-instance v1, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBarColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBarColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBarColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private createActionMode()V
    .locals 9

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 347
    new-instance v1, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ContactsActivity;->selectedContactsCount:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v2, 0x12

    .line 348
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 349
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->selectedContactsCount:Lorg/telegram/ui/Components/NumberTextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 350
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->selectedContactsCount:Lorg/telegram/ui/Components/NumberTextView;

    const-string v2, "actionBarActionModeDefaultIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 351
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

    .line 353
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

    .line 424
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 426
    invoke-static {}, Lcom/iMe/fork/enums/ContactsActionType;->getTextsArray()[Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {}, Lcom/iMe/fork/enums/ContactsActionType;->getIconsArray()[I

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    .line 425
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 430
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

    .line 1155
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 1156
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1159
    :cond_0
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    const-string v2, "Cancel"

    const-string v3, "OK"

    if-eqz p2, :cond_3

    .line 1160
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-eqz p2, :cond_1

    .line 1162
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

    .line 1164
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 1168
    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/ContactsActivity;->channelId:J

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-eqz p2, :cond_3

    .line 1169
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v4, p0, Lorg/telegram/ui/ContactsActivity;->channelId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    .line 1170
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1171
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1172
    sget p2, Lorg/telegram/messenger/R$string;->AddBotAdminAlert:I

    const-string v3, "AddBotAdminAlert"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1173
    sget p2, Lorg/telegram/messenger/R$string;->AddBotAsAdmin:I

    const-string v3, "AddBotAsAdmin"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1174
    sget p2, Lorg/telegram/messenger/R$string;->AddAsAdmin:I

    const-string v3, "AddAsAdmin"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v3, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1, p3}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1180
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1182
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->CantAddBotAsAdmin:I

    const-string p2, "CantAddBotAsAdmin"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1183
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1185
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1189
    :cond_3
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1190
    sget p3, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v4, "AppName"

    invoke-static {v4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1191
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p3, v4}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1193
    iget-boolean v4, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p3, v5, v6

    .line 1194
    sget p3, Lorg/telegram/messenger/R$string;->AddToTheGroupForwardCount:I

    const-string v6, "AddToTheGroupForwardCount"

    invoke-static {v6, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v5, v1

    const-string p3, "%s\n\n%s"

    invoke-static {p3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1195
    new-instance v5, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41900000    # 18.0f

    .line 1196
    invoke-virtual {v5, v1, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    const-string v6, "50"

    .line 1197
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "dialogTextBlack"

    .line 1198
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    const/16 v6, 0x11

    .line 1199
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setGravity(I)V

    .line 1200
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v4, 0x6

    .line 1201
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1202
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1204
    new-instance v4, Lorg/telegram/ui/ContactsActivity$11;

    invoke-direct {v4, p0, v5}, Lorg/telegram/ui/ContactsActivity$11;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1238
    invoke-virtual {p2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2

    :cond_4
    move-object v5, v0

    .line 1240
    :goto_2
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1242
    sget p3, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-instance v3, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1, v5}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1243
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1244
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    if-eqz v5, :cond_a

    .line 1246
    invoke-virtual {v5}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_6

    .line 1248
    instance-of p2, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_5

    .line 1249
    move-object p2, p1

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_5
    const/16 p2, 0x18

    .line 1251
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/16 p2, 0x24

    .line 1252
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1253
    invoke-virtual {v5, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1255
    :cond_6
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v5, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    goto :goto_3

    .line 1259
    :cond_7
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->isChooseWalletTransferRecipient:Z

    if-eqz p2, :cond_8

    .line 1260
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ContactsActivity;->validateAndGoNext(Ljava/lang/String;Z)V

    return-void

    .line 1264
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    if-eqz p2, :cond_9

    .line 1265
    invoke-interface {p2, p1, p3, p0}, Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V

    .line 1266
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->resetDelegate:Z

    if-eqz p1, :cond_9

    .line 1267
    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    .line 1270
    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    if-eqz p1, :cond_a

    .line 1271
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_a
    :goto_3
    return-void
.end method

.method private hideActionMode()V
    .locals 3

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBarColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 341
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->callActionModeAnimation()V

    return-void
.end method

.method private hideFloatingButton(Z)V
    .locals 8

    .line 1483
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->floatingHidden:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1486
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->floatingHidden:Z

    .line 1487
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    .line 1488
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

    .line 1489
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1490
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1491
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    xor-int/2addr p1, v1

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1492
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private synthetic lambda$askForPermissons$15(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1342
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    if-nez p1, :cond_1

    return-void

    .line 1346
    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/ContactsActivity;->askForPermissons(Z)V

    return-void
.end method

.method private synthetic lambda$callActionModeAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 363
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ContactsActivity;->progressToActionMode:F

    const/4 p1, 0x0

    .line 364
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 365
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

    .line 366
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

    .line 369
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$createMenuForBlockedContactsAction$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 428
    invoke-static {p2}, Lcom/iMe/fork/enums/ContactsActionType;->getByPosition(I)Lcom/iMe/fork/enums/ContactsActionType;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->showMembersActionConfirmationAlert(Lcom/iMe/fork/enums/ContactsActionType;)V

    return-void
.end method

.method private synthetic lambda$createView$10(ILandroid/view/View;I)V
    .locals 6

    .line 866
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    const-string v2, "user_id"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_8

    .line 867
    invoke-virtual {v1, p3}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 868
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_6

    .line 869
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 870
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Adapters/SearchAdapter;->isGlobalSearch(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 871
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 872
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p2, v4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 874
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p3

    invoke-virtual {p3, p2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 876
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-eqz p2, :cond_2

    .line 877
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    if-eqz p2, :cond_1

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_1

    return-void

    .line 880
    :cond_1
    invoke-direct {p0, p1, v5, v3}, Lorg/telegram/ui/ContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    goto/16 :goto_3

    .line 882
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz p2, :cond_4

    .line 883
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_3

    return-void

    .line 886
    :cond_3
    iput-boolean v5, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    .line 887
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/SecretChatHelper;->getInstance(I)Lorg/telegram/messenger/SecretChatHelper;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_3

    .line 889
    :cond_4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 890
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 891
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 893
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz p1, :cond_5

    .line 894
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 896
    :cond_5
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_3

    .line 900
    :cond_6
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 901
    check-cast p1, Ljava/lang/String;

    const-string p2, "section"

    .line 902
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    .line 903
    new-instance p2, Lorg/telegram/ui/NewContactBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/NewContactBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    .line 904
    invoke-virtual {p2, p1, v5}, Lorg/telegram/ui/NewContactBottomSheet;->setInitialPhoneNumber(Ljava/lang/String;Z)V

    .line 905
    invoke-virtual {p2}, Lorg/telegram/ui/NewContactBottomSheet;->show()V

    goto/16 :goto_3

    .line 907
    :cond_7
    instance-of p2, p1, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p2, :cond_21

    .line 908
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 909
    iget-object p2, p1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object p3, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p2, p3, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createContactInviteDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 912
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 913
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {v1, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result p3

    if-ltz p3, :cond_21

    if-gez v0, :cond_9

    goto/16 :goto_3

    .line 918
    :cond_9
    instance-of v1, p2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 919
    check-cast p2, Lorg/telegram/ui/Cells/UserCell;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ContactsActivity;->processSwitchCheckedUserCell(Lorg/telegram/ui/Cells/UserCell;)V

    return-void

    .line 922
    :cond_a
    instance-of p2, p2, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;

    if-eqz p2, :cond_b

    .line 923
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->openFilterBottomSheet()V

    return-void

    .line 927
    :cond_b
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    if-eqz p2, :cond_c

    if-eqz p1, :cond_19

    :cond_c
    if-nez v0, :cond_19

    .line 928
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz p2, :cond_13

    if-nez p3, :cond_d

    .line 930
    new-instance p1, Lorg/telegram/ui/InviteContactsActivity;

    invoke-direct {p1}, Lorg/telegram/ui/InviteContactsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    :cond_d
    if-ne p3, v5, :cond_21

    .line 931
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->hasGps:Z

    if-eqz p1, :cond_21

    .line 932
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_e

    .line 933
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_e

    const-string p3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 935
    invoke-virtual {p2, p3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_e

    .line 936
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity;

    invoke-direct {p1, v5}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_e
    const/16 p2, 0x1c

    if-lt p1, p2, :cond_f

    .line 943
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    .line 944
    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v5

    goto :goto_0

    :cond_f
    const/16 p2, 0x13

    if-lt p1, p2, :cond_11

    .line 947
    :try_start_0
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "location_mode"

    invoke-static {p1, p2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_10

    move v4, v5

    :cond_10
    move v5, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 950
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_11
    :goto_0
    if-nez v5, :cond_12

    .line 954
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 957
    :cond_12
    new-instance p1, Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-direct {p1}, Lorg/telegram/ui/PeopleNearbyActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    :cond_13
    if-eqz p1, :cond_15

    if-nez p3, :cond_21

    .line 961
    new-instance p1, Lorg/telegram/ui/GroupInviteActivity;

    iget-wide p2, p0, Lorg/telegram/ui/ContactsActivity;->chatId:J

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_14

    goto :goto_1

    :cond_14
    iget-wide p2, p0, Lorg/telegram/ui/ContactsActivity;->channelId:J

    :goto_1
    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/GroupInviteActivity;-><init>(J)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    :cond_15
    if-nez p3, :cond_16

    .line 965
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 966
    new-instance p2, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_3

    :cond_16
    if-ne p3, v5, :cond_17

    .line 968
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "onlyUsers"

    .line 969
    invoke-virtual {p1, p2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "destroyAfterSelect"

    .line 970
    invoke-virtual {p1, p2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "createSecretChat"

    .line 971
    invoke-virtual {p1, p2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "allowBots"

    .line 972
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "allowSelf"

    .line 973
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 974
    new-instance p2, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_3

    :cond_17
    const/4 p1, 0x2

    if-ne p3, p1, :cond_21

    .line 976
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 977
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    const-string p3, "channel_intro"

    if-nez p2, :cond_18

    invoke-interface {p1, p3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 978
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "step"

    .line 979
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 980
    new-instance p2, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 982
    :cond_18
    new-instance p2, Lorg/telegram/ui/ActionIntroActivity;

    invoke-direct {p2, v4}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 983
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 988
    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p1, v0, p3}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object p1

    .line 990
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_1e

    .line 991
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 992
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-eqz p2, :cond_1b

    .line 993
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    if-eqz p2, :cond_1a

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_1a

    return-void

    .line 996
    :cond_1a
    invoke-direct {p0, p1, v5, v3}, Lorg/telegram/ui/ContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    goto/16 :goto_3

    .line 998
    :cond_1b
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz p2, :cond_1c

    .line 999
    iput-boolean v5, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    .line 1000
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/SecretChatHelper;->getInstance(I)Lorg/telegram/messenger/SecretChatHelper;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_3

    .line 1002
    :cond_1c
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1003
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1004
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1006
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz p1, :cond_1d

    .line 1007
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_3

    .line 1009
    :cond_1d
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_3

    .line 1013
    :cond_1e
    instance-of p2, p1, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p2, :cond_21

    .line 1014
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1016
    iget-object p2, p1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1f

    .line 1017
    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_1f
    move-object p1, v3

    :goto_2
    if-eqz p1, :cond_21

    .line 1019
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_20

    goto :goto_3

    .line 1022
    :cond_20
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1023
    sget p3, Lorg/telegram/messenger/R$string;->InviteUser:I

    const-string v0, "InviteUser"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1024
    sget p3, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v0, "AppName"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1026
    sget p3, Lorg/telegram/messenger/R$string;->OK:I

    const-string v0, "OK"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ContactsActivity;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1035
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p3, "Cancel"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1036
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    nop

    :cond_21
    :goto_3
    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/view/View;)V
    .locals 1

    .line 1092
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustNothing(Landroid/app/Activity;I)V

    .line 1094
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->isChooseWalletTransferRecipient:Z

    if-eqz p1, :cond_0

    .line 1095
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getRecipient()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ContactsActivity;->validateAndGoNext(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1097
    :cond_0
    new-instance p1, Lorg/telegram/ui/ContactsActivity$9;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, p0, v0}, Lorg/telegram/ui/ContactsActivity$9;-><init>(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    .line 1103
    invoke-virtual {p1}, Lorg/telegram/ui/NewContactBottomSheet;->show()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$7()V
    .locals 0

    .line 802
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->openQrCodeScreen()V

    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;I)Z
    .locals 0

    .line 858
    instance-of p2, p1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz p2, :cond_0

    .line 859
    check-cast p1, Lorg/telegram/ui/Cells/UserCell;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->processSwitchCheckedUserCell(Lorg/telegram/ui/Cells/UserCell;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$9(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1028
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    const-string v0, "sms"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "sms_body"

    .line 1029
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/ContactsController;->getInviteText(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/16 p3, 0x1f4

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1032
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$didSelectResult$12(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1175
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    if-eqz p3, :cond_0

    .line 1176
    invoke-interface {p3, p1, p2, p0}, Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V

    const/4 p1, 0x0

    .line 1177
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    :cond_0
    return-void
.end method

.method private synthetic lambda$didSelectResult$13(Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1242
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

.method private synthetic lambda$getThemeDescriptions$19()V
    .locals 5

    .line 1752
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    .line 1753
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1755
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1756
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v4, :cond_0

    .line 1757
    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    goto :goto_1

    .line 1758
    :cond_0
    instance-of v4, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v4, :cond_1

    .line 1759
    check-cast v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static synthetic lambda$onCustomTransitionAnimation$17(Landroid/animation/ValueAnimator;Landroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1564
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/16 p2, 0x30

    .line 1565
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p0

    .line 1566
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onCustomTransitionAnimation$18(Landroid/animation/AnimatorSet;ZLandroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1599
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

    .line 1600
    invoke-virtual/range {p1 .. p1}, Landroid/animation/AnimatorSet;->start()V

    const/16 v2, 0x34

    if-eqz p2, :cond_0

    .line 1602
    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v5, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon:I

    invoke-virtual {v3, v5, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1603
    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    .line 1605
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v5, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon_reverse:I

    invoke-virtual {v3, v5, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1606
    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1608
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->bounceIconAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 1609
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1611
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ContactsActivity;->bounceIconAnimator:Landroid/animation/AnimatorSet;

    .line 1612
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

    if-eqz p2, :cond_7

    move v11, v7

    :goto_1
    const/4 v12, 0x6

    if-ge v11, v12, :cond_c

    .line 1616
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    if-nez v11, :cond_2

    new-array v13, v8, [Landroid/animation/Animator;

    .line 1618
    iget-object v14, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v15, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v10, [F

    fill-array-data v3, :array_0

    .line 1619
    invoke-static {v14, v15, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v13, v7

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_1

    .line 1620
    invoke-static {v3, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v13, v4

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_2

    .line 1621
    invoke-static {v1, v3, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v13, v10

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_3

    .line 1622
    invoke-static {v1, v3, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v13, v9

    .line 1618
    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v3, 0x3e02b931

    mul-float/2addr v3, v2

    float-to-long v13, v3

    .line 1624
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1625
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_2

    :cond_2
    if-ne v11, v4, :cond_3

    new-array v3, v8, [Landroid/animation/Animator;

    .line 1627
    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_4

    .line 1628
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v7

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_5

    .line 1629
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v4

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_6

    .line 1630
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v10

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_7

    .line 1631
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v9

    .line 1627
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v3, 0x3eb93105

    mul-float/2addr v3, v2

    float-to-long v13, v3

    .line 1633
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1634
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_2

    :cond_3
    if-ne v11, v10, :cond_4

    new-array v3, v8, [Landroid/animation/Animator;

    .line 1636
    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_8

    .line 1637
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v7

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_9

    .line 1638
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v4

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_a

    .line 1639
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v10

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_b

    .line 1640
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v9

    .line 1636
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v3, 0x3e59df52

    mul-float/2addr v3, v2

    float-to-long v13, v3

    .line 1642
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1643
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_2

    :cond_4
    if-ne v11, v9, :cond_5

    new-array v3, v8, [Landroid/animation/Animator;

    .line 1645
    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_c

    .line 1646
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v7

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_d

    .line 1647
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v4

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_e

    .line 1648
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v10

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_f

    .line 1649
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v9

    .line 1645
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v3, 0x3dd9df52

    mul-float v13, v2, v3

    float-to-long v13, v13

    .line 1651
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1652
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_2

    :cond_5
    if-ne v11, v8, :cond_6

    new-array v3, v8, [Landroid/animation/Animator;

    .line 1654
    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_10

    .line 1655
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v7

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_11

    .line 1656
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v4

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_12

    .line 1657
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v10

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_13

    .line 1658
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v9

    .line 1654
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v3, 0x3dd9df52

    mul-float v13, v2, v3

    float-to-long v13, v13

    .line 1660
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1661
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    :cond_6
    new-array v3, v8, [Landroid/animation/Animator;

    .line 1663
    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_14

    .line 1664
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v7

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_15

    .line 1665
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v4

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_16

    .line 1666
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v10

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_17

    .line 1667
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v9

    .line 1663
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v3, 0x3dae4c41

    mul-float/2addr v3, v2

    float-to-long v13, v3

    .line 1670
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1671
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1673
    :goto_2
    invoke-virtual {v12, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1674
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v13

    add-long/2addr v5, v13

    .line 1675
    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->bounceIconAnimator:Landroid/animation/AnimatorSet;

    new-array v13, v4, [Landroid/animation/Animator;

    aput-object v12, v13, v7

    invoke-virtual {v3, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_7
    move v3, v7

    :goto_3
    const/4 v11, 0x5

    if-ge v3, v11, :cond_c

    .line 1679
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    const v12, 0x3e471c72

    if-nez v3, :cond_8

    new-array v13, v8, [Landroid/animation/Animator;

    .line 1681
    iget-object v14, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v15, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v10, [F

    fill-array-data v8, :array_18

    .line 1682
    invoke-static {v14, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v7

    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_19

    .line 1683
    invoke-static {v8, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v4

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_1a

    .line 1684
    invoke-static {v1, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v10

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_1b

    .line 1685
    invoke-static {v1, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v9

    .line 1681
    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    mul-float/2addr v12, v2

    float-to-long v12, v12

    .line 1687
    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1688
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_4
    const/4 v8, 0x4

    const v12, 0x3dd9df52

    goto/16 :goto_5

    :cond_8
    if-ne v3, v4, :cond_9

    const/4 v8, 0x4

    new-array v12, v8, [Landroid/animation/Animator;

    .line 1690
    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_1c

    .line 1691
    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v7

    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_1d

    .line 1692
    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v4

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v13, v10, [F

    fill-array-data v13, :array_1e

    .line 1693
    invoke-static {v1, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v10

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v13, v10, [F

    fill-array-data v13, :array_1f

    .line 1694
    invoke-static {v1, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v9

    .line 1690
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v8, 0x3e638e39

    mul-float/2addr v8, v2

    float-to-long v12, v8

    .line 1696
    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1697
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    :cond_9
    if-ne v3, v10, :cond_a

    const/4 v8, 0x4

    new-array v13, v8, [Landroid/animation/Animator;

    .line 1699
    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_20

    .line 1700
    invoke-static {v8, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v7

    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_21

    .line 1701
    invoke-static {v8, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v4

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_22

    .line 1702
    invoke-static {v1, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v10

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_23

    .line 1703
    invoke-static {v1, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v13, v9

    .line 1699
    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    mul-float/2addr v12, v2

    float-to-long v12, v12

    .line 1705
    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1706
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_4

    :cond_a
    if-ne v3, v9, :cond_b

    const/4 v8, 0x4

    new-array v12, v8, [Landroid/animation/Animator;

    .line 1708
    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_24

    .line 1709
    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v7

    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_25

    .line 1710
    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v4

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v13, v10, [F

    fill-array-data v13, :array_26

    .line 1711
    invoke-static {v1, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v10

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v13, v10, [F

    fill-array-data v13, :array_27

    .line 1712
    invoke-static {v1, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v12, v9

    .line 1708
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v8, v2

    float-to-long v12, v8

    .line 1714
    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1715
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_4

    :cond_b
    const/4 v8, 0x4

    new-array v12, v8, [Landroid/animation/Animator;

    .line 1717
    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_28

    .line 1718
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v12, v7

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_29

    .line 1719
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v12, v4

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_2a

    .line 1720
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v12, v10

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v10, [F

    fill-array-data v14, :array_2b

    .line 1721
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v12, v9

    .line 1717
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v12, 0x3dd9df52

    mul-float v13, v2, v12

    float-to-long v13, v13

    .line 1723
    invoke-virtual {v11, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1724
    sget-object v13, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1726
    :goto_5
    invoke-virtual {v11, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1727
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v13

    add-long/2addr v5, v13

    .line 1728
    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->bounceIconAnimator:Landroid/animation/AnimatorSet;

    new-array v14, v4, [Landroid/animation/Animator;

    aput-object v11, v14, v7

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 1731
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->bounceIconAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/ContactsActivity$15;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ContactsActivity$15;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1742
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

.method private synthetic lambda$onRequestPermissionsResultFragment$16(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1376
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1377
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

    .line 1378
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1380
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onResume$14(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1290
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    if-nez p1, :cond_1

    return-void

    .line 1294
    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/ContactsActivity;->askForPermissons(Z)V

    return-void
.end method

.method private static synthetic lambda$openDeleteContactsDialog$2(Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 0

    .line 381
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 382
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openFilterBottomSheet$3([Lcom/iMe/model/contacts/ContactsFilter;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 1

    .line 407
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 408
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aget-object p1, p1, p3

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/ForkCommonController;->setSelectedContactsFilter(Lcom/iMe/model/contacts/ContactsFilter;)V

    .line 409
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ForkCommonController;->saveConfig()V

    .line 411
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/iMe/fork/controller/ForkCommonController;->getSelectedContactsFilter()Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setFilterModel(Lcom/iMe/model/contacts/ContactsFilter;)V

    .line 413
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->refreshContactsList()V

    .line 414
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 417
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

    .line 153
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$showMembersActionConfirmationAlert$5(Lcom/iMe/fork/enums/ContactsActionType;)V
    .locals 0

    .line 436
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->startContactsProcessingService(Lcom/iMe/fork/enums/ContactsActionType;)V

    return-void
.end method

.method private synthetic lambda$showMembersActionConfirmationAlert$6(Lcom/iMe/fork/enums/ContactsActionType;Ljava/lang/Boolean;)V
    .locals 0

    .line 448
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 449
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->startContactsProcessingService(Lcom/iMe/fork/enums/ContactsActionType;)V

    :cond_0
    return-void
.end method

.method private openDeleteContactsDialog(Ljava/lang/Runnable;)V
    .locals 9

    .line 377
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 380
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

    .line 388
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 392
    sget v1, Lorg/telegram/messenger/R$string;->contacts_filter_header:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 393
    invoke-static {}, Lcom/iMe/model/contacts/ContactsFilter;->values()[Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v1

    .line 395
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 396
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 397
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v4, 0x0

    move v5, v4

    .line 399
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 400
    new-instance v6, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x4

    .line 401
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v8, v4, v7, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 402
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const-string v7, "radioBackground"

    .line 403
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    const-string v8, "dialogRadioBackgroundChecked"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 404
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/iMe/model/contacts/ContactsFilter;->getTitle()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

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

    .line 405
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 406
    new-instance v7, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v7, p0, v1, v0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ContactsActivity;[Lcom/iMe/model/contacts/ContactsFilter;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 420
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private openQrCodeScreen()V
    .locals 3

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 291
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->showCameraScanner()V

    return-void
.end method

.method private processSwitchCheckedUserCell(Lorg/telegram/ui/Cells/UserCell;)V
    .locals 4

    .line 304
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 310
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->presenter:Lcom/iMe/ui/contacts/ContactsPresenter;

    .line 311
    invoke-virtual {v2, v0, v1}, Lcom/iMe/ui/contacts/ContactsPresenter;->indexOfSelectedId(J)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 310
    :goto_0
    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 315
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->presenter:Lcom/iMe/ui/contacts/ContactsPresenter;

    invoke-virtual {p1, v0, v1}, Lcom/iMe/ui/contacts/ContactsPresenter;->addOrRemoveSelectedContact(J)V

    return-void
.end method

.method private showActionMode()V
    .locals 3

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeIsExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->createActionMode()V

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    .line 327
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->callActionModeAnimation()V

    return-void
.end method

.method private showCameraScanner()V
    .locals 2

    .line 295
    new-instance v0, Lorg/telegram/ui/ContactsActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContactsActivity$1;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    const/4 v1, 0x1

    invoke-static {p0, v1, v1, v0, v1}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private showItemsAnimated()V
    .locals 3

    .line 1508
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 1509
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 1510
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ContactsActivity$13;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ContactsActivity$13;-><init>(Lorg/telegram/ui/ContactsActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private showMembersActionConfirmationAlert(Lcom/iMe/fork/enums/ContactsActionType;)V
    .locals 9

    .line 434
    sget-object v0, Lcom/iMe/fork/enums/ContactsActionType;->DELETE:Lcom/iMe/fork/enums/ContactsActionType;

    if-ne p1, v0, :cond_0

    .line 435
    new-instance v0, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/fork/enums/ContactsActionType;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/ContactsActivity;->openDeleteContactsDialog(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 438
    :cond_0
    sget-object v0, Lcom/iMe/fork/enums/ContactsActionType;->UNBLOCK:Lcom/iMe/fork/enums/ContactsActionType;

    if-ne p1, v0, :cond_1

    .line 441
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    sget v0, Lorg/telegram/messenger/R$string;->contacts_filter_confirm_unblock:I

    .line 443
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->Unblock:I

    const-string v1, "Unblock"

    .line 444
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v8, p0, p1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/fork/enums/ContactsActionType;)V

    move-object v1, p0

    .line 439
    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->showConfirmationDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private startContactsProcessingService(Lcom/iMe/fork/enums/ContactsActionType;)V
    .locals 6

    .line 457
    const-class v0, Lcom/iMe/services/FilteredContactsProcessingService;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isServiceRunning(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    sget p1, Lorg/telegram/messenger/R$string;->already_processing:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 460
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->getSelectedContactsFilter()Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getFilteredContacts(Lcom/iMe/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 463
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 464
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    :cond_1
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v4, Lcom/iMe/services/FilteredContactsProcessingService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "contacts_ids"

    .line 470
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 476
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "selected_filter_name"

    .line 474
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "selected_contacts_action_name"

    .line 478
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void
.end method

.method private updateVisibleRows(I)V
    .locals 4

    .line 1471
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 1472
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1474
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1475
    instance-of v3, v2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_0

    .line 1476
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

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->transferRecipientPresenter:Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->validateRecipient(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public clearSelectedContacts()V
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public closeActionMode()V
    .locals 2

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 207
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->changeActionMode(Z)V

    .line 210
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->hideActionMode()V

    :cond_1
    return-void
.end method

.method public createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 3

    .line 223
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    const-string p1, "actionBarDefault"

    .line 225
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    const-string p1, "actionBarDefaultSelector"

    .line 226
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    const-string p1, "actionBarActionModeDefaultSelector"

    .line 227
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    const-string p1, "actionBarDefaultIcon"

    .line 228
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    const-string p1, "actionBarActionModeDefaultIcon"

    .line 229
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 22

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 623
    invoke-super/range {p0 .. p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    const/4 v13, 0x0

    .line 624
    iput-boolean v13, v11, Lorg/telegram/ui/ContactsActivity;->searching:Z

    .line 625
    iput-boolean v13, v11, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    .line 628
    iget-boolean v0, v11, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, v11, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v1, v13}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v1, v11, Lorg/telegram/ui/ContactsActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 631
    :cond_0
    iget-object v0, v11, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 632
    :goto_0
    iget-object v0, v11, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 633
    iget-boolean v0, v11, Lorg/telegram/ui/ContactsActivity;->destroyAfterSelect:Z

    if-eqz v0, :cond_3

    .line 634
    iget-boolean v0, v11, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, v11, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->SelectContact:I

    const-string v2, "SelectContact"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 637
    :cond_1
    iget-boolean v0, v11, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, v11, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->NewSecretChat:I

    const-string v2, "NewSecretChat"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 640
    :cond_2
    iget-object v0, v11, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->NewMessageTitle:I

    const-string v2, "NewMessageTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 644
    :cond_3
    iget-object v0, v11, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->Contacts:I

    const-string v2, "Contacts"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 647
    :goto_1
    iget-object v0, v11, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$2;

    invoke-direct {v1, v11}, Lorg/telegram/ui/ContactsActivity$2;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 671
    iget-object v0, v11, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 672
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v13, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ContactsActivity$3;

    invoke-direct {v2, v11}, Lorg/telegram/ui/ContactsActivity$3;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    .line 741
    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    const-string v3, "Search"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 742
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 743
    iget-boolean v1, v11, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-nez v1, :cond_5

    iget-boolean v1, v11, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-nez v1, :cond_5

    .line 744
    iget-boolean v1, v11, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_contacts_time:I

    goto :goto_2

    :cond_4
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_contacts_name:I

    :goto_2
    invoke-virtual {v0, v14, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v11, Lorg/telegram/ui/ContactsActivity;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 745
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrContactSorting:I

    const-string v3, "AccDescrContactSorting"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 748
    :cond_5
    iget-boolean v1, v11, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz v1, :cond_6

    .line 749
    sget v1, Lcom/iMe/common/IdFabric$Menu;->CONTACTS_PRIVACY_SETTINGS:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_chat_admin:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v11, Lorg/telegram/ui/ContactsActivity;->contactsPrivacySettingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 753
    :cond_6
    new-instance v15, Lorg/telegram/ui/ContactsActivity$4;

    iget-object v3, v11, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    iget-boolean v4, v11, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, v11, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    iget-boolean v8, v11, Lorg/telegram/ui/ContactsActivity;->allowSelf:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/ContactsActivity$4;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/content/Context;Landroidx/collection/LongSparseArray;ZZZZZZI)V

    iput-object v15, v11, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    .line 763
    iget-wide v0, v11, Lorg/telegram/ui/ContactsActivity;->chatId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v0, :cond_7

    .line 764
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v11, Lorg/telegram/ui/ContactsActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 765
    invoke-static {v0, v8}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    :goto_3
    move v10, v0

    goto :goto_4

    .line 766
    :cond_7
    iget-wide v0, v11, Lorg/telegram/ui/ContactsActivity;->channelId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 767
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v11, Lorg/telegram/ui/ContactsActivity;->channelId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 768
    invoke-static {v0, v8}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v9

    goto :goto_3

    :cond_8
    move v0, v13

    goto :goto_3

    :cond_9
    move v10, v13

    .line 773
    :goto_4
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v11, Lorg/telegram/ui/ContactsActivity;->hasGps:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 775
    :catchall_0
    iput-boolean v13, v11, Lorg/telegram/ui/ContactsActivity;->hasGps:Z

    .line 777
    :goto_5
    new-instance v15, Lorg/telegram/ui/ContactsActivity$5;

    iget-boolean v3, v11, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    iget-boolean v4, v11, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    iget-object v5, v11, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    iget-boolean v7, v11, Lorg/telegram/ui/ContactsActivity;->hasGps:Z

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ContactsActivity$5;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/content/Context;IZLandroidx/collection/LongSparseArray;IZ)V

    iput-object v15, v11, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    .line 799
    iget-boolean v0, v11, Lorg/telegram/ui/ContactsActivity;->isChooseWalletTransferRecipient:Z

    if-eqz v0, :cond_a

    .line 800
    iget-object v0, v11, Lorg/telegram/ui/ContactsActivity;->transferRecipientPresenter:Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->getCurrentNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    .line 801
    iget-object v0, v11, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    iget-boolean v1, v11, Lorg/telegram/ui/ContactsActivity;->isChooseWalletTransferRecipient:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setChooseWalletTransferRecipientMode(Z)V

    .line 802
    iget-object v0, v11, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, v11}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setQrCodeAction(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_6

    .line 803
    :cond_a
    iget-boolean v0, v11, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz v0, :cond_b

    .line 804
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->getSelectedContactsFilter()Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setFilterModel(Lcom/iMe/model/contacts/ContactsFilter;)V

    .line 805
    iget-object v0, v11, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->presenter:Lcom/iMe/ui/contacts/ContactsPresenter;

    invoke-virtual {v1}, Lcom/iMe/ui/contacts/ContactsPresenter;->getSelectedContacts()Landroidx/collection/LongSparseArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setCheckedMap(Landroidx/collection/LongSparseArray;)V

    .line 808
    :cond_b
    :goto_6
    iget-object v0, v11, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_d

    iget-boolean v1, v11, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    if-eqz v1, :cond_c

    move v1, v14

    goto :goto_7

    :cond_c
    move v1, v9

    goto :goto_7

    :cond_d
    move v1, v13

    :goto_7
    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setSortType(IZ)V

    .line 809
    iget-object v0, v11, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    iget-boolean v1, v11, Lorg/telegram/ui/ContactsActivity;->disableSections:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setDisableSections(Z)V

    .line 811
    new-instance v0, Lorg/telegram/ui/ContactsActivity$6;

    invoke-direct {v0, v11, v12}, Lorg/telegram/ui/ContactsActivity$6;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 824
    check-cast v0, Landroid/widget/FrameLayout;

    .line 826
    new-instance v1, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v1, v12}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x6

    .line 827
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 828
    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 830
    new-instance v2, Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-direct {v2, v12, v1, v14}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v2, v11, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 831
    invoke-virtual {v2, v1, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 832
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 833
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v14, v13}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 834
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v3, "NoResult"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    const-string v3, "SearchEmptyViewFilteredSubtitle2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    new-instance v1, Lorg/telegram/ui/ContactsActivity$7;

    invoke-direct {v1, v11, v12}, Lorg/telegram/ui/ContactsActivity$7;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/content/Context;)V

    iput-object v1, v11, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 847
    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 848
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 849
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled(I)V

    .line 850
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v12, v14, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v3, v11, Lorg/telegram/ui/ContactsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 851
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, v11, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 852
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 854
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v11, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 855
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v14, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 857
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda19;

    invoke-direct {v2, v11}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 865
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2, v11, v10}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ContactsActivity;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1042
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ContactsActivity$8;

    invoke-direct {v2, v11}, Lorg/telegram/ui/ContactsActivity$8;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1088
    iget-boolean v1, v11, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-nez v1, :cond_e

    iget-boolean v1, v11, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-eqz v1, :cond_f

    :cond_e
    iget-boolean v1, v11, Lorg/telegram/ui/ContactsActivity;->isChooseWalletTransferRecipient:Z

    if-eqz v1, :cond_1c

    .line 1089
    :cond_f
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v11, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 1090
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/16 v5, 0x38

    if-lt v2, v4, :cond_10

    move v6, v5

    goto :goto_8

    :cond_10
    const/16 v6, 0x3c

    :goto_8
    add-int/lit8 v15, v6, 0x14

    if-lt v2, v4, :cond_11

    move v6, v5

    goto :goto_9

    :cond_11
    const/16 v6, 0x3c

    :goto_9
    add-int/lit8 v16, v6, 0x14

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_12

    goto :goto_a

    :cond_12
    const/4 v8, 0x5

    :goto_a
    or-int/lit8 v17, v8, 0x50

    const/4 v7, 0x4

    if-eqz v6, :cond_13

    move/from16 v18, v7

    goto :goto_b

    :cond_13
    move/from16 v18, v13

    :goto_b
    const/16 v19, 0x0

    if-eqz v6, :cond_14

    move/from16 v20, v13

    goto :goto_c

    :cond_14
    move/from16 v20, v7

    :goto_c
    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1091
    iget-object v0, v11, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, v11}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    .line 1107
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1108
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const-string v1, "chats_actionBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v6, "chats_actionPressedBackground"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v0, v1, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ge v2, v4, :cond_15

    .line 1110
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1111
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v8, -0x1000000

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v8, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1112
    new-instance v6, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v6, v1, v0, v13, v13}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1113
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v0, v6

    .line 1116
    :cond_15
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1117
    iget-object v0, v11, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v6, "chats_actionIcon"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1118
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "view_animations"

    .line 1119
    invoke-interface {v0, v1, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1121
    iget-boolean v1, v11, Lorg/telegram/ui/ContactsActivity;->isChooseWalletTransferRecipient:Z

    if-eqz v1, :cond_16

    .line 1122
    iget-object v0, v11, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_e

    .line 1124
    :cond_16
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_17

    sget v0, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon:I

    goto :goto_d

    :cond_17
    sget v0, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon_reverse:I

    :goto_d
    const/16 v6, 0x34

    invoke-virtual {v1, v0, v6, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1126
    :goto_e
    iget-boolean v0, v11, Lorg/telegram/ui/ContactsActivity;->isChooseWalletTransferRecipient:Z

    if-eqz v0, :cond_18

    .line 1127
    iget-object v0, v11, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/messenger/R$string;->Done:I

    const-string v6, "Done"

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 1129
    :cond_18
    iget-object v0, v11, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/messenger/R$string;->CreateNewContact:I

    const-string v6, "CreateNewContact"

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_f
    if-lt v2, v4, :cond_19

    .line 1131
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v1, v14, [I

    const v6, 0x10100a7

    aput v6, v1, v13

    .line 1132
    iget-object v6, v11, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v8, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v10, v9, [F

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v10, v13

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v10, v14

    invoke-static {v6, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v3, 0xc8

    invoke-virtual {v6, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v1, v13, [I

    .line 1133
    iget-object v6, v11, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-array v15, v9, [F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v15, v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v15, v14

    invoke-static {v6, v8, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1134
    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 1135
    iget-object v0, v11, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$10;

    invoke-direct {v1, v11}, Lorg/telegram/ui/ContactsActivity$10;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1143
    :cond_19
    iget-object v0, v11, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1a

    move v14, v5

    goto :goto_10

    :cond_1a
    const/16 v14, 0x3c

    :goto_10
    if-lt v2, v3, :cond_1b

    move v15, v5

    goto :goto_11

    :cond_1b
    const/16 v15, 0x3c

    :goto_11
    const/16 v16, 0x33

    const/16 v17, 0xa

    const/16 v18, 0x6

    const/16 v19, 0xa

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    :cond_1c
    iget-object v0, v11, Lorg/telegram/ui/ContactsActivity;->initialSearchString:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 1147
    iget-object v1, v11, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->openSearchField(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 1148
    iput-object v0, v11, Lorg/telegram/ui/ContactsActivity;->initialSearchString:Ljava/lang/String;

    .line 1151
    :cond_1d
    iget-object v0, v11, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 1425
    sget p2, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    if-ne p1, p2, :cond_0

    .line 1426
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz p1, :cond_b

    .line 1427
    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->refreshOnBlockedUsersLoaded()V

    goto/16 :goto_1

    .line 1429
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onContactsActionsClicked:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_4

    .line 1430
    array-length p1, p3

    if-lt p1, v0, :cond_3

    aget-object p1, p3, v1

    instance-of p1, p1, Lcom/iMe/model/contacts/ContactsFilter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-nez p1, :cond_1

    goto :goto_0

    .line 1433
    :cond_1
    aget-object p1, p3, v1

    check-cast p1, Lcom/iMe/model/contacts/ContactsFilter;

    .line 1434
    sget-object p2, Lcom/iMe/model/contacts/ContactsFilter;->BLOCKED:Lcom/iMe/model/contacts/ContactsFilter;

    if-ne p1, p2, :cond_2

    .line 1435
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->createMenuForBlockedContactsAction()V

    goto/16 :goto_1

    .line 1437
    :cond_2
    sget-object p1, Lcom/iMe/fork/enums/ContactsActionType;->DELETE:Lcom/iMe/fork/enums/ContactsActionType;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->showMembersActionConfirmationAlert(Lcom/iMe/fork/enums/ContactsActionType;)V

    goto/16 :goto_1

    :cond_3
    :goto_0
    return-void

    .line 1440
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    if-ne p1, p2, :cond_6

    .line 1441
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz p1, :cond_b

    .line 1442
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    if-nez p2, :cond_5

    const/4 p2, 0x2

    .line 1443
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setSortType(IZ)V

    .line 1445
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1447
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_9

    .line 1448
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1449
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr p2, p1

    if-nez p2, :cond_7

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p2, p1

    if-nez p2, :cond_7

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_8

    .line 1450
    :cond_7
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->updateVisibleRows(I)V

    .line 1452
    :cond_8
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz p1, :cond_b

    .line 1453
    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortOnlineContacts()V

    goto :goto_1

    .line 1455
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    if-ne p1, p2, :cond_a

    .line 1456
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    if-eqz p1, :cond_b

    .line 1457
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1458
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1459
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const-string p3, "enc_id"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1460
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1461
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_1

    .line 1463
    :cond_a
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, p2, :cond_b

    .line 1464
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    if-nez p1, :cond_b

    .line 1465
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    :cond_b
    :goto_1
    return-void
.end method

.method protected getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 1306
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

    .line 1749
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1751
    new-instance v11, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    .line 1766
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "actionBarActionModeDefaultIcon"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "actionBarActionModeDefaultTop"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1768
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    const/4 v9, 0x0

    const-string v10, "actionBarActionModeDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v19, "windowBackgroundWhite"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1772
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v19, "actionBarDefault"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1774
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v19, "actionBarDefaultTitle"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1776
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const-string v19, "actionBarDefaultSearch"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1778
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const-string v10, "actionBarDefaultSearchPlaceholder"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1780
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v19, "listSelectorSDK21"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
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

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "windowBackgroundWhiteGrayText4"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v13

    sget-object v33, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-string v36, "divider"

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    invoke-direct/range {v29 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1786
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "fastScrollActive"

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "fastScrollInactive"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1788
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const-string v22, "fastScrollText"

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1790
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v4, v13

    const-string v5, "nameTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    const/16 v25, 0x0

    const/16 v30, 0x0

    const-string v31, "windowBackgroundWhiteBlackText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1791
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/UserCell;

    aput-object v2, v5, v13

    const-string v2, "statusColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const-string v10, "windowBackgroundWhiteGrayText"

    move-object v2, v15

    move-object v9, v11

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1792
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/UserCell;

    aput-object v2, v5, v13

    const-string v2, "statusOnlineColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "windowBackgroundWhiteBlueText"

    move-object v2, v15

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v4, v13

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v18, 0x0

    const/16 v22, 0x0

    const-string v23, "avatar_text"

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v9, "avatar_backgroundRed"

    move-object v2, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundOrange"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1796
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundViolet"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundGreen"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1798
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundCyan"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1799
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundBlue"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1800
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundPink"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
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

    const-string v23, "windowBackgroundWhiteBlackText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v26, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v4, v13

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v28

    const/16 v31, 0x0

    const-string v32, "windowBackgroundWhiteBlueText2"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1804
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v4, v13

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const/16 v17, 0x0

    const-string v23, "windowBackgroundWhiteGrayIcon"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1806
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v31, "chats_actionIcon"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "chats_actionBackground"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v17, v4, v5

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v22, "chats_actionPressedBackground"

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1810
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v4, v13

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v27

    const/16 v25, 0x0

    const-string v31, "key_graySectionText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v4, v3, v13

    const-string v21, "graySection"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v12, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v3, v7, v13

    new-array v9, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v3, v9, v13

    const/4 v6, 0x0

    const-string v11, "chats_verifiedCheck"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v4, v3, v13

    new-array v4, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v13

    const/16 v16, 0x0

    const-string v21, "chats_verifiedBackground"

    move-object v14, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1815
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v4, v13

    sget-object v26, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    const/16 v24, 0x0

    const/16 v27, 0x0

    const-string v29, "windowBackgroundWhiteGrayText3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v4, v3, v13

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    const/16 v19, 0x0

    const-string v21, "windowBackgroundWhiteBlueText3"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1817
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

    const/16 v26, 0x0

    const/16 v29, 0x0

    const-string v30, "chats_name"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v6

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
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

    const/16 v18, 0x0

    const/16 v21, 0x0

    const-string v22, "chats_secretName"

    move-object v14, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->presenter:Lcom/iMe/ui/contacts/ContactsPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/contacts/ContactsPresenter;->closeActionMode()V

    const/4 v0, 0x0

    return v0

    .line 182
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1311
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1312
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 1313
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ContactsActivity$12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContactsActivity$12;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 12

    .line 1538
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [F

    if-eqz p1, :cond_1

    .line 1542
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    goto :goto_0

    :cond_1
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1543
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1544
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v6}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 1546
    :goto_1
    instance-of v4, v0, Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_3

    .line 1547
    check-cast v0, Lorg/telegram/ui/DialogsActivity;

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_4

    return-object v1

    .line 1552
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getFloatingButton()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v10

    .line 1553
    invoke-virtual {v10}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v10}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_3

    :cond_5
    move-object v4, v1

    .line 1554
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v10}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_9

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->needDisableContactsActivityFabAnimations()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/16 v0, 0x8

    .line 1559
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    .line 1561
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1563
    :cond_7
    new-instance v0, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda0;-><init>(Landroid/animation/ValueAnimator;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1568
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    .line 1569
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1570
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_8
    const-wide/16 v0, 0x96

    .line 1572
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1573
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1575
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1576
    new-instance v1, Lorg/telegram/ui/ContactsActivity$14;

    move-object v6, v1

    move-object v7, p0

    move-object v8, v4

    move v9, p1

    move-object v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/ContactsActivity$14;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/view/View;ZLorg/telegram/ui/Components/RLottieImageView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p2, v5, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v2, p2, v1

    .line 1597
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1598
    new-instance p2, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, v0, p1, v4}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/animation/AnimatorSet;ZLandroid/view/View;)V

    const-wide/16 v1, 0x32

    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-object v0

    .line 1555
    :cond_9
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget p2, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon:I

    const/16 v0, 0x34

    invoke-virtual {p1, p2, v0, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1556
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p2

    sub-int/2addr p2, v5

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    return-object v1

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

    .line 1328
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDialogDismiss(Landroid/app/Dialog;)V

    .line 1329
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1330
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->askForPermissons(Z)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 8

    .line 553
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 555
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->loadBlockedPeersIfNeedIt()V

    .line 556
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/ContactsActivity;->observers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 558
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 559
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 560
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 561
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 562
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "is_choose_wallet_transfer_recipient"

    const/4 v3, 0x0

    .line 565
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->isChooseWalletTransferRecipient:Z

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "network_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    invoke-static {v0}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 571
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "onlyUsers"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "destroyAfterSelect"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->destroyAfterSelect:Z

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "returnAsResult"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "createSecretChat"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    .line 575
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "selectAlertString"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "allowUsernameSearch"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "needForwardCount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "allowBots"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    .line 579
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "allowSelf"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->allowSelf:Z

    .line 580
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "channelId"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/ui/ContactsActivity;->channelId:J

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "needFinishFragment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/ContactsActivity;->chatId:J

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "disableSections"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->disableSections:Z

    .line 584
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "resetDelegate"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->resetDelegate:Z

    goto :goto_0

    .line 586
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    .line 589
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-nez v0, :cond_2

    .line 590
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    .line 593
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkInviteText()V

    .line 594
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatusesMaybe()V

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 602
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 603
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/ContactsActivity;->observers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 604
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 605
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 606
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 607
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    .line 608
    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    .line 609
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 610
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ContactsActivity;->animationIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1416
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 1418
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_0
    return-void
.end method

.method public onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 236
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity;->userWithCryptoAddressDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    if-eqz p3, :cond_1

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 238
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->userWithCryptoAddressDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    invoke-interface {p1, v0, p2}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 241
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity;->userWithCryptoAddressDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    invoke-interface {p3, p1, p2}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->resetDelegate:Z

    if-eqz p1, :cond_1

    .line 244
    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->userWithCryptoAddressDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    .line 247
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    if-eqz p1, :cond_2

    .line 248
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

    .line 1368
    array-length p1, p3

    if-lez p1, :cond_0

    aget p1, p3, v1

    if-nez p1, :cond_0

    .line 1369
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->showCameraScanner()V

    goto/16 :goto_2

    .line 1371
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1372
    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    const-string p3, "AppName"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1373
    sget p2, Lorg/telegram/messenger/R$string;->QRCodePermissionNoCameraWithHint:I

    const-string p3, "QRCodePermissionNoCameraWithHint"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1374
    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    const-string p3, "PermissionOpenSettings"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1383
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    const-string p3, "OK"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1384
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    move p1, v1

    .line 1388
    :goto_0
    array-length v2, p2

    if-ge p1, v2, :cond_5

    .line 1389
    array-length v2, p3

    if-gt v2, p1, :cond_2

    goto :goto_1

    .line 1392
    :cond_2
    aget-object v2, p2, p1

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1393
    aget p1, p3, p1

    if-nez p1, :cond_3

    .line 1394
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    goto :goto_2

    .line 1396
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

    .line 1397
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v1, p0, Lorg/telegram/ui/ContactsActivity;->permissionRequestTime:J

    sub-long/2addr p1, v1

    const-wide/16 v1, 0xc8

    cmp-long p1, p1, v1

    if-gez p1, :cond_5

    .line 1399
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "package"

    .line 1400
    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 1401
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1402
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1404
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

    .line 1278
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 1279
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz v0, :cond_0

    .line 1281
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 1283
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1284
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1286
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    const-string v1, "android.permission.READ_CONTACTS"

    .line 1287
    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 1288
    invoke-virtual {v0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1289
    new-instance v1, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createContactsPermissionDialog(Landroid/app/Activity;Lorg/telegram/messenger/MessagesStorage$IntCallback;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 1296
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1298
    invoke-direct {p0, v0}, Lorg/telegram/ui/ContactsActivity;->askForPermissons(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSelectedQtyChange(I)V
    .locals 2

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectedContactsCount:Lorg/telegram/ui/Components/NumberTextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 188
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 0

    .line 615
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    .line 616
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 617
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public openActionMode()V
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 196
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->changeActionMode(Z)V

    .line 199
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->showActionMode()V

    :cond_1
    return-void
.end method

.method public openChatScreen(J)V
    .locals 2

    .line 269
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    .line 270
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 271
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method providePresenter()Lcom/iMe/ui/contacts/ContactsPresenter;
    .locals 1
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 148
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

    .line 153
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

    .line 1496
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    return-void
.end method

.method public setInitialSearchString(Ljava/lang/String;)V
    .locals 0

    .line 1504
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

    .line 283
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->userWithCryptoAddressDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-static {p0, p1, p2, p3, v0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method

.method public showRequestPermissionDialog(Ljava/lang/String;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    .line 254
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

    .line 264
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
