.class public final Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "CryptoBoxesFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoBoxesFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoBoxesFragment.kt\ncom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,275:1\n13#2,4:276\n56#3,6:280\n*S KotlinDebug\n*F\n+ 1 CryptoBoxesFragment.kt\ncom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment\n*L\n48#1:276,4\n51#1:280,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final cryptoBoxesAdapter$delegate:Lkotlin/Lazy;

.field private networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$H4gz2f-SdmpI-KiJSEtwurOFY3k(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->setupListeners$lambda$8$lambda$7(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ILtSu_1nM0mUttYWjRpDn_aaqfk(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->showChooseOrderDialog$lambda$1(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$INgKwr9-T-8xrUkfUJq3JbjKV4M(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->setupListeners$lambda$9(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_2AxDlS84zmG81cUGySJ7Bm5ook(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->showChooseNetworkDialog$lambda$0(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t5dwY7SFzD5UMgafmmiqGzpTOrU(Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->setupListeners$lambda$8$lambda$6(Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 48
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 53
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->Companion:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 4

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$presenter$2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string/jumbo v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 48
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->cryptoBoxesAdapter$delegate:Lkotlin/Lazy;

    .line 53
    new-instance p1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, v0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getPresenter()Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;

    return-object v0
.end method

.method private final getCryptoBoxesAdapter()Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->cryptoBoxesAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    return-object v0
.end method

.method public static final newInstance(Lorg/telegram/tgnet/TLRPC$Chat;)Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->Companion:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$Companion;->newInstance(Lorg/telegram/tgnet/TLRPC$Chat;)Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;

    move-result-object p0

    return-object p0
.end method

.method private final setupActionBar()V
    .locals 8

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 201
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 202
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->cryptoboxes_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 203
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 205
    new-instance v1, Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v2, "parentActivity"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/iMe/ui/custom/NetworkTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    .line 206
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 207
    sget v2, Lcom/iMe/common/IdFabric$Menu;->NETWORK_SWITCH:I

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 206
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->disableRipple()V

    const-string/jumbo v2, "setupActionBar$lambda$4$lambda$3"

    .line 212
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xe

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 214
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    const v3, 0x800015

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 213
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$setupActionBar$1$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$setupActionBar$1$2;-><init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 233
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 234
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 235
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 240
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getCryptoBoxesAdapter()Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;

    move-result-object v0

    .line 241
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 246
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    .line 253
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$8$lambda$6(Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 243
    instance-of p2, p0, Lcom/iMe/model/cryptobox/CryptoBoxItem;

    if-eqz p2, :cond_0

    invoke-direct {p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getPresenter()Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    move-result-object p1

    check-cast p0, Lcom/iMe/model/cryptobox/CryptoBoxItem;

    invoke-virtual {p1, p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->onCryptoBoxItemClick(Lcom/iMe/model/cryptobox/CryptoBoxItem;)V

    :cond_0
    return-void
.end method

.method private static final setupListeners$lambda$8$lambda$7(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    .line 248
    sget p2, Lorg/telegram/messenger/R$id;->button_action:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getPresenter()Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->onCreateCryptoBoxClick()V

    goto :goto_0

    .line 249
    :cond_0
    sget p2, Lorg/telegram/messenger/R$id;->image_order:I

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getPresenter()Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->onSelectOrderClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final setupListeners$lambda$9(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getPresenter()Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->loadCryptoBoxes(Z)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 5

    .line 257
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;->recycleCryptoboxes:Landroidx/recyclerview/widget/RecyclerView;

    .line 258
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getCryptoBoxesAdapter()Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;->getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    move-result-object v2

    const/4 v3, 0x1

    .line 260
    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setWhiteBackground(Z)V

    .line 261
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$dimen;->wallet_card_elevation:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setCustomElevation(F)V

    .line 262
    new-instance v3, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$setupRecycleView$1$1$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$setupRecycleView$1$1$1$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)V

    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setOnRetryButtonClickAction(Lkotlin/jvm/functions/Function0;)V

    .line 264
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/adapter/diff/CryptoBoxesDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/cryptobox/adapter/diff/CryptoBoxesDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 258
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 266
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x0

    .line 267
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method private static final showChooseNetworkDialog$lambda$0(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getPresenter()Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    return-void
.end method

.method private static final showChooseOrderDialog$lambda$1(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;Ljava/lang/Integer;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getPresenter()Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    move-result-object p0

    const-string/jumbo v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->onOrderStrategySelected(I)V

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

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 170
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 171
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;->recycleCryptoboxes:Landroidx/recyclerview/widget/RecyclerView;

    .line 172
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 173
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 170
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 175
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 176
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 177
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 178
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 179
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    .line 176
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 181
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 182
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 183
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 184
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    .line 181
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 186
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 187
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 188
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 189
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    .line 186
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 191
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 192
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v2

    .line 193
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 194
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getCryptoBoxesAdapter()Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;

    move-result-object v4

    new-instance v5, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$$ExternalSyntheticLambda5;

    invoke-direct {v5, v4}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;)V

    .line 195
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    .line 191
    invoke-direct {v1, v2, v3, v5, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 169
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

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

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->setupActionBar()V

    .line 60
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->setupColors()V

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->setupRecycleView()V

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->setupListeners()V

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openAddAdminScreen(JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "chat"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v2, Lorg/telegram/ui/ChatRightsEditActivity;

    .line 110
    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v3, v2

    move-wide/from16 v4, p1

    .line 109
    invoke-direct/range {v3 .. v15}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 114
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$openAddAdminScreen$fragment$1$1;

    move-wide/from16 v3, p1

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$openAddAdminScreen$fragment$1$1;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;JLcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 140
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openCryptoBoxCreationScreen(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 1

    .line 144
    sget-object v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;->Companion:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$Companion;->newInstance(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openCryptoBoxDetailsScreen(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V
    .locals 2

    const-string v0, "cryptoBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->Companion:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$Companion;

    .line 150
    new-instance v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    invoke-direct {v1, p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;-><init>(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V

    .line 149
    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$Companion;->newInstance(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public renderItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getCryptoBoxesAdapter()Lcom/iMe/ui/wallet/cryptobox/adapter/CryptoBoxesRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V
    .locals 1

    const-string/jumbo v0, "networkItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    :goto_0
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

    const-string/jumbo v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableNetworks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->Companion:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;

    .line 73
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 76
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)V

    const-string/jumbo v3, "parentActivity"

    .line 73
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;->newInstance(Landroid/content/Context;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showChooseOrderDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "titles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v7, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v1 .. v9}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSingleChooserDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/dialog/DialogModel;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/util/List;ILcom/iMe/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 100
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 99
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
