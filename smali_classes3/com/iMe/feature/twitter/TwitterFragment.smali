.class public final Lcom/iMe/feature/twitter/TwitterFragment;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "TwitterFragment.kt"

# interfaces
.implements Lcom/iMe/feature/twitter/TwitterView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/feature/twitter/TwitterFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterFragment.kt\ncom/iMe/feature/twitter/TwitterFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,241:1\n13#2,4:242\n56#3,6:246\n56#3,6:252\n1549#4:258\n1620#4,3:259\n*S KotlinDebug\n*F\n+ 1 TwitterFragment.kt\ncom/iMe/feature/twitter/TwitterFragment\n*L\n44#1:242,4\n49#1:246,6\n50#1:252,6\n80#1:258\n80#1:259,3\n*E\n"
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

.field public static final Companion:Lcom/iMe/feature/twitter/TwitterFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

.field private final telegramProfileId:J

.field private final tweetsRecycleAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$52BGm400QwChl4m7BrShGt2g7UM(Lcom/iMe/feature/twitter/TwitterFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->setupListeners$lambda$15(Lcom/iMe/feature/twitter/TwitterFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U0BT-tUFeI6G2W58L4cHB4oTLUA(Lcom/iMe/feature/twitter/TwitterFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->setupLoadMore$lambda$12$lambda$11$lambda$10(Lcom/iMe/feature/twitter/TwitterFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dEQLh-QIkTGmUbr1DHqFJyAN7UY(Lcom/iMe/feature/twitter/TwitterFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getThemeDescriptions$lambda$2(Lcom/iMe/feature/twitter/TwitterFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w24iEV3HjvDOzIZGtBiM-ox3xio(Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;Lcom/iMe/feature/twitter/TwitterFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/feature/twitter/TwitterFragment;->setupListeners$lambda$14$lambda$13(Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;Lcom/iMe/feature/twitter/TwitterFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/feature/twitter/TwitterFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 44
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/feature/twitter/TwitterPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 52
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/feature/twitter/TwitterFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/feature/twitter/TwitterFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/twitter/TwitterFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/feature/twitter/TwitterFragment;->Companion:Lcom/iMe/feature/twitter/TwitterFragment$Companion;

    return-void
.end method

.method public constructor <init>(JLcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 2

    const-string v0, "socialNetwork"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/iMe/feature/twitter/TwitterFragment;->telegramProfileId:J

    .line 41
    iput-object p3, p0, Lcom/iMe/feature/twitter/TwitterFragment;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    .line 44
    new-instance p1, Lcom/iMe/feature/twitter/TwitterFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/feature/twitter/TwitterFragment$presenter$2;-><init>(Lcom/iMe/feature/twitter/TwitterFragment;)V

    .line 16
    new-instance p2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p3

    const-string v0, "mvpDelegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "presenter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 44
    iput-object p2, p0, Lcom/iMe/feature/twitter/TwitterFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/feature/twitter/TwitterFragment$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/feature/twitter/TwitterFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 49
    iput-object p2, p0, Lcom/iMe/feature/twitter/TwitterFragment;->resourceManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/feature/twitter/TwitterFragment$special$$inlined$inject$default$2;

    invoke-direct {p2, p0, v0, v0}, Lcom/iMe/feature/twitter/TwitterFragment$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/iMe/feature/twitter/TwitterFragment;->tweetsRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 52
    new-instance p1, Lcom/iMe/feature/twitter/TwitterFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/feature/twitter/TwitterFragment$binding$2;-><init>(Lcom/iMe/feature/twitter/TwitterFragment;)V

    const/4 p2, 0x1

    invoke-static {p0, v0, p1, p2, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/feature/twitter/TwitterFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/feature/twitter/TwitterFragment;)Lcom/iMe/feature/twitter/TwitterPresenter;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getPresenter()Lcom/iMe/feature/twitter/TwitterPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSocialNetwork$p(Lcom/iMe/feature/twitter/TwitterFragment;)Lcom/iMe/feature/socialMedias/SocialNetwork;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/iMe/feature/twitter/TwitterFragment;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    return-object p0
.end method

.method public static final synthetic access$getTelegramProfileId$p(Lcom/iMe/feature/twitter/TwitterFragment;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/iMe/feature/twitter/TwitterFragment;->telegramProfileId:J

    return-wide v0
.end method

.method public static final synthetic access$showTranslationDialog(Lcom/iMe/feature/twitter/TwitterFragment;Lcom/iMe/model/twitter/TweetItem;)Landroid/app/Dialog;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/iMe/feature/twitter/TwitterFragment;->showTranslationDialog(Lcom/iMe/model/twitter/TweetItem;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/feature/twitter/TwitterFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/feature/twitter/TwitterPresenter;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/feature/twitter/TwitterFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/twitter/TwitterPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterFragment;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$2(Lcom/iMe/feature/twitter/TwitterFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->setupColors()V

    .line 132
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final getTweetsRecycleAdapter()Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterFragment;->tweetsRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;

    return-object v0
.end method

.method public static final newInstance(JLcom/iMe/feature/socialMedias/SocialNetwork;)Lcom/iMe/feature/twitter/TwitterFragment;
    .locals 1

    sget-object v0, Lcom/iMe/feature/twitter/TwitterFragment;->Companion:Lcom/iMe/feature/twitter/TwitterFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iMe/feature/twitter/TwitterFragment$Companion;->newInstance(JLcom/iMe/feature/socialMedias/SocialNetwork;)Lcom/iMe/feature/twitter/TwitterFragment;

    move-result-object p0

    return-object p0
.end method

.method private final setupActionBar()V
    .locals 6

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 138
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 139
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 140
    sget v1, Lorg/telegram/messenger/R$string;->twitter_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 142
    sget v2, Lcom/iMe/common/IdFabric$Menu;->OPTIONS:I

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    .line 143
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v3, "AccDescrMoreOptions"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    sget v2, Lcom/iMe/common/IdFabric$Menu;->OPEN_IN_TWITTER:I

    .line 146
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_drawer_social_twitter:I

    .line 147
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->twitter_open_in_twitter:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 149
    iget-object v2, p0, Lcom/iMe/feature/twitter/TwitterFragment;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v2}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getHasEditAccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    sget v2, Lcom/iMe/common/IdFabric$Menu;->RESET_TWITTER:I

    .line 152
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_recycler_22:I

    .line 153
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->social_reset_menu_item:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 157
    :cond_0
    new-instance v1, Lcom/iMe/feature/twitter/TwitterFragment$setupActionBar$1$2;

    invoke-direct {v1, p0}, Lcom/iMe/feature/twitter/TwitterFragment$setupActionBar$1$2;-><init>(Lcom/iMe/feature/twitter/TwitterFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 170
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    .line 172
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 173
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 198
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;->getTweetProvider()Lcom/iMe/ui/adapter/provider/TweetProvider;

    move-result-object v1

    new-instance v2, Lcom/iMe/feature/twitter/TwitterFragment$setupListeners$1$1;

    invoke-direct {v2, p0}, Lcom/iMe/feature/twitter/TwitterFragment$setupListeners$1$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/TweetProvider;->setOnTweetItemClick(Lkotlin/jvm/functions/Function1;)V

    .line 200
    new-instance v1, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;Lcom/iMe/feature/twitter/TwitterFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    .line 209
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/feature/twitter/TwitterFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$14$lambda$13(Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;Lcom/iMe/feature/twitter/TwitterFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 202
    instance-of p2, p0, Lcom/iMe/model/twitter/TweetItem;

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    .line 203
    sget p4, Lorg/telegram/messenger/R$id;->image_share:I

    if-ne p2, p4, :cond_0

    invoke-direct {p1}, Lcom/iMe/feature/twitter/TwitterFragment;->getPresenter()Lcom/iMe/feature/twitter/TwitterPresenter;

    move-result-object p1

    check-cast p0, Lcom/iMe/model/twitter/TweetItem;

    invoke-virtual {p1, p0}, Lcom/iMe/feature/twitter/TwitterPresenter;->onShareClick(Lcom/iMe/model/twitter/TweetItem;)V

    goto :goto_0

    .line 204
    :cond_0
    sget p4, Lorg/telegram/messenger/R$id;->image_menu:I

    if-ne p2, p4, :cond_1

    check-cast p0, Lcom/iMe/model/twitter/TweetItem;

    invoke-direct {p1, p3, p0}, Lcom/iMe/feature/twitter/TwitterFragment;->showItemMenu(Landroid/view/View;Lcom/iMe/model/twitter/TweetItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final setupListeners$lambda$15(Lcom/iMe/feature/twitter/TwitterFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getPresenter()Lcom/iMe/feature/twitter/TwitterPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/feature/twitter/TwitterPresenter;->reload()V

    return-void
.end method

.method private final setupLoadMore(Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;)V
    .locals 1

    .line 190
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    const/4 v0, 0x5

    .line 191
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setPreLoadNumber(I)V

    .line 192
    new-instance v0, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/feature/twitter/TwitterFragment;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V

    return-void
.end method

.method private static final setupLoadMore$lambda$12$lambda$11$lambda$10(Lcom/iMe/feature/twitter/TwitterFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getPresenter()Lcom/iMe/feature/twitter/TwitterPresenter;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/iMe/feature/twitter/TwitterPresenter;->loadTweets$default(Lcom/iMe/feature/twitter/TwitterPresenter;ZZILjava/lang/Object;)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 179
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;->recycleTweets:Landroidx/recyclerview/widget/RecyclerView;

    .line 180
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;

    move-result-object v1

    .line 181
    new-instance v2, Lcom/iMe/feature/twitter/adapter/diff/TweetsDiffCallback;

    invoke-direct {v2}, Lcom/iMe/feature/twitter/adapter/diff/TweetsDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 182
    invoke-direct {p0, v1}, Lcom/iMe/feature/twitter/TwitterFragment;->setupLoadMore(Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;)V

    .line 180
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 184
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final showItemMenu(Landroid/view/View;Lcom/iMe/model/twitter/TweetItem;)V
    .locals 9

    .line 214
    new-instance v8, Lcom/iMe/ui/popupMenu/MenuItem;

    .line 215
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_translate:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_premium_translate:I

    .line 213
    new-instance v5, Lcom/iMe/feature/twitter/TwitterFragment$showItemMenu$menuItems$1;

    invoke-direct {v5, p0, p2}, Lcom/iMe/feature/twitter/TwitterFragment$showItemMenu$menuItems$1;-><init>(Lcom/iMe/feature/twitter/TwitterFragment;Lcom/iMe/model/twitter/TweetItem;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v0, v8

    .line 214
    invoke-direct/range {v0 .. v7}, Lcom/iMe/ui/popupMenu/MenuItem;-><init>(Ljava/lang/String;IIILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 213
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 220
    invoke-static {p1, p2}, Lcom/iMe/ui/popupMenu/PopupMenuExtKt;->showPopupMenu(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method private final showTranslationDialog(Lcom/iMe/model/twitter/TweetItem;)Landroid/app/Dialog;
    .locals 4

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 227
    new-instance v1, Lcom/iMe/model/translation/TranslationArgs;

    sget-object v2, Lcom/iMe/fork/enums/TranslationDialogType;->INCOMING:Lcom/iMe/fork/enums/TranslationDialogType;

    invoke-virtual {p1}, Lcom/iMe/model/twitter/TweetItem;->getText()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/iMe/model/translation/TranslationArgs;-><init>(Lcom/iMe/fork/enums/TranslationDialogType;Ljava/lang/String;Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)V

    const/4 p1, 0x0

    .line 225
    invoke-static {v0, v1, v3, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->createInstanceForForkTranslation(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;Z)Lcom/iMe/fork/ui/dialog/TranslateAlert;

    move-result-object p1

    .line 224
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
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

    .line 126
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

    .line 127
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

    .line 128
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

    .line 129
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 130
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 125
    new-instance v10, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0}, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/feature/twitter/TwitterFragment;)V

    .line 133
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    move-object v4, v2

    .line 130
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 125
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->setupActionBar()V

    .line 56
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->setupListeners()V

    .line 57
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->setupRecycleView()V

    .line 58
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->setupColors()V

    .line 60
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;

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

    .line 99
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 101
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

    .line 118
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public openPhotoViewer(Lcom/iMe/model/twitter/TweetItem;)V
    .locals 23

    const-string v0, "tweetItem"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/twitter/TweetItem;->getMediaInfo()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;

    .line 81
    new-instance v15, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->getUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object v3, v15

    invoke-direct/range {v3 .. v14}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 1621
    invoke-interface {v1, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_0
    new-instance v21, Lcom/iMe/feature/twitter/TwitterFragment$openPhotoViewer$provider$1;

    invoke-direct/range {v21 .. v21}, Lcom/iMe/feature/twitter/TwitterFragment$openPhotoViewer$provider$1;-><init>()V

    .line 84
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 85
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

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

    .line 72
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;

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

    .line 76
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getTweetsRecycleAdapter()Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;

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

    .line 122
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->share(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public showResetTwitterDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterFragment;->getPresenter()Lcom/iMe/feature/twitter/TwitterPresenter;

    move-result-object v0

    new-instance v3, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/feature/twitter/TwitterPresenter;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    .line 89
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 95
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->redPositive()V

    return-void
.end method
