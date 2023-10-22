.class public final Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "WalletConnectFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectFragment.kt\ncom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,355:1\n13#2,4:356\n56#3,6:360\n262#4,2:366\n*S KotlinDebug\n*F\n+ 1 WalletConnectFragment.kt\ncom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment\n*L\n48#1:356,4\n49#1:360,6\n80#1:366,2\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private colors:[I

.field private networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final sessionsAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$ZiVDGAdUEBkr-RGWEP57WG9peWQ(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->updateAnimationColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$sxX7oucBiKDo-Wicf396Pb7xfMs(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->showChooseNetworkDialog$lambda$0(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xEg2rtyooE8QF9Hep0xzz_WZYRU(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->setupListeners$lambda$6$lambda$5(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 48
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 51
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->Companion:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "presenter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 48
    iput-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->sessionsAdapter$delegate:Lkotlin/Lazy;

    .line 51
    new-instance v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 52
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->colors:[I

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onConnectClick(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->onConnectClick()V

    return-void
.end method

.method public static final synthetic access$onImageHeaderClick(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->onImageHeaderClick()V

    return-void
.end method

.method public static final synthetic access$showDisconnectAllConfirmationDialog(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->showDisconnectAllConfirmationDialog()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    return-object v0
.end method

.method private final getSessionsAdapter()Lcom/iMe/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->sessionsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;

    return-object v0
.end method

.method private final onConnectClick()V
    .locals 3

    .line 254
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    .line 255
    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    .line 256
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->openQRScan()V

    return-void
.end method

.method private final onImageHeaderClick()V
    .locals 3

    .line 245
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    .line 246
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 248
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method

.method private final onSessionItemClick(I)V
    .locals 2

    .line 233
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getSessionsAdapter()Lcom/iMe/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 235
    :cond_1
    sget-object v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$Companion;

    new-instance v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$onSessionItemClick$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$onSessionItemClick$1;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;)Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;

    move-result-object p1

    .line 234
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private final openQRScan()V
    .locals 2

    .line 329
    new-instance v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$openQRScan$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$openQRScan$1;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    const/4 v1, 0x1

    .line 325
    invoke-static {p0, v1, v1, v0, v1}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private final setupActionBar()V
    .locals 8

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 176
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 177
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_connect_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 178
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 179
    new-instance v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 187
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

    iput-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    .line 188
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 189
    sget v1, Lcom/iMe/common/IdFabric$Menu;->NETWORK_SWITCH:I

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 188
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->disableRipple()V

    const-string v1, "setupActionBar$lambda$2$lambda$1"

    .line 194
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 196
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    const v2, 0x800015

    .line 197
    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 208
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 211
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->linearAddSession:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 212
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->linearSessions:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 213
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->buttonDisconnectAll:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 216
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->textSessionsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "setupColors$lambda$4$lambda$3"

    .line 217
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 218
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 13

    .line 224
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v0

    .line 225
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->buttonConnect:Lcom/iMe/ui/custom/BigActionButton;

    const-string v2, "buttonConnect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 226
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->buttonDisconnectAll:Lorg/telegram/ui/Cells/TextCell;

    const-string v1, "buttonDisconnectAll"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupListeners$1$2;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 227
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v0, "imageHeader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupListeners$1$3;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupListeners$1$3;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 228
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getSessionsAdapter()Lcom/iMe/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$6$lambda$5(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0, p3}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->onSessionItemClick(I)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 278
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->recycleSessions:Landroidx/recyclerview/widget/RecyclerView;

    .line 279
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getSessionsAdapter()Lcom/iMe/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 280
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final setupViews()V
    .locals 8

    .line 285
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v0

    .line 286
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->buttonConnect:Lcom/iMe/ui/custom/BigActionButton;

    .line 287
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v3, " "

    const/4 v4, 0x2

    .line 288
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 290
    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    .line 292
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    .line 293
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_mini_qr:I

    .line 291
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 290
    invoke-direct {v3, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 289
    invoke-virtual {v2, v3, v5, v6, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 297
    new-instance v3, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/16 v7, 0x8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-direct {v3, v7}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 298
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_connect_new_connection:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 287
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x6

    .line 301
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 302
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    .line 303
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    .line 300
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    .line 307
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->updateAnimationColors()V

    .line 308
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 309
    sget v2, Lorg/telegram/messenger/R$raw;->fork_wallet_connect:I

    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->colors:[I

    const/16 v4, 0x12c

    const/16 v6, 0xaa

    invoke-virtual {v1, v2, v4, v6, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III[I)V

    .line 310
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 311
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 313
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->textSessionsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 314
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_active_sessions:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->buttonDisconnectAll:Lorg/telegram/ui/Cells/TextCell;

    .line 317
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_connect_terminate_all:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    .line 316
    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static final showChooseNetworkDialog$lambda$0(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    return-void
.end method

.method private final showDisconnectAllConfirmationDialog()V
    .locals 7

    .line 340
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->getDisconnectAllConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 342
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    move-result-object v2

    new-instance v3, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    .line 339
    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 344
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 345
    invoke-static {v0}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method private final updateAnimationColors()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x333333

    aput v2, v0, v1

    .line 268
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    const v3, 0xffffff

    aput v3, v0, v2

    .line 269
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    const/4 v4, 0x3

    aput v3, v0, v4

    const/4 v3, 0x4

    const v4, 0xfffdfd

    aput v4, v0, v3

    .line 270
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x5

    aput v2, v0, v3

    const/4 v2, 0x6

    const v3, 0x50a7ea

    aput v3, v0, v2

    .line 271
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x7

    aput v2, v0, v3

    const/16 v2, 0x8

    const v3, 0x212020

    aput v3, v0, v2

    .line 272
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 267
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->colors:[I

    .line 274
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->colors:[I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->replaceColors([I)V

    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    const/16 v1, 0xa

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 117
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 118
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->linearSessions:Landroid/widget/LinearLayout;

    .line 119
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 121
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 117
    invoke-direct {v2, v3, v4, v0, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 123
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 124
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->linearAddSession:Landroid/widget/LinearLayout;

    .line 125
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 123
    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 128
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 129
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->buttonConnect:Lcom/iMe/ui/custom/BigActionButton;

    .line 130
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    .line 132
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    .line 128
    invoke-direct {v2, v3, v4, v0, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 134
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 135
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 136
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    .line 138
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    .line 134
    invoke-direct {v2, v3, v4, v0, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v0, 0x3

    aput-object v2, v1, v0

    .line 140
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 141
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->textSessionsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    .line 143
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    .line 140
    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 145
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 146
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 147
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 148
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    .line 145
    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 150
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 151
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 152
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 153
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    .line 150
    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 155
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 156
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 157
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 158
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    .line 155
    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 160
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 161
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 162
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 163
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    .line 160
    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 165
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 166
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v2

    .line 167
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 168
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getSessionsAdapter()Lcom/iMe/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;

    move-result-object v4

    new-instance v5, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda4;

    invoke-direct {v5, v4}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;)V

    .line 169
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    .line 165
    invoke-direct {v0, v2, v3, v5, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0x9

    aput-object v0, v1, v2

    .line 116
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
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

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->setupActionBar()V

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->setupColors()V

    .line 60
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->setupViews()V

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->setupRecycleView()V

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->setupListeners()V

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

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

    .line 72
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

    .line 74
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->openQRScan()V

    :cond_1
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->showChangeNetworkHintIfNeeded()V

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    return-void
.end method

.method public setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V
    .locals 1

    const-string v0, "networkItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    :goto_0
    return-void
.end method

.method public setupSessionsItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->linearSessions:Landroid/widget/LinearLayout;

    const-string v1, "binding.linearSessions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 262
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getSessionsAdapter()Lcom/iMe/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method

.method public showChangeNetworkHint()V
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getHintUtils()Lcom/iMe/utils/hints/HintUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/utils/hints/HintUtils;->showChangeNetworkHint(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableNetworks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->Companion:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;

    .line 90
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 93
    new-instance v2, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    const-string v3, "parentActivity"

    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;->newInstance(Landroid/content/Context;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
