.class public final Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "WalletNotificationsFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletNotificationsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletNotificationsFragment.kt\ncom/iMe/ui/wallet/notifications/WalletNotificationsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,276:1\n13#2,4:277\n56#3,6:281\n1#4:287\n*S KotlinDebug\n*F\n+ 1 WalletNotificationsFragment.kt\ncom/iMe/ui/wallet/notifications/WalletNotificationsFragment\n*L\n29#1:277,4\n30#1:281,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final notificationAdapter$delegate:Lkotlin/Lazy;

.field private optionsMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$-M8srTcGlP7WblkrJV6CnuRxMoo(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->setupRecycleView$lambda$9$lambda$8$lambda$6$lambda$5(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$30v8pzkISnXB7gTj-N3hB9Oxkkk(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->setupListeners$lambda$12$lambda$11(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P5giNUs7x9ISGg6FRZoAaOT8_94(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j4BDlI7CEdb873au_bvHrkprjMU(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->setupRecycleView$lambda$9$lambda$8$lambda$7(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 29
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 33
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->Companion:Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 26
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 29
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string/jumbo v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

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

    .line 29
    iput-object v1, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->notificationAdapter$delegate:Lkotlin/Lazy;

    .line 33
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getNotificationAdapter(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getNotificationAdapter()Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getPresenter()Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    return-object v0
.end method

.method private final getNotificationAdapter()Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->notificationAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getNotificationAdapter()Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final setupActionBar()V
    .locals 6

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 193
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 194
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_notifications_toolbar_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 195
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 196
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 197
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const-string/jumbo v3, "setupActionBar$lambda$3$lambda$2$lambda$1"

    .line 198
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v2, v4, v1, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 201
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v4, "AccDescrMoreOptions"

    .line 199
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 205
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_folder_tab_read_all_24:I

    .line 206
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->dialogs_tab_popup_read_all:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 197
    iput-object v2, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->optionsMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 210
    new-instance v1, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$setupActionBar$1$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$setupActionBar$1$2;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 6

    .line 251
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 253
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 254
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 259
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object v0

    .line 260
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    new-instance v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$setupListeners$1$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setRetryButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 262
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$12$lambda$11(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getPresenter()Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->loadNotification(Z)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 4

    .line 222
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->recycleNotifications:Landroidx/recyclerview/widget/RecyclerView;

    .line 223
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getNotificationAdapter()Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v2

    const/4 v3, 0x5

    .line 225
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setPreLoadNumber(I)V

    .line 226
    new-instance v3, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V

    .line 231
    new-instance v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 245
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 246
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getNotificationAdapter()Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private static final setupRecycleView$lambda$9$lambda$8$lambda$6$lambda$5(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getNotificationAdapter()Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/model/wallet/notification/NotificationItem;

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getPresenter()Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

    move-result-object p0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/notification/NotificationItem;->getNotification()Lcom/iMe/storage/domain/model/notification/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->loadMoreNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final setupRecycleView$lambda$9$lambda$8$lambda$7(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getNotificationAdapter()Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/notification/NotificationItem;

    .line 233
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getPresenter()Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->markNotificationAsRead(Lcom/iMe/model/wallet/notification/NotificationItem;I)V

    .line 235
    invoke-virtual {p1}, Lcom/iMe/model/wallet/notification/NotificationItem;->isUnsupported()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 238
    :cond_0
    sget-object p2, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$Companion;

    invoke-virtual {p2, p0, p1}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$Companion;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/notification/NotificationItem;)Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;

    move-result-object p1

    .line 237
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

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

    .line 104
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 105
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 106
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 111
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    .line 104
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 113
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 114
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 115
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 120
    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    .line 113
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 122
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 123
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 124
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 129
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    .line 122
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 131
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 132
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 133
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 138
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v2

    .line 131
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 140
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 141
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 142
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    .line 147
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    move-object v4, v2

    .line 140
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 149
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 150
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 151
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    .line 156
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object v4, v2

    .line 149
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 158
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 159
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 160
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v6, v3, v4

    .line 165
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    move-object v4, v2

    .line 158
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 167
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v5

    .line 169
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 174
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v4, v2

    move v11, v14

    .line 167
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 176
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object v3

    iget-object v8, v3, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    .line 178
    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 103
    new-instance v13, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v13, v0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v2

    .line 176
    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 103
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

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->setupActionBar()V

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->setupColors()V

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->setupListeners()V

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->setupRecycleView()V

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onEmptyState()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->optionsMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    const-string v3, "binding.globalStateLayout"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, v1, v2}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showEmpty$default(Lcom/iMe/ui/custom/state/GlobalStateLayout;Lcom/iMe/model/state/GlobalState$Empty;ILjava/lang/Object;)V

    return-void
.end method

.method public onLoadMoreComplete()V
    .locals 4

    .line 84
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getNotificationAdapter()Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd$default(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;ZILjava/lang/Object;)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getNotificationAdapter()Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreFail()V

    return-void
.end method

.method public onLoadMoreItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/notification/NotificationItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getNotificationAdapter()Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getNotificationAdapter()Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    return-void
.end method

.method public onLoadedNotifications(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/notification/NotificationItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "notifications"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->isContentState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showContent()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->optionsMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getNotificationAdapter()Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method

.method public onLoadingState()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showProgress()V

    return-void
.end method

.method public onNoInternetErrorState()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showNoInternetError()V

    return-void
.end method

.method public onUnexpectedErrorState()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showUnexpectedError()V

    return-void
.end method

.method public resetLoadMore()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getNotificationAdapter()Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->reset$TMessagesProj_HA_public()V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public updateNotificationAsRead(ILcom/iMe/model/wallet/notification/NotificationItem;)V
    .locals 1

    const-string/jumbo v0, "notification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->getNotificationAdapter()Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setData(ILjava/lang/Object;)V

    return-void
.end method
