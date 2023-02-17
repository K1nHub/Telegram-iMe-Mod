.class public final Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;
.super Lcom/smedialink/ui/base/WalletAuthFragment;
.source "WalletSelectTokenFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSelectTokenFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSelectTokenFragment.kt\ncom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,130:1\n13#2,4:131\n56#3,6:135\n*S KotlinDebug\n*F\n+ 1 WalletSelectTokenFragment.kt\ncom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment\n*L\n36#1:131,4\n37#1:135,6\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;


# instance fields
.field private final allTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation
.end field

.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private final onTokenSelectedAction:Lorg/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation
.end field

.field private final onlyPositiveBalance:Z

.field private final selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

.field private final tokensAdapter$delegate:Lkotlin/Lazy;

.field private final type:Lcom/smedialink/model/wallet/select/SelectableType;


# direct methods
.method public static synthetic $r8$lambda$Mwqb1RJmiB4e9g0PWjytAufo444(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->getThemeDescriptions$lambda-0(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QdR1HsEwdLOnLm-iIPrZg41g4uk(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->setupRecycleView$lambda-5$lambda-4$lambda-3(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 36
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 40
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->Companion:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/model/wallet/select/SelectableType;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZLorg/fork/utils/Callbacks$Callback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/select/SelectableType;",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Z",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allTokens"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTokenSelectedAction"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->type:Lcom/smedialink/model/wallet/select/SelectableType;

    .line 28
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 29
    iput-object p3, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->allTokens:Ljava/util/List;

    .line 30
    iput-object p4, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 31
    iput-boolean p5, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->onlyPositiveBalance:Z

    .line 32
    iput-object p6, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->onTokenSelectedAction:Lorg/fork/utils/Callbacks$Callback1;

    .line 36
    new-instance p1, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2;-><init>(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;)V

    .line 16
    new-instance p2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p3

    const-string p4, "mvpDelegate"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-class p5, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "."

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "presenter"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$special$$inlined$inject$default$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->tokensAdapter$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p1, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$binding$2;-><init>(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;)V

    const/4 p2, 0x1

    invoke-static {p0, p3, p1, p2, p3}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getAllTokens$p(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->allTokens:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getNetworkType$p(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object p0
.end method

.method public static final synthetic access$getOnlyPositiveBalance$p(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->onlyPositiveBalance:Z

    return p0
.end method

.method public static final synthetic access$getSelectedToken$p(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;)Lcom/smedialink/model/wallet/select/SelectableToken;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    return-object p0
.end method

.method public static final synthetic access$getType$p(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;)Lcom/smedialink/model/wallet/select/SelectableType;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->type:Lcom/smedialink/model/wallet/select/SelectableType;

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda-0(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->getTokensAdapter()Lcom/smedialink/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final getTokensAdapter()Lcom/smedialink/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->tokensAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;

    return-object v0
.end method

.method public static final newInstance(Lcom/smedialink/model/wallet/select/SelectableType;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZLorg/fork/utils/Callbacks$Callback1;)Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/select/SelectableType;",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Z",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;)",
            "Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;"
        }
    .end annotation

    sget-object v0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->Companion:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;->newInstance(Lcom/smedialink/model/wallet/select/SelectableType;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZLorg/fork/utils/Callbacks$Callback1;)Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;

    move-result-object p0

    return-object p0
.end method

.method private final setupActionBar()V
    .locals 3

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 80
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 81
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_select_token_header:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 83
    new-instance v1, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$setupActionBar$1$1;-><init>(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object v0

    .line 95
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->globalStateLayout:Lcom/smedialink/ui/custom/state/GlobalStateLayout;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 100
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->recycleTokens:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->getTokensAdapter()Lcom/smedialink/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;

    move-result-object v1

    .line 102
    new-instance v2, Lcom/smedialink/ui/wallet/swap/token/adapter/diff/SelectTokenDiffCallback;

    invoke-direct {v2}, Lcom/smedialink/ui/wallet/swap/token/adapter/diff/SelectTokenDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 103
    new-instance v2, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 107
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 101
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 108
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private static final setupRecycleView$lambda-5$lambda-4$lambda-3(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$noName_1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->onTokenSelectedAction:Lorg/fork/utils/Callbacks$Callback1;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->getTokensAdapter()Lcom/smedialink/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smedialink/model/wallet/select/SelectableTokenItem;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/select/SelectableTokenItem;->getToken()Lcom/smedialink/model/wallet/select/SelectableToken;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

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

    .line 53
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

    .line 54
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

    .line 55
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

    .line 56
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 57
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->getRoot()Lcom/smedialink/ui/custom/state/GlobalStateLayout;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 52
    new-instance v10, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;)V

    const-string v11, "windowBackgroundWhite"

    move-object v4, v2

    .line 57
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 52
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->setupActionBar()V

    .line 46
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->setupColors()V

    .line 47
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->setupRecycleView()V

    .line 49
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->getRoot()Lcom/smedialink/ui/custom/state/GlobalStateLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onLoadingState()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->globalStateLayout:Lcom/smedialink/ui/custom/state/GlobalStateLayout;

    invoke-virtual {v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->showProgress()V

    return-void
.end method

.method public onTokensLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/select/SelectableTokenItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tokens"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->globalStateLayout:Lcom/smedialink/ui/custom/state/GlobalStateLayout;

    const-string v0, "binding.globalStateLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v1, v0, v1}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->showEmpty$default(Lcom/smedialink/ui/custom/state/GlobalStateLayout;Lcom/smedialink/model/state/GlobalState$Empty;ILjava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->globalStateLayout:Lcom/smedialink/ui/custom/state/GlobalStateLayout;

    invoke-virtual {v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->showContent()V

    .line 65
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->getTokensAdapter()Lcom/smedialink/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
