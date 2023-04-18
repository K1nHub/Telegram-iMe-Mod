.class public final Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;
.super Lcom/iMe/ui/base/WalletAuthFragment;
.source "WalletHomeCryptoTokensSettingsFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;,
        Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;,
        Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;,
        Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$TouchHelperCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeCryptoTokensSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeCryptoTokensSettingsFragment.kt\ncom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n*L\n1#1,276:1\n13#2,4:277\n*S KotlinDebug\n*F\n+ 1 WalletHomeCryptoTokensSettingsFragment.kt\ncom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment\n*L\n39#1:277,4\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;


# instance fields
.field private headerRow:I

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private rowCount:I

.field private final screenType:Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

.field private tokensEndRow:I

.field private tokensStartRow:I


# direct methods
.method public static synthetic $r8$lambda$3j-E-iLwXmVj38fzcfXTLuqRAbg(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;Landroid/view/View;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->initListView$lambda$6$lambda$5(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$wkIeUcAA24zXu0D-y9Esl9fKtG4(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getThemeDescriptions$lambda$1(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 39
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->Companion:Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/base/WalletAuthFragment;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->screenType:Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

    .line 39
    new-instance p1, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 39
    iput-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 42
    new-instance p1, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$listView$2;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->listView$delegate:Lkotlin/Lazy;

    .line 43
    new-instance p1, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$listAdapter$2;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->listAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;)V

    return-void
.end method

.method public static final synthetic access$getCryptoAccessManager(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getCryptoAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHeaderRow$p(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->headerRow:I

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getListAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getTokensEndRow$p(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->tokensEndRow:I

    return p0
.end method

.method public static final synthetic access$getTokensStartRow$p(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->tokensStartRow:I

    return p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method private final getListAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$1(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getListAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 120
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 122
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 123
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getListAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 124
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$TouchHelperCallback;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$TouchHelperCallback;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 125
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda$6$lambda$5(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;Landroid/view/View;IFF)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    instance-of p3, p1, Lcom/iMe/fork/ui/view/MovingCheckCell;

    if-eqz p3, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;

    move-result-object p3

    iget p0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->tokensStartRow:I

    sub-int/2addr p2, p0

    invoke-virtual {p3, p2}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->switchTokenEnabled(I)V

    .line 129
    check-cast p1, Lcom/iMe/fork/ui/view/MovingCheckCell;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/MovingCheckCell;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private final setupActionBar()V
    .locals 6

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 97
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 99
    sget v1, Lorg/telegram/messenger/R$string;->wallet_home_crypto_tokens_settings_toolbar_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 101
    sget v2, Lcom/iMe/common/IdFabric$Menu;->OPTIONS:I

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    .line 102
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v3, "AccDescrMoreOptions"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 103
    sget v2, Lcom/iMe/common/IdFabric$Menu;->RESET:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_reset:I

    sget v4, Lorg/telegram/messenger/R$string;->ThemeResetToDefaults:I

    const-string v5, "ThemeResetToDefaults"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 106
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$setupActionBar$1$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$setupActionBar$1$2;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final updateRows(I)V
    .locals 2

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    .line 89
    iput v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->rowCount:I

    iput v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->headerRow:I

    .line 90
    iput v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->tokensStartRow:I

    add-int/2addr v1, p1

    .line 91
    iput v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->rowCount:I

    .line 92
    iput v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->tokensEndRow:I

    return-void
.end method


# virtual methods
.method public final getScreenType()Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->screenType:Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;

    return-object v0
.end method

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

    const/16 v1, 0xa

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 64
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 63
    new-instance v8, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v9, "windowBackgroundGray"

    move-object v2, v10

    .line 64
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 67
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefault"

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 68
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "actionBarDefaultIcon"

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 69
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v12, 0x0

    const-string v13, "actionBarDefaultTitle"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v3, v1, v5

    .line 70
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v13, "actionBarDefaultSelector"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v3, v1, v5

    .line 71
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v9, v2

    const-string/jumbo v13, "windowBackgroundWhite"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x5

    aput-object v3, v1, v5

    .line 72
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v9, v2

    const-string v5, "checkBox"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v13, 0x0

    const-string v14, "switchTrack"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x6

    aput-object v3, v1, v6

    .line 73
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v14, 0x0

    const-string v15, "switchTrackChecked"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x7

    aput-object v3, v1, v5

    .line 74
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v9, v2

    const-string v5, "titleView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-string/jumbo v14, "windowBackgroundWhiteBlackText"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 75
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v4, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v4, v9, v2

    const-string v2, "moveIconView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "stickers_menu"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v3, v1, v2

    .line 63
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->setupActionBar()V

    const-string/jumbo p1, "windowBackgroundGray"

    .line 54
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 55
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onFragmentDestroy()V
    .locals 4

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;->saveSettings$default(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;ZILjava/lang/Object;)V

    .line 60
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public showTokens(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "tokens"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->updateRows(I)V

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->getListAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
