.class public final Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "WalletSwapFeeFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$Companion;,
        Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSwapFeeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapFeeFragment.kt\ncom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n*L\n1#1,256:1\n13#2,4:257\n*S KotlinDebug\n*F\n+ 1 WalletSwapFeeFragment.kt\ncom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment\n*L\n36#1:257,4\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$Companion;


# instance fields
.field private deadlineChooserRow:I

.field private deadlineHeaderRow:I

.field private deadlineInfoRow:I

.field private feeChooserRow:I

.field private feeInfoRow:I

.field private final listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private onFeeChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I

.field private slipChooserRow:I

.field private slipHeaderRow:I

.field private slipInfoRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    const/4 v1, 0x4

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 36
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 39
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 40
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 41
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->Companion:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
    .locals 4

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$presenter$2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

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

    .line 36
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 39
    new-instance p1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$listAdapter$2;-><init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 40
    new-instance p1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$rootView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$rootView$2;-><init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 41
    new-instance p1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$listView$2;-><init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 43
    sget-object p1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$onFeeChangedListener$1;->INSTANCE:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$onFeeChangedListener$1;

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->onFeeChangedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$createListView(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->createListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createRootView(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->createRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDeadlineChooserRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->deadlineChooserRow:I

    return p0
.end method

.method public static final synthetic access$getDeadlineHeaderRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->deadlineHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getDeadlineInfoRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->deadlineInfoRow:I

    return p0
.end method

.method public static final synthetic access$getFeeChooserRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->feeChooserRow:I

    return p0
.end method

.method public static final synthetic access$getFeeInfoRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->feeInfoRow:I

    return p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getSlipChooserRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->slipChooserRow:I

    return p0
.end method

.method public static final synthetic access$getSlipHeaderRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->slipHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getSlipInfoRow$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->slipInfoRow:I

    return p0
.end method

.method public static final synthetic access$invokeResultListener(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->invokeResultListener()V

    return-void
.end method

.method public static final synthetic access$setOnFeeChangedListener$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->onFeeChangedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final createListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 5

    .line 142
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 144
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 145
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListAdapter()Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method private final createRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 148
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 149
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final getListAdapter()Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final invokeResultListener()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->onFeeChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getFeeArgs()Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final setupActionBar()V
    .locals 3

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 105
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 106
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_transaction_options_toolbar_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 108
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 109
    new-instance v1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final updateRows()V
    .locals 2

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->rowCount:I

    add-int/lit8 v0, v0, 0x1

    .line 129
    iput v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    .line 130
    iput v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->rowCount:I

    iput v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->feeChooserRow:I

    add-int/lit8 v0, v1, 0x1

    .line 131
    iput v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->rowCount:I

    iput v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->feeInfoRow:I

    add-int/lit8 v1, v0, 0x1

    .line 132
    iput v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->rowCount:I

    iput v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->deadlineHeaderRow:I

    add-int/lit8 v0, v1, 0x1

    .line 133
    iput v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->rowCount:I

    iput v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->deadlineChooserRow:I

    add-int/lit8 v1, v0, 0x1

    .line 134
    iput v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->rowCount:I

    iput v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->deadlineInfoRow:I

    add-int/lit8 v0, v1, 0x1

    .line 135
    iput v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->rowCount:I

    iput v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->slipHeaderRow:I

    add-int/lit8 v1, v0, 0x1

    .line 136
    iput v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->rowCount:I

    iput v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->slipChooserRow:I

    add-int/lit8 v0, v1, 0x1

    .line 137
    iput v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->rowCount:I

    iput v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->slipInfoRow:I

    .line 139
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListAdapter()Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x10

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 81
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v11, 0x3

    new-array v5, v11, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const-class v2, Lorg/telegram/ui/Components/SlideChooseView;

    const/4 v13, 0x1

    aput-object v2, v5, v13

    const-class v2, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v14, 0x2

    aput-object v2, v5, v14

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    aput-object v10, v1, v12

    .line 82
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    aput-object v2, v1, v13

    .line 83
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v30, v22

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    aput-object v2, v1, v14

    .line 84
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v16

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v15, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    aput-object v2, v1, v11

    .line 85
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 86
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 87
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 88
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 89
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v4, v3, v12

    const-string/jumbo v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v16, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 90
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    new-array v3, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v12

    const-string/jumbo v5, "valueTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 91
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v12

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v18, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 92
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    new-array v3, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v16, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 93
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    new-array v3, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 94
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    new-array v7, v13, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v3, v7, v12

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/4 v6, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 95
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    new-array v7, v13, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v3, v7, v12

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 96
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    new-array v7, v13, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v3, v7, v12

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 80
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->setupActionBar()V

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFeeReselected()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->getListAdapter()Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->feeInfoRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->invokeResultListener()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 59
    invoke-super {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->onResume()V

    .line 60
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->updateRows()V

    return-void
.end method
