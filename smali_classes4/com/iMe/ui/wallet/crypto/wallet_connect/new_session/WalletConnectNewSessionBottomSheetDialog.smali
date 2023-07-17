.class public final Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "WalletConnectNewSessionBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectNewSessionBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectNewSessionBottomSheetDialog.kt\ncom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,149:1\n13#2,4:150\n56#3,6:154\n*S KotlinDebug\n*F\n+ 1 WalletConnectNewSessionBottomSheetDialog.kt\ncom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog\n*L\n29#1:150,4\n32#1:154,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 29
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 35
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 5

    const-string/jumbo v0, "sessionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 29
    new-instance v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$presenter$2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "presenter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 29
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v2}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 35
    new-instance p1, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$binding$2;

    invoke-direct {p1, p2}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$binding$2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {p0, v2, p1, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$approveSession(Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->approveSession()V

    return-void
.end method

.method public static final synthetic access$rejectSession(Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->rejectSession()V

    return-void
.end method

.method private final approveSession()V
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->approveSession()V

    .line 129
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public static final newInstance(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$Companion;->newInstance(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;

    move-result-object p0

    return-object p0
.end method

.method private final rejectSession()V
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->rejectSession()V

    .line 134
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private final setupColors()V
    .locals 6

    .line 91
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;

    move-result-object v0

    .line 92
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ImageHeaderView;->setupColors()V

    .line 93
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->viewWalletCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 94
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->viewNetworkCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 95
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->buttonConnect:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    .line 96
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 97
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    const-string/jumbo v2, "setupColors$lambda$2$lambda$1"

    .line 98
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 101
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/widget/TextView;

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->textViewBalance:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v4, "textViewBalance"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->textTransactionsApproval:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v4, "textTransactionsApproval"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    .line 103
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->imageViewBalance:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 104
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->imageTransactionsApproval:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 13

    .line 121
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;

    move-result-object v0

    .line 122
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->buttonConnect:Lcom/iMe/ui/custom/BigActionButton;

    const-string v2, "buttonConnect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 123
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v0, "buttonClose"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$setupListeners$1$2;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupViews()V
    .locals 4

    .line 109
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;

    move-result-object v0

    .line 110
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->textViewBalance:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_new_session_view_balance:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->textTransactionsApproval:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_new_transactions_approval:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->buttonConnect:Lcom/iMe/ui/custom/BigActionButton;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_connect_new_connection:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 115
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->rejectSession()V

    .line 83
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->setupColors()V

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->setupListeners()V

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->setupViews()V

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "iconUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;

    move-result-object v0

    .line 60
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_new_session_title:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v2, v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-virtual {v1, p1, p2, p3}, Lcom/iMe/ui/custom/ImageHeaderView;->setupViewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->viewWalletCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->wallet_connect_new_session_wallet:I

    invoke-interface {p2, p3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 68
    sget p3, Lorg/telegram/messenger/R$drawable;->fork_ic_nav_wallet_24:I

    .line 65
    invoke-virtual {p1, p2, p4, p3, v4}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 71
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->viewNetworkCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 72
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->wallet_connect_session_details_network:I

    invoke-interface {p2, p3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 74
    sget p3, Lorg/telegram/messenger/R$drawable;->msg_language:I

    .line 71
    invoke-virtual {p1, p2, p5, p3, v4}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method
