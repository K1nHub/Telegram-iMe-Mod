.class public final Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;
.super Lcom/smedialink/ui/base/WalletAuthFragment;
.source "WalletConnectFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectFragment.kt\ncom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,291:1\n13#2,4:292\n56#3,6:296\n262#4,2:302\n*S KotlinDebug\n*F\n+ 1 WalletConnectFragment.kt\ncom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment\n*L\n50#1:292,4\n51#1:296,6\n81#1:302,2\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private colors:[I

.field private networkTypeView:Lcom/smedialink/ui/custom/NetworkTypeView;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final sessionsAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$VNBqtIuBSL5yIJu90hDiASxoYX0(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->setupListeners$lambda$7$lambda$6(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZPhlBjVoiXfleeTwDA13mS76aLw(Lkotlin/jvm/functions/Function1;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->showChooseNetworkDialog$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_WiPuVOjQ7wtzyrVtDG1yrzeoqY(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->updateAnimationColors()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 50
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 54
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 47
    invoke-direct {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$presenter$2;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

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

    .line 50
    iput-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->sessionsAdapter$delegate:Lkotlin/Lazy;

    .line 54
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$binding$2;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 55
    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->colors:[I

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onConnectClick(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->onConnectClick()V

    return-void
.end method

.method public static final synthetic access$onImageHeaderClick(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->onImageHeaderClick()V

    return-void
.end method

.method public static final synthetic access$showDisconnectAllConfirmationDialog(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->showDisconnectAllConfirmationDialog()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    return-object v0
.end method

.method private final getSessionsAdapter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->sessionsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;

    return-object v0
.end method

.method private final onConnectClick()V
    .locals 3

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->openQRScan()V

    return-void
.end method

.method private final onImageHeaderClick()V
    .locals 3

    .line 192
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    .line 193
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 195
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method

.method private final onSessionItemClick(I)V
    .locals 2

    .line 180
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getSessionsAdapter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 182
    :cond_1
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->Companion:Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$Companion;

    new-instance v1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$onSessionItemClick$1;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$onSessionItemClick$1;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$Companion;->newInstance(Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;)Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private final openQRScan()V
    .locals 2

    .line 263
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$openQRScan$1;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$openQRScan$1;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    const/4 v1, 0x1

    .line 259
    invoke-static {p0, v1, v1, v0, v1}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private final setupActionBar()V
    .locals 8

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 132
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 133
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_connect_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 135
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 136
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupActionBar$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 144
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 145
    new-instance v7, Lcom/smedialink/ui/custom/NetworkTypeView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v1, "parentActivity"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/NetworkTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->networkTypeView:Lcom/smedialink/ui/custom/NetworkTypeView;

    .line 146
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->NETWORK_SWITCH:I

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const-string v1, "setupActionBar$lambda$3$lambda$2$lambda$1"

    .line 147
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 148
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->networkTypeView:Lcom/smedialink/ui/custom/NetworkTypeView;

    const v2, 0x800015

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 155
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v1

    const-string v2, "windowBackgroundGray"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 158
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->linearAddSession:Landroid/widget/LinearLayout;

    const-string v2, "windowBackgroundWhite"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 159
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->linearSessions:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 160
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "windowBackgroundWhiteBlackText"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->buttonDisconnectAll:Lorg/telegram/ui/Cells/TextCell;

    const-string v2, "windowBackgroundWhiteRedText2"

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->textSessionsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "setupColors$lambda$5$lambda$4"

    .line 164
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const-string v1, "windowBackgroundWhiteBlueHeader"

    .line 165
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 13

    .line 171
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v0

    .line 172
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->buttonConnect:Lcom/smedialink/ui/custom/BigActionButton;

    const-string v2, "buttonConnect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupListeners$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 173
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->buttonDisconnectAll:Lorg/telegram/ui/Cells/TextCell;

    const-string v1, "buttonDisconnectAll"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupListeners$1$2;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 174
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v0, "imageHeader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupListeners$1$3;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$setupListeners$1$3;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 175
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getSessionsAdapter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$7$lambda$6(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p3}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->onSessionItemClick(I)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 220
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->recycleSessions:Landroidx/recyclerview/widget/RecyclerView;

    .line 221
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getSessionsAdapter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 222
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final setupViews()V
    .locals 8

    .line 227
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v0

    .line 228
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->buttonConnect:Lcom/smedialink/ui/custom/BigActionButton;

    .line 229
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v3, " "

    const/4 v4, 0x2

    .line 230
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 231
    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_mini_qr:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v5, v6, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 232
    new-instance v3, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/16 v7, 0x8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-direct {v3, v7}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 233
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_connect_new_connection:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 229
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x6

    .line 236
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const-string v3, "featuredStickers_addButton"

    .line 237
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "featuredStickers_addButtonPressed"

    .line 238
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    .line 235
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    .line 242
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->updateAnimationColors()V

    .line 243
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 244
    sget v2, Lorg/telegram/messenger/R$raw;->fork_wallet_connect:I

    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->colors:[I

    const/16 v4, 0x12c

    const/16 v6, 0xaa

    invoke-virtual {v1, v2, v4, v6, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III[I)V

    .line 245
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 248
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->textSessionsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_active_sessions:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_description:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->buttonDisconnectAll:Lorg/telegram/ui/Cells/TextCell;

    .line 251
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_connect_terminate_all:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    .line 250
    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static final showChooseNetworkDialog$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedNetworkType"

    .line 91
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final showDisconnectAllConfirmationDialog()V
    .locals 7

    .line 274
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->getDisconnectAllConfirmationDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v1

    .line 276
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    move-result-object v2

    new-instance v3, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    .line 273
    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 278
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 279
    invoke-static {v0}, Lcom/smedialink/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method private final updateAnimationColors()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x333333

    aput v2, v0, v1

    const-string v1, "windowBackgroundWhiteBlackText"

    .line 210
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    const v3, 0xffffff

    aput v3, v0, v2

    const-string v2, "windowBackgroundWhite"

    .line 211
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    aput v3, v0, v4

    const/4 v3, 0x4

    const v4, 0xfffdfd

    aput v4, v0, v3

    .line 212
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    aput v2, v0, v3

    const/4 v2, 0x6

    const v3, 0x50a7ea

    aput v3, v0, v2

    const-string v2, "featuredStickers_addButton"

    .line 213
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x7

    aput v2, v0, v3

    const/16 v2, 0x8

    const v3, 0x212020

    aput v3, v0, v2

    .line 214
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 209
    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->colors:[I

    .line 216
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->colors:[I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->replaceColors([I)V

    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 111
    new-instance v9, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda3;

    invoke-direct {v9, v0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V

    const/16 v1, 0xa

    new-array v10, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 113
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v1

    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->linearSessions:Landroid/widget/LinearLayout;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "windowBackgroundWhite"

    move-object v1, v11

    move-object v7, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v11, v10, v1

    .line 114
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v2

    iget-object v13, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->linearAddSession:Landroid/widget/LinearLayout;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "windowBackgroundWhite"

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v10, v2

    .line 115
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v1

    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->buttonConnect:Lcom/smedialink/ui/custom/BigActionButton;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    const-string v8, "featuredStickers_addButton"

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-object v11, v10, v1

    .line 116
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v1

    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v8, "windowBackgroundWhiteBlackText"

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-object v11, v10, v1

    .line 117
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v2

    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->textSessionsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhiteBlueHeader"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v10, v2

    .line 118
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const-string v18, "actionBarDefault"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v10, v2

    .line 119
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v18, "actionBarDefaultIcon"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v10, v2

    .line 120
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v18, "actionBarDefaultTitle"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v10, v2

    .line 121
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v18, "actionBarDefaultSelector"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v10, v2

    .line 122
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v12

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getSessionsAdapter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;

    move-result-object v2

    new-instance v3, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda4;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;)V

    const-string v18, "windowBackgroundGray"

    move-object v11, v1

    move-object/from16 v17, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v10, v2

    .line 112
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

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

    .line 63
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->setupActionBar()V

    .line 64
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->setupColors()V

    .line 65
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->setupViews()V

    .line 66
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->setupRecycleView()V

    .line 67
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->setupListeners()V

    .line 69
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

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

    .line 73
    array-length p2, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    xor-int/2addr p2, v0

    if-eqz p2, :cond_1

    aget p2, p3, v1

    if-nez p2, :cond_1

    const/16 p2, 0x22

    if-ne p1, p2, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->openQRScan()V

    :cond_1
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->showChangeNetworkHintIfNeeded()V

    .line 107
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    return-void
.end method

.method public setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->networkTypeView:Lcom/smedialink/ui/custom/NetworkTypeView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/smedialink/ui/custom/NetworkTypeView;->setNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    :goto_0
    return-void
.end method

.method public setupSessionsItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

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

    .line 82
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->getSessionsAdapter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method

.method public showChangeNetworkHint()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->getHintUtils()Lcom/smedialink/utils/hints/HintUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/smedialink/utils/hints/HintUtils;->showChangeNetworkHint(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableNetworks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, p2, p1, v1}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createSelectNetworkTypeDialog(Landroid/content/Context;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback1;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
