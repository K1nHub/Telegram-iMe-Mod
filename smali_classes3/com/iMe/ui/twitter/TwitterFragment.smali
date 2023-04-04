.class public final Lcom/iMe/ui/twitter/TwitterFragment;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "TwitterFragment.kt"

# interfaces
.implements Lcom/iMe/ui/twitter/TwitterView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/twitter/TwitterFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterFragment.kt\ncom/iMe/ui/twitter/TwitterFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,201:1\n13#2,4:202\n56#3,6:206\n56#3,6:212\n*S KotlinDebug\n*F\n+ 1 TwitterFragment.kt\ncom/iMe/ui/twitter/TwitterFragment\n*L\n35#1:202,4\n40#1:206,6\n41#1:212,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/twitter/TwitterFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final tweetsRecycleAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$7A-IDsP1ngIdMGwftTTUu3fSlAk(Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;Lcom/iMe/ui/twitter/TwitterFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/twitter/TwitterFragment;->setupListeners$lambda$14$lambda$13(Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;Lcom/iMe/ui/twitter/TwitterFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TXMUt6X2sQ8lzwiPEjoordDehI0(Lcom/iMe/ui/twitter/TwitterFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->setupListeners$lambda$16$lambda$15(Lcom/iMe/ui/twitter/TwitterFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$to2MJlSl_CfpqRw2VSQGv9D77wk(Lcom/iMe/ui/twitter/TwitterFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getThemeDescriptions$lambda$1(Lcom/iMe/ui/twitter/TwitterFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w4QwS5rU8xxttfrbF-WewjlgUvQ(Lcom/iMe/ui/twitter/TwitterFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->setupLoadMore$lambda$12$lambda$11$lambda$10(Lcom/iMe/ui/twitter/TwitterFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/twitter/TwitterFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 35
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/twitter/TwitterPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 44
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/twitter/TwitterFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/twitter/TwitterFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/twitter/TwitterFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/twitter/TwitterFragment;->Companion:Lcom/iMe/ui/twitter/TwitterFragment$Companion;

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 8

    const-string v0, "twitterUserNickname"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 35
    new-instance v0, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/iMe/ui/twitter/TwitterFragment$presenter$2;-><init>(Lcom/iMe/ui/twitter/TwitterFragment;JJLjava/lang/String;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p2

    const-string p3, "mvpDelegate"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-class p4, Lcom/iMe/ui/twitter/TwitterPresenter;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "presenter"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 35
    iput-object p1, p0, Lcom/iMe/ui/twitter/TwitterFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/twitter/TwitterFragment$special$$inlined$inject$default$1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4, p4}, Lcom/iMe/ui/twitter/TwitterFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/iMe/ui/twitter/TwitterFragment;->resourceManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/twitter/TwitterFragment$special$$inlined$inject$default$2;

    invoke-direct {p2, p0, p4, p4}, Lcom/iMe/ui/twitter/TwitterFragment$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/iMe/ui/twitter/TwitterFragment;->tweetsRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 44
    new-instance p1, Lcom/iMe/ui/twitter/TwitterFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/twitter/TwitterFragment$binding$2;-><init>(Lcom/iMe/ui/twitter/TwitterFragment;)V

    const/4 p2, 0x1

    invoke-static {p0, p4, p1, p2, p4}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/twitter/TwitterFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/twitter/TwitterFragment;)Lcom/iMe/ui/twitter/TwitterPresenter;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getPresenter()Lcom/iMe/ui/twitter/TwitterPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/iMe/ui/twitter/TwitterFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/twitter/TwitterFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/twitter/TwitterPresenter;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/twitter/TwitterFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/twitter/TwitterFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/twitter/TwitterPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/twitter/TwitterFragment;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$1(Lcom/iMe/ui/twitter/TwitterFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->setupColors()V

    .line 107
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final getTweetsRecycleAdapter()Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/twitter/TwitterFragment;->tweetsRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;

    return-object v0
.end method

.method public static final newInstance(JJLjava/lang/String;)Lcom/iMe/ui/twitter/TwitterFragment;
    .locals 6

    sget-object v0, Lcom/iMe/ui/twitter/TwitterFragment;->Companion:Lcom/iMe/ui/twitter/TwitterFragment$Companion;

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/iMe/ui/twitter/TwitterFragment$Companion;->newInstance(JJLjava/lang/String;)Lcom/iMe/ui/twitter/TwitterFragment;

    move-result-object p0

    return-object p0
.end method

.method private final setupActionBar()V
    .locals 6

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 117
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 118
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 119
    sget v1, Lorg/telegram/messenger/R$string;->twitter_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 121
    sget v2, Lcom/iMe/common/IdFabric$Menu;->OPTIONS:I

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    .line 122
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v3, "AccDescrMoreOptions"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    sget v2, Lcom/iMe/common/IdFabric$Menu;->OPEN_IN_TWITTER:I

    .line 125
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_drawer_social_twitter:I

    .line 126
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->twitter_open_in_twitter:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 130
    new-instance v1, Lcom/iMe/ui/twitter/TwitterFragment$setupActionBar$1$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/twitter/TwitterFragment$setupActionBar$1$2;-><init>(Lcom/iMe/ui/twitter/TwitterFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 142
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const-string v1, "windowBackgroundGray"

    .line 144
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const-string v2, "chats_actionBackground"

    .line 145
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 174
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/iMe/ui/twitter/TwitterFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Lcom/iMe/ui/twitter/TwitterFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;Lcom/iMe/ui/twitter/TwitterFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    .line 185
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/iMe/ui/twitter/TwitterFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/twitter/TwitterFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/twitter/TwitterFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$14$lambda$13(Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;Lcom/iMe/ui/twitter/TwitterFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 177
    instance-of p2, p0, Lcom/iMe/model/twitter/TweetItem;

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    .line 179
    sget p3, Lorg/telegram/messenger/R$id;->image_share:I

    if-ne p2, p3, :cond_0

    invoke-direct {p1}, Lcom/iMe/ui/twitter/TwitterFragment;->getPresenter()Lcom/iMe/ui/twitter/TwitterPresenter;

    move-result-object p1

    check-cast p0, Lcom/iMe/model/twitter/TweetItem;

    invoke-virtual {p1, p0}, Lcom/iMe/ui/twitter/TwitterPresenter;->onShareClick(Lcom/iMe/model/twitter/TweetItem;)V

    :cond_0
    return-void
.end method

.method private static final setupListeners$lambda$16$lambda$15(Lcom/iMe/ui/twitter/TwitterFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getPresenter()Lcom/iMe/ui/twitter/TwitterPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/twitter/TwitterPresenter;->reload()V

    return-void
.end method

.method private final setupLoadMore(Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;)V
    .locals 1

    .line 166
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    const/4 v0, 0x5

    .line 167
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setPreLoadNumber(I)V

    .line 168
    new-instance v0, Lcom/iMe/ui/twitter/TwitterFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/twitter/TwitterFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/twitter/TwitterFragment;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V

    return-void
.end method

.method private static final setupLoadMore$lambda$12$lambda$11$lambda$10(Lcom/iMe/ui/twitter/TwitterFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getPresenter()Lcom/iMe/ui/twitter/TwitterPresenter;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/iMe/ui/twitter/TwitterPresenter;->loadTweets$default(Lcom/iMe/ui/twitter/TwitterPresenter;ZZILjava/lang/Object;)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 4

    .line 151
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;->recycleTweets:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;->getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    move-result-object v2

    const/4 v3, 0x1

    .line 154
    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setMatchParentHeight(Z)V

    .line 155
    new-instance v3, Lcom/iMe/ui/twitter/TwitterFragment$setupRecycleView$1$1$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/twitter/TwitterFragment$setupRecycleView$1$1$1$1;-><init>(Lcom/iMe/ui/twitter/TwitterFragment;)V

    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setOnRetryButtonClickAction(Lkotlin/jvm/functions/Function0;)V

    .line 157
    new-instance v2, Lcom/iMe/ui/twitter/adapter/diff/TweetsDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/twitter/adapter/diff/TweetsDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 158
    invoke-direct {p0, v1}, Lcom/iMe/ui/twitter/TwitterFragment;->setupLoadMore(Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;)V

    .line 152
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 160
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

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

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 101
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "actionBarDefault"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 102
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefaultIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 103
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "actionBarDefaultTitle"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 104
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 105
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 100
    new-instance v10, Lcom/iMe/ui/twitter/TwitterFragment$$ExternalSyntheticLambda3;

    invoke-direct {v10, v0}, Lcom/iMe/ui/twitter/TwitterFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/twitter/TwitterFragment;)V

    const-string v11, "windowBackgroundGray"

    move-object v4, v2

    .line 105
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 100
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->setupActionBar()V

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->setupListeners()V

    .line 51
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->setupRecycleView()V

    .line 52
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->setupColors()V

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreFail()V

    return-void
.end method

.method public onLoadMoreItems(Ljava/util/List;)V
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

    .line 74
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 76
    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method

.method public openBrowserUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public renderInitialItems(Ljava/util/List;)V
    .locals 1
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

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setNewInstance(Ljava/util/List;)V

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

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/ui/twitter/adapter/TweetsRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic resetLoadMore()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/LoadMoreView$-CC;->$default$resetLoadMore(Lcom/iMe/ui/base/mvp/LoadMoreView;)V

    return-void
.end method

.method public shareLink(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->share(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/twitter/TwitterFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
