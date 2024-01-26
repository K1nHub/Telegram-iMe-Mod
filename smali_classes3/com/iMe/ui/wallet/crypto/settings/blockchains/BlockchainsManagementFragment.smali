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
    value = "SMAP\nBlockchainsManagementFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockchainsManagementFragment.kt\ncom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,309:1\n13#2,4:310\n56#3,6:314\n*S KotlinDebug\n*F\n+ 1 BlockchainsManagementFragment.kt\ncom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment\n*L\n41#1:310,4\n44#1:314,6\n*E\n"
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
.method public static synthetic $r8$lambda$r5psse67MwLrkfPrT6AMXcnzOdY(Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupListeners$lambda$6$lambda$5(Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zOvc7popyZUPa1DTB2NXgV5l8yg(Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupListeners$lambda$6$lambda$4(Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 41
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 46
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

    .line 39
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 41
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

    const-string v4, "presenter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 41
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

    .line 44
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->walletsAdapter$delegate:Lkotlin/Lazy;

    .line 46
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$onImageHeaderClick(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->onImageHeaderClick()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;
    .locals 3

    .line 46
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

    .line 41
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

    .line 44
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->walletsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    return-object v0
.end method

.method private final onImageHeaderClick()V
    .locals 3

    .line 269
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    .line 270
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 272
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method

.method private final setupActionBar()V
    .locals 3

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 213
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 214
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_blockchains_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 215
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 216
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 217
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 228
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 231
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->linearAddSession:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 232
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textWalletsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "setupColors$lambda$3$lambda$2"

    .line 235
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 236
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 243
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v0, "binding.imageHeader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupListeners$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$setupListeners$1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 244
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getWalletsAdapter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    move-result-object v0

    .line 245
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 256
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$6$lambda$4(Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 247
    instance-of p2, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    if-eqz p2, :cond_0

    .line 248
    invoke-direct {p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object p1

    check-cast p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    invoke-virtual {p1, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->onWalletItemClick(Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;)V

    goto :goto_0

    .line 251
    :cond_0
    instance-of p2, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;

    if-eqz p2, :cond_1

    .line 252
    invoke-direct {p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object p1

    check-cast p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;

    invoke-virtual {p1, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->onActionButtonItemClick(Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final setupListeners$lambda$6$lambda$5(Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    .line 258
    sget p3, Lorg/telegram/messenger/R$id;->image_info:I

    if-ne p2, p3, :cond_0

    .line 259
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 260
    instance-of p2, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    if-eqz p2, :cond_0

    invoke-direct {p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object p1

    check-cast p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    invoke-virtual {p1, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->showInfoDialog(Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;)V

    :cond_0
    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 278
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->recycleWallets:Landroidx/recyclerview/widget/RecyclerView;

    .line 279
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getWalletsAdapter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    move-result-object v1

    .line 280
    new-instance v2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/diff/BlockchainWalletsDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/diff/BlockchainWalletsDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 279
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 282
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final setupViews()V
    .locals 5

    .line 287
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v0

    .line 288
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x1

    .line 289
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 290
    sget v2, Lorg/telegram/messenger/R$raw;->fork_multi_networking:I

    const/16 v3, 0x12c

    const/16 v4, 0xaa

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 291
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 292
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 294
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textWalletsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 295
    sget v3, Lorg/telegram/messenger/R$string;->wallet_crypto_blockchains_active_wallets:I

    .line 294
    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 298
    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_blockchains_description:I

    .line 297
    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    const/16 v1, 0x8

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 137
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v2

    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->linearAddSession:Landroid/widget/LinearLayout;

    .line 139
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 144
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    .line 137
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 146
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v3

    iget-object v12, v3, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    .line 153
    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    .line 146
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 155
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v3

    iget-object v5, v3, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textWalletsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 157
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    .line 162
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    .line 155
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 164
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 165
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 166
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 171
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object v4, v2

    .line 164
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 173
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 174
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 175
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 180
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v4, v2

    .line 173
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 182
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 183
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 184
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 189
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v4, v2

    .line 182
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 191
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 192
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 193
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 198
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v2

    .line 191
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 200
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 201
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v5

    .line 202
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getWalletsAdapter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    move-result-object v3

    new-instance v10, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda3;

    invoke-direct {v10, v3}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;)V

    .line 207
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    move-object v4, v2

    .line 200
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 136
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

    .line 55
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupActionBar()V

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupColors()V

    .line 57
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupViews()V

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupRecycleView()V

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->setupListeners()V

    .line 61
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

    const-string v0, "wallet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getPinCodeCoordinator()Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v0, "parentLayout"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    .line 102
    new-instance v9, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;-><init>(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 101
    invoke-virtual {v0, v9}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 99
    invoke-static/range {v1 .. v7}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;->start$default(Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;ZILjava/lang/Object;)V

    return-void
.end method

.method public openCreateWalletIntroScreen(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V
    .locals 1

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkedWalletAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletCreationType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;

    invoke-virtual {v0, p2, p3, p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;->newInstance(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;

    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public setupWalletsItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getWalletsAdapter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showResetAllWalletsConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object v0

    new-instance v3, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    .line 69
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 75
    invoke-static {p1}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createOptionsBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showWalletDetailsDialog(Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "walletItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoDialogModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$Companion;

    .line 91
    new-instance v4, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$showWalletDetailsDialog$1;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$showWalletDetailsDialog$1;-><init>(Ljava/lang/Object;)V

    .line 92
    new-instance v5, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$showWalletDetailsDialog$2;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$showWalletDetailsDialog$2;-><init>(Ljava/lang/Object;)V

    move-object v2, p1

    move-object v3, p0

    move-object v6, p2

    .line 88
    invoke-virtual/range {v1 .. v6}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;Lorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/iMe/model/dialog/DialogModel;)Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;

    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showWalletInfoDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
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
