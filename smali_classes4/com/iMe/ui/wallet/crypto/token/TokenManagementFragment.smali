.class public final Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "TokenManagementFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$Companion;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenManagementFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenManagementFragment.kt\ncom/iMe/ui/wallet/crypto/token/TokenManagementFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,440:1\n13#2,4:441\n262#3,2:445\n262#3,2:483\n262#3,2:485\n4#4:447\n5#4,2:450\n4#4:452\n5#4,2:455\n2634#5:448\n2634#5:453\n1#6:449\n1#6:454\n58#7,23:457\n93#7,3:480\n*S KotlinDebug\n*F\n+ 1 TokenManagementFragment.kt\ncom/iMe/ui/wallet/crypto/token/TokenManagementFragment\n*L\n61#1:441,4\n125#1:445,2\n349#1:483,2\n353#1:485,2\n271#1:447\n271#1:450,2\n289#1:452\n289#1:455,2\n271#1:448\n289#1:453\n271#1:449\n289#1:454\n328#1:457,23\n328#1:480,3\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;


# direct methods
.method public static synthetic $r8$lambda$06cV3W2Ny6jyjM8wi-1Bj0zRS1w(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->showChooseNetworkDialog$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4A89RjuG8pDMj82At95c3sVoBG8(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->showTokensListsInfoDialog()V

    return-void
.end method

.method public static synthetic $r8$lambda$o5knBMnb6OEeDv5iAU2e5uuzWMc(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->setupViews$lambda$18$lambda$16$lambda$15(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q-iFQuJ_-6Z8SxELmKKCBxUZyNs(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->setupColors()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 61
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 66
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->Companion:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;)V
    .locals 4

    const-string/jumbo v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    .line 61
    new-instance p1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 61
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 66
    new-instance p1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    return-object p0
.end method

.method public static final synthetic access$openQRScan(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->openQRScan()V

    return-void
.end method

.method public static final synthetic access$showTokensListsInfoDialog(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->showTokensListsInfoDialog()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    return-object v0
.end method

.method private final openQRScan()V
    .locals 2

    .line 405
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$openQRScan$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$openQRScan$1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V

    const/4 v1, 0x1

    .line 401
    invoke-static {p0, v1, v1, v0, v1}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private final setupActionBar()V
    .locals 8

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 238
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 239
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    .line 241
    sget-object v3, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;->INSTANCE:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/R$string;->wallet_tokens_management_title_import:I

    goto :goto_0

    .line 242
    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->wallet_tokens_management_title_details:I

    .line 239
    :goto_0
    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 245
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 246
    new-instance v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 254
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    instance-of v1, v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;

    if-eqz v1, :cond_1

    .line 255
    new-instance v1, Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v2, "parentActivity"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/iMe/ui/custom/NetworkTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    .line 256
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v1, Lcom/iMe/common/IdFabric$Menu;->NETWORK_SWITCH:I

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->disableRipple()V

    const-string/jumbo v1, "setupActionBar$lambda$6$lambda$5"

    .line 258
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 259
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    const v2, 0x800015

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private final setupAddressOptions(ZLcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 8

    .line 368
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->buttonAddressOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 369
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    .line 370
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    sget-object v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;->INSTANCE:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v7, "setupAddressOptions$lambda$21"

    if-eqz v1, :cond_0

    .line 371
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 372
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_backup_scan_qr:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 373
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupAddressOptions$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupAddressOptions$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 376
    sget p1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 377
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v1, "AccDescrMoreOptions"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 379
    sget p1, Lcom/iMe/common/IdFabric$Menu;->COPY:I

    .line 380
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    .line 381
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_copy_address:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 378
    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p2, :cond_1

    .line 383
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getExplorer()Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 385
    sget p2, Lcom/iMe/common/IdFabric$Menu;->SCAN_ADDRESS:I

    .line 387
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 388
    sget v2, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_open_etherscan:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 389
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 387
    invoke-interface {v1, v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-virtual {v0, p2, v5, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p2

    .line 392
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getLogoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(Ljava/lang/String;)V

    .line 395
    :cond_1
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupAddressOptions$1$3;

    invoke-direct {v4, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupAddressOptions$1$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private final setupColors()V
    .locals 12

    .line 269
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/view/ViewGroup;

    .line 271
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->linearAddress:Landroid/widget/LinearLayout;

    const-string v4, "linearAddress"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->linearInfo:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v5, "linearInfo"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->linearSafety:Landroid/widget/LinearLayout;

    const-string v6, "linearSafety"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Landroid/view/ViewGroup;

    .line 272
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->editAddress:Landroid/widget/EditText;

    .line 275
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 276
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 278
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->buttonAddressOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    const/4 v2, 0x6

    new-array v8, v2, [Landroid/widget/TextView;

    .line 281
    iget-object v9, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textAddress:Landroid/widget/TextView;

    const-string/jumbo v10, "textAddress"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v8, v4

    iget-object v9, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textSymbolValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v10, "textSymbolValue"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v8, v5

    iget-object v9, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textNameValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v10, "textNameValue"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v8, v6

    .line 282
    iget-object v9, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textDecimalsValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v10, "textDecimalsValue"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v8, v1

    iget-object v9, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textNetworkValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v10, "textNetworkValue"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    aput-object v9, v8, v10

    iget-object v9, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textSafetyStatus:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v11, "textSafetyStatus"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x5

    aput-object v9, v8, v11

    .line 279
    invoke-static {v7, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    new-array v2, v2, [Landroid/widget/TextView;

    .line 286
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textIconTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textIconTitle"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v4

    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textSymbolTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textSymbolTitle"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v5

    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textNameTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textNameTitle"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    .line 287
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textDecimalsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textDecimalsTitle"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v1

    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textNetworkTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textNetworkTitle"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v10

    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textSafetyTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textSafetyTitle"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v11

    .line 284
    invoke-static {v3, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    new-array v1, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 289
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textAddressTitle:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v2, v1, v4

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textInformationTitle:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v2, v1, v5

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textSafetyTitle:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v2, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 290
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v3, "setupColors$lambda$12$lambda$9"

    .line 291
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_1

    .line 293
    :cond_1
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->buttonSafetyInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string/jumbo v2, "setupColors$lambda$12$lambda$10"

    .line 294
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 295
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 297
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->linearVerification:Landroid/widget/LinearLayout;

    const-string v3, "linearVerification"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v4, v5, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 298
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->imageSafetyStatusArrow:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v6, "imageSafetyStatusArrow"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 299
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textNotFound:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->buttonAction:Landroid/widget/TextView;

    const/4 v1, -0x1

    .line 301
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const-string/jumbo v1, "setupColors$lambda$12$lambda$11"

    .line 302
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 305
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    .line 306
    instance-of v6, v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;

    if-eqz v6, :cond_2

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    goto :goto_2

    .line 307
    :cond_2
    instance-of v1, v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    if-eqz v1, :cond_3

    .line 304
    :goto_2
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    .line 303
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 311
    invoke-static {v0, v4, v5, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleForeground$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void

    .line 307
    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final setupListeners()V
    .locals 13

    .line 317
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;

    move-result-object v0

    .line 318
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->buttonSafetyInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "buttonSafetyInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 321
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->linearVerification:Landroid/widget/LinearLayout;

    const-string v1, "linearVerification"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupListeners$1$2;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 324
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->buttonAction:Landroid/widget/TextView;

    const-string v2, "buttonAction"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupListeners$1$3;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupListeners$1$3;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 327
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    sget-object v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;->INSTANCE:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->editAddress:Landroid/widget/EditText;

    const-string v1, "editAddress"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupListeners$lambda$14$$inlined$doAfterTextChanged$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupListeners$lambda$14$$inlined$doAfterTextChanged$1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private final setupViews()V
    .locals 6

    .line 336
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;

    move-result-object v0

    .line 337
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->buttonAddressOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo v2, "setupViews$lambda$18$lambda$16"

    .line 338
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 339
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    instance-of v2, v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iMe/ui/custom/NetworkTypeView;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->setupAddressOptions(ZLcom/iMe/storage/domain/model/crypto/Network;)V

    .line 340
    new-instance v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 348
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->editAddress:Landroid/widget/EditText;

    const-string/jumbo v2, "setupViews$lambda$18$lambda$17"

    .line 349
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    sget-object v3, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;->INSTANCE:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v5, 0x8

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v5

    .line 262
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 351
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->channel_donations_address_field_hint:I

    invoke-interface {v2, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textAddress:Landroid/widget/TextView;

    const-string/jumbo v2, "textAddress"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    instance-of v2, v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    .line 262
    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textAddressTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_tokens_management_token_address:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textInformationTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_tokens_management_token_information:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textIconTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_tokens_management_icon:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textSymbolTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_tokens_management_symbol:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textNameTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_tokens_management_name:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textDecimalsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_tokens_management_decimals:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textNetworkTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_session_details_network:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textSafetyTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_tokens_management_token_safety:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textNotFound:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_tokens_management_token_not_found:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setupViews$lambda$18$lambda$16$lambda$15(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    sget v0, Lcom/iMe/common/IdFabric$Menu;->COPY:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->copyAddressToClipboard()V

    goto :goto_0

    .line 343
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->SCAN_ADDRESS:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->openTokenScannerUrl()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final showChooseNetworkDialog$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selectedNetwork"

    .line 97
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final showTokensListsInfoDialog()V
    .locals 9

    .line 417
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->token_lists_description:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 418
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x9

    const/4 v8, 0x0

    move-object v2, p0

    .line 416
    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createInfoBottomSheetDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    .line 415
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public copyAddressToClipboard(Ljava/lang/String;)V
    .locals 2

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 117
    invoke-static {p1, v0, v1, v0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 225
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 226
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 227
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 228
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 229
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    new-instance v10, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$$ExternalSyntheticLambda5;

    invoke-direct {v10, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 224
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->setupActionBar()V

    .line 75
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->setupColors()V

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->setupViews()V

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->setupListeners()V

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grantResults"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    array-length p2, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    xor-int/2addr p2, v0

    if-eqz p2, :cond_1

    aget p2, p3, v1

    if-nez p2, :cond_1

    const/16 p2, 0x22

    if-ne p1, p2, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->openQRScan()V

    :cond_1
    return-void
.end method

.method public openBrowserUrl(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public resetImportScreen()V
    .locals 5

    .line 129
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0, v1, v2}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->setupAddressOptions(ZLcom/iMe/storage/domain/model/crypto/Network;)V

    .line 131
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->linearInfo:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v4, "linearInfo"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v3, v1, v4, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 132
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->linearSafety:Landroid/widget/LinearLayout;

    const-string v3, "linearSafety"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v4, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method

.method public setScannedAddressText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->editAddress:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setupActionButtonState(ZZ)V
    .locals 6

    .line 141
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->buttonAction:Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/widget/TextView;

    const/4 v3, -0x1

    .line 142
    invoke-static {v3, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    const-string/jumbo v2, "setupActionButtonState$lambda$2"

    .line 143
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 144
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    .line 145
    instance-of v3, v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 146
    invoke-static {v0, v1, v5, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->wallet_tokens_management_import_confirmation_import:I

    invoke-interface {p1, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 149
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    .line 156
    :cond_1
    instance-of p2, v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 158
    invoke-static {v0, v1, v5, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->favorite_folder_delete:I

    invoke-interface {p1, p2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setupNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    :goto_0
    return-void
.end method

.method public setupTokenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/Integer;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const-string v6, "logoUrl"

    move-object/from16 v8, p1

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "address"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "ticker"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "name"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "decimals"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "network"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 171
    invoke-direct {v0, v6, v5}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->setupAddressOptions(ZLcom/iMe/storage/domain/model/crypto/Network;)V

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;

    move-result-object v13

    .line 173
    iget-object v7, v13, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->linearInfo:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v9, "linearInfo"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v7, v14, v6, v15}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 175
    iget-object v7, v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    .line 176
    instance-of v9, v7, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;

    if-eqz v9, :cond_0

    iget-object v7, v13, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->editAddress:Landroid/widget/EditText;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 177
    :cond_0
    instance-of v7, v7, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    if-eqz v7, :cond_1

    iget-object v7, v13, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textAddress:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_1
    :goto_0
    iget-object v7, v13, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->imageLogo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "imageLogo"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object/from16 v8, p1

    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 181
    iget-object v1, v13, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textSymbolValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, v13, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textNameValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v1, v13, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textDecimalsValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v1, v13, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textNetworkValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p6 .. p6}, Lcom/iMe/storage/domain/model/crypto/Network;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p7, :cond_3

    .line 187
    iget-object v1, v13, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->linearSafety:Landroid/widget/LinearLayout;

    const-string v2, "linearSafety"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v14, v6, v15}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 188
    iget-object v1, v13, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textSafetyStatus:Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    sget v2, Lorg/telegram/messenger/R$string;->plural_wallet_tokens_management_verified:I

    .line 190
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 188
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringInternal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, v13, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->imageSafetyStatus:Landroidx/appcompat/widget/AppCompatImageView;

    .line 193
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_verified:I

    goto :goto_1

    .line 194
    :cond_2
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_warning_info:I

    .line 192
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method public showChooseNetworkDialog(Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableNetworks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->Companion:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;

    .line 93
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 96
    new-instance v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    const-string p3, "parentActivity"

    .line 93
    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;->newInstance(Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showDeleteConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    move-result-object v0

    new-instance v3, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    .line 212
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createFormattedDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 217
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 218
    invoke-static {p1}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    .line 211
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showEnableConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    move-result-object v0

    new-instance v3, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    .line 202
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createFormattedDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showTokensListsDialog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenListInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "tokenLists"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;

    .line 105
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V

    .line 104
    invoke-direct {v0, v1, p1, v2}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 103
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public updateErrorTextVisibility(Z)V
    .locals 2

    .line 125
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentTokenManagementBinding;->textNotFound:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.textNotFound"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 262
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
