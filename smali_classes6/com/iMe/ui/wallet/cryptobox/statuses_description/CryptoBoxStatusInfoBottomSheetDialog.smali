.class public final Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "CryptoBoxStatusInfoBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoBoxStatusInfoBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoBoxStatusInfoBottomSheetDialog.kt\ncom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,87:1\n13#2,4:88\n56#3,6:92\n56#3,6:98\n*S KotlinDebug\n*F\n+ 1 CryptoBoxStatusInfoBottomSheetDialog.kt\ncom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog\n*L\n25#1:88,4\n28#1:92,6\n29#1:98,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final statusInfoAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 25
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 31
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    const-string/jumbo v0, "parentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 25
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$presenter$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;)V

    .line 16
    new-instance v2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v3

    const-string v4, "mvpDelegate"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoPresenter;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "presenter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v4}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$special$$inlined$inject$default$2;

    invoke-direct {v2, p0, v4, v4}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->statusInfoAdapter$delegate:Lkotlin/Lazy;

    .line 31
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$binding$2;

    invoke-direct {v1, p1}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$binding$2;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v4, v1, v0, v4}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getStatusInfoAdapter()Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->statusInfoAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;

    return-object v0
.end method

.method private final setupColors()V
    .locals 3

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;

    move-result-object v0

    .line 63
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v2, "setupColors$lambda$2$lambda$1"

    .line 65
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 67
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->buttonOk:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 72
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->buttonOk:Lcom/iMe/ui/custom/BigActionButton;

    const-string v0, "binding.buttonOk"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$setupListeners$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$setupListeners$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupRecyclerView()V
    .locals 3

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->recyclerStatuses:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->getStatusInfoAdapter()Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final setupViews()V
    .locals 4

    .line 55
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;

    move-result-object v0

    .line 56
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_status_info_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->buttonOk:Lcom/iMe/ui/custom/BigActionButton;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->setupViews()V

    .line 41
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->setupColors()V

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->setupListeners()V

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->setupRecyclerView()V

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public renderItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "statuses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->getStatusInfoAdapter()Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method
