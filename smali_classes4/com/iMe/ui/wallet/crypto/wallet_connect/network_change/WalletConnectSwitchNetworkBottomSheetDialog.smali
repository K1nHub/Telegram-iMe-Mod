.class public final Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "WalletConnectSwitchNetworkBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectSwitchNetworkBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectSwitchNetworkBottomSheetDialog.kt\ncom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,141:1\n13#2,4:142\n56#3,6:146\n*S KotlinDebug\n*F\n+ 1 WalletConnectSwitchNetworkBottomSheetDialog.kt\ncom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog\n*L\n30#1:142,4\n33#1:146,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 30
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 36
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 8

    const-string v0, "sessionItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 30
    new-instance v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2;

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p2

    const-string p3, "mvpDelegate"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-class p4, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;

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

    .line 30
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 36
    new-instance p1, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$binding$2;

    invoke-direct {p1, p5}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$binding$2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {p0, p3, p1, v1, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$approveNetworkChange(Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->approveNetworkChange()V

    return-void
.end method

.method public static final synthetic access$rejectNetworkChange(Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->rejectNetworkChange()V

    return-void
.end method

.method private final approveNetworkChange()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->approveNetworkChange()V

    .line 117
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public static final newInstance(JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;
    .locals 6

    sget-object v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$Companion;

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$Companion;->newInstance(JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;

    move-result-object p0

    return-object p0
.end method

.method private final rejectNetworkChange()V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->rejectNetworkChange()V

    .line 122
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private final setupColors()V
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;

    move-result-object v0

    .line 87
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ImageHeaderView;->setupColors()V

    .line 88
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->viewNetworkCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 89
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->buttonChangeNetwork:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    .line 90
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 91
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    const-string/jumbo v1, "setupColors$lambda$2$lambda$1"

    .line 92
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 13

    .line 109
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;

    move-result-object v0

    .line 110
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->buttonChangeNetwork:Lcom/iMe/ui/custom/BigActionButton;

    const-string v2, "buttonChangeNetwork"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 111
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v0, "buttonClose"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$setupListeners$1$2;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupViews()V
    .locals 4

    .line 98
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;

    move-result-object v0

    .line 99
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->viewNetworkCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iMe/ui/custom/DetailsIconCellView;->setIconTinted(Z)V

    .line 100
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->buttonChangeNetwork:Lcom/iMe/ui/custom/BigActionButton;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_switch_network:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 102
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 103
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

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->rejectNetworkChange()V

    .line 78
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->setupViews()V

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->setupColors()V

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->setupListeners()V

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    const-string v0, "iconUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;

    move-result-object v0

    .line 61
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_switch_network_title:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v2, v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 61
    invoke-virtual {v1, p1, p2, p3}, Lcom/iMe/ui/custom/ImageHeaderView;->setupViewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->viewNetworkCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->wallet_connect_session_details_network:I

    invoke-interface {p2, p3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-virtual {p1, p2, p5, p4, v4}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method
