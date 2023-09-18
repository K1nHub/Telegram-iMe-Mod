.class public final Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "BlockchainsManagementFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockchainsManagementFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockchainsManagementFragment.kt\ncom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,288:1\n13#2,4:289\n56#3,6:293\n262#4,2:299\n*S KotlinDebug\n*F\n+ 1 BlockchainsManagementFragment.kt\ncom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment\n*L\n36#1:289,4\n37#1:293,6\n61#1:299,2\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final walletsAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$l95Hy93INWmfeKwZD2GNz9AWqd4(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupListeners$lambda$8$lambda$7$lambda$6(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qQhTBAk_W_3cUc9cCUDPrKtSzyo(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupListeners$lambda$8$lambda$7$lambda$5(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 36
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 40
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->Companion:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "presenter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 36
    iput-object v1, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->walletsAdapter$delegate:Lkotlin/Lazy;

    .line 40
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onImageHeaderClick(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->onImageHeaderClick()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    return-object v0
.end method

.method private final getWalletsAdapter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->walletsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    return-object v0
.end method

.method private final onImageHeaderClick()V
    .locals 3

    .line 245
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

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

.method private final setupActionBar()V
    .locals 3

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 194
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 195
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_blockchains_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 196
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 197
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 198
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 5

    .line 209
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 212
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->linearAddSession:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 213
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->linearWallets:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 214
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->buttonResetAll:Lorg/telegram/ui/Cells/TextCell;

    .line 216
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    const-string/jumbo v2, "setupColors$lambda$4$lambda$2"

    .line 217
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 220
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textWalletsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "setupColors$lambda$4$lambda$3"

    .line 221
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 222
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 13

    .line 228
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    .line 229
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->buttonResetAll:Lorg/telegram/ui/Cells/TextCell;

    const-string v2, "buttonResetAll"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 230
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v0, "imageHeader"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupListeners$1$2;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 231
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getWalletsAdapter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 235
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$8$lambda$7$lambda$5(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object p0

    invoke-virtual {p1, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->onWalletItemClick(Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;)V

    return-void
.end method

.method private static final setupListeners$lambda$8$lambda$7$lambda$6(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    .line 237
    sget p3, Lorg/telegram/messenger/R$id;->image_info:I

    if-ne p2, p3, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object p0

    invoke-virtual {p1, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->showInfoDialog(Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;)V

    :cond_0
    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 254
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->recycleWallets:Landroidx/recyclerview/widget/RecyclerView;

    .line 255
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getWalletsAdapter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 256
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final setupViews()V
    .locals 5

    .line 261
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    .line 262
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x1

    .line 263
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 264
    sget v2, Lorg/telegram/messenger/R$raw;->fork_multi_networking:I

    const/16 v3, 0x12c

    const/16 v4, 0xaa

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 265
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 266
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 268
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textWalletsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 269
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_crypto_blockchains_active_wallets:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 271
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_crypto_blockchains_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->buttonResetAll:Lorg/telegram/ui/Cells/TextCell;

    .line 273
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_reset_all_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    const/4 v3, 0x0

    .line 272
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

    .line 105
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v2

    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->linearWallets:Landroid/widget/LinearLayout;

    .line 107
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 112
    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move/from16 v9, v18

    .line 105
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 114
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v3

    iget-object v12, v3, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->linearAddSession:Landroid/widget/LinearLayout;

    .line 116
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    .line 114
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 123
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v3

    iget-object v5, v3, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    .line 130
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    .line 123
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 132
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v3

    iget-object v5, v3, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textWalletsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    .line 139
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object v4, v2

    .line 132
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 141
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 142
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 143
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 148
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object v4, v2

    .line 141
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 150
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 151
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 152
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 157
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v4, v2

    .line 150
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 159
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 160
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 161
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 166
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v4, v2

    .line 159
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 168
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 169
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 170
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 175
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v2

    .line 168
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 177
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v5

    .line 179
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 183
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getWalletsAdapter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    move-result-object v3

    new-instance v10, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda3;

    invoke-direct {v10, v3}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;)V

    .line 184
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    move-object v4, v2

    .line 177
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 104
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

    .line 51
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupActionBar()V

    .line 52
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupColors()V

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupViews()V

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupRecycleView()V

    .line 55
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupListeners()V

    .line 57
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openBackupScreen(Lcom/iMe/storage/domain/model/crypto/Wallet;)V
    .locals 10

    const-string/jumbo v0, "wallet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getPinCodeCoordinator()Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string/jumbo v0, "parentLayout"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    .line 99
    new-instance v9, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;-><init>(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 98
    invoke-virtual {v0, v9}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 96
    invoke-static/range {v1 .. v7}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;->start$default(Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;ZILjava/lang/Object;)V

    return-void
.end method

.method public setupWalletsItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

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

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getWalletsAdapter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method

.method public showResetAllWalletsConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object v0

    new-instance v3, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    .line 66
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 72
    invoke-static {p1}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public showWalletDetailsDialog(Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string/jumbo v0, "walletItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoDialogModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$Companion;

    .line 88
    new-instance v4, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$showWalletDetailsDialog$1;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$showWalletDetailsDialog$1;-><init>(Ljava/lang/Object;)V

    .line 89
    new-instance v5, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$showWalletDetailsDialog$2;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$showWalletDetailsDialog$2;-><init>(Ljava/lang/Object;)V

    move-object v2, p1

    move-object v3, p0

    move-object v6, p2

    .line 85
    invoke-virtual/range {v1 .. v6}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;Lorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/iMe/model/dialog/DialogModel;)Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showWalletInfoDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
