.class public final Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;
.super Lcom/smedialink/ui/base/WalletAuthFragment;
.source "BlockchainsManagementFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockchainsManagementFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockchainsManagementFragment.kt\ncom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,209:1\n13#2,4:210\n56#3,6:214\n262#4,2:220\n*S KotlinDebug\n*F\n+ 1 BlockchainsManagementFragment.kt\ncom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment\n*L\n35#1:210,4\n36#1:214,6\n56#1:220,2\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final walletsAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$QtDZyPMHtlwhdABenOcl1G5IVZA(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupListeners$lambda$8$lambda$7$lambda$6(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zqQODTK2mc8JGRTFhaz1Z7lsS3c(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupListeners$lambda$8$lambda$7$lambda$5(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 35
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 39
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 32
    invoke-direct {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;-><init>()V

    .line 35
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$presenter$2;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

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

    .line 35
    iput-object v1, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->walletsAdapter$delegate:Lkotlin/Lazy;

    .line 39
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$binding$2;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onImageHeaderClick(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->onImageHeaderClick()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    return-object v0
.end method

.method private final getWalletsAdapter()Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->walletsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    return-object v0
.end method

.method private final onImageHeaderClick()V
    .locals 3

    .line 168
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    .line 169
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 171
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method

.method private final setupActionBar()V
    .locals 3

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 117
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 118
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_blockchains_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 119
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 120
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 121
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupActionBar$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 5

    .line 132
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v1

    const-string v2, "windowBackgroundGray"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 135
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->linearAddSession:Landroid/widget/LinearLayout;

    const-string v2, "windowBackgroundWhite"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 136
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->linearWallets:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 137
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "windowBackgroundWhiteBlackText"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->buttonResetAll:Lorg/telegram/ui/Cells/TextCell;

    const-string v2, "windowBackgroundWhiteRedText2"

    .line 139
    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "setupColors$lambda$4$lambda$2"

    .line 140
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 143
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textWalletsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "setupColors$lambda$4$lambda$3"

    .line 144
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const-string v1, "windowBackgroundWhiteBlueHeader"

    .line 145
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 13

    .line 151
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    .line 152
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->buttonResetAll:Lorg/telegram/ui/Cells/TextCell;

    const-string v2, "buttonResetAll"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupListeners$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 153
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v0, "imageHeader"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupListeners$1$2;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 154
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getWalletsAdapter()Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 158
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$8$lambda$7$lambda$5(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object p0

    invoke-virtual {p1, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->onWalletItemClick(Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;)V

    return-void
.end method

.method private static final setupListeners$lambda$8$lambda$7$lambda$6(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    .line 160
    sget p3, Lorg/telegram/messenger/R$id;->image_info:I

    if-ne p2, p3, :cond_0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object p0

    invoke-virtual {p1, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->showInfoDialog(Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;)V

    :cond_0
    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 177
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->recycleWallets:Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getWalletsAdapter()Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 179
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final setupViews()V
    .locals 5

    .line 184
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    .line 185
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x1

    .line 186
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 187
    sget v2, Lorg/telegram/messenger/R$raw;->fork_multi_networking:I

    const/16 v3, 0x12c

    const/16 v4, 0xaa

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 188
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 189
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 191
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textWalletsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_crypto_blockchains_active_wallets:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_crypto_blockchains_description:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->buttonResetAll:Lorg/telegram/ui/Cells/TextCell;

    .line 194
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_reset_all_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    const/4 v3, 0x0

    .line 193
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
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

    const/16 v1, 0x9

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 100
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v2

    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->linearWallets:Landroid/widget/LinearLayout;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 101
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v3

    iget-object v12, v3, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->linearAddSession:Landroid/widget/LinearLayout;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "windowBackgroundWhite"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 102
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v3

    iget-object v5, v3, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "windowBackgroundWhiteBlackText"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 103
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v3

    iget-object v5, v3, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textWalletsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v11, "windowBackgroundWhiteBlueHeader"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 104
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v11, "actionBarDefault"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 105
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v11, "actionBarDefaultIcon"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 106
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v11, "actionBarDefaultTitle"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 107
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 108
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getWalletsAdapter()Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    move-result-object v3

    new-instance v10, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda3;

    invoke-direct {v10, v3}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;)V

    const-string v11, "windowBackgroundGray"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 99
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

    .line 46
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupActionBar()V

    .line 47
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupColors()V

    .line 48
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupViews()V

    .line 49
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupRecycleView()V

    .line 50
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupListeners()V

    .line 52
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openBackupScreen(Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "secretWords"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getPinCodeCoordinator()Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v0, "parentLayout"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    .line 91
    new-instance v10, Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    invoke-virtual {v0, v10}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    .line 88
    invoke-static/range {v1 .. v7}, Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator;->start$default(Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/ui/base/WalletAuthFragment;Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$Args;ZILjava/lang/Object;)V

    return-void
.end method

.method public setupWalletsItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->linearWallets:Landroid/widget/LinearLayout;

    const-string v1, "binding.linearWallets"

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

    .line 57
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getWalletsAdapter()Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method

.method public showResetAllWalletsConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object v0

    new-instance v3, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    .line 61
    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 67
    invoke-static {p1}, Lcom/smedialink/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public showWalletDetailsDialog(Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "walletItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoDialogModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->Companion:Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$Companion;

    .line 80
    new-instance v4, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$showWalletDetailsDialog$1;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$showWalletDetailsDialog$1;-><init>(Ljava/lang/Object;)V

    .line 81
    new-instance v5, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$showWalletDetailsDialog$2;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$showWalletDetailsDialog$2;-><init>(Ljava/lang/Object;)V

    move-object v2, p1

    move-object v3, p0

    move-object v6, p2

    .line 77
    invoke-virtual/range {v1 .. v6}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$Companion;->newInstance(Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;Lorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/smedialink/model/dialog/DialogModel;)Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showWalletInfoDialog(Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
