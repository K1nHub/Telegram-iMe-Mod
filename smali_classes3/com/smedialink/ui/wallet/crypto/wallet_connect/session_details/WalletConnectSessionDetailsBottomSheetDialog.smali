.class public final Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;
.super Lcom/smedialink/ui/base/mvp/MvpBottomSheet;
.source "WalletConnectSessionDetailsBottomSheetDialog.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectSessionDetailsBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectSessionDetailsBottomSheetDialog.kt\ncom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,143:1\n13#2,4:144\n56#3,6:148\n*S KotlinDebug\n*F\n+ 1 WalletConnectSessionDetailsBottomSheetDialog.kt\ncom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog\n*L\n31#1:144,4\n34#1:148,6\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final disconnectAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$rGpuqYsUGrGwe_kblKg5wk7JhmU(Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->disconnect()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 31
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 37
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->Companion:Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disconnectAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/smedialink/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 27
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->disconnectAction:Lkotlin/jvm/functions/Function0;

    .line 31
    new-instance p3, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$presenter$2;

    invoke-direct {p3, p0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$presenter$2;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string v2, "mvpDelegate"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2, p3}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 31
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p3, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 37
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$binding$2;

    invoke-direct {p1, p2}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$binding$2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpBottomSheet;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$showDisconnectConfirmationDialog(Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->showDisconnectConfirmationDialog()V

    return-void
.end method

.method private final disconnect()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->disconnectAction:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsPresenter;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setupColors()V
    .locals 5

    .line 90
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;

    move-result-object v0

    .line 91
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->viewHeader:Lcom/smedialink/ui/custom/ImageHeaderView;

    invoke-virtual {v1}, Lcom/smedialink/ui/custom/ImageHeaderView;->setupColors()V

    .line 92
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->viewConnectedCell:Lcom/smedialink/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/smedialink/ui/custom/DetailsIconCellView;->setupColors()V

    .line 93
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->viewAddressCell:Lcom/smedialink/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/smedialink/ui/custom/DetailsIconCellView;->setupColors()V

    .line 94
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->viewNetworkCell:Lcom/smedialink/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/smedialink/ui/custom/DetailsIconCellView;->setupColors()V

    .line 96
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->buttonDisconnect:Lcom/smedialink/ui/custom/BigActionButton;

    const/4 v1, 0x4

    .line 97
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const-string v2, "chat_attachAudioBackground"

    .line 98
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "windowBackgroundWhite"

    .line 99
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x78

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 96
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 111
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->buttonDisconnect:Lcom/smedialink/ui/custom/BigActionButton;

    const-string v0, "binding.buttonDisconnect"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$setupListeners$1;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$setupListeners$1;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupTexts()V
    .locals 3

    .line 105
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;

    move-result-object v0

    .line 106
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->buttonDisconnect:Lcom/smedialink/ui/custom/BigActionButton;

    sget v1, Lorg/telegram/messenger/R$string;->Disconnect:I

    const-string v2, "Disconnect"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final showDisconnectConfirmationDialog()V
    .locals 6

    .line 116
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsPresenter;->getDisconnectConfirmationDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v1

    .line 118
    new-instance v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 115
    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/smedialink/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 121
    invoke-static {v0}, Lcom/smedialink/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

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

    .line 46
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->setupColors()V

    .line 47
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->setupListeners()V

    .line 48
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->setupTexts()V

    .line 50
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "iconUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectedDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;

    move-result-object v0

    .line 60
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->viewHeader:Lcom/smedialink/ui/custom/ImageHeaderView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/smedialink/ui/custom/ImageHeaderView;->setupViewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->viewConnectedCell:Lcom/smedialink/ui/custom/DetailsIconCellView;

    .line 66
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->wallet_connect_session_details_connected:I

    invoke-interface {p2, p3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 68
    sget p3, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    const/4 v1, 0x1

    .line 65
    invoke-virtual {p1, p2, p4, p3, v1}, Lcom/smedialink/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 71
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->viewAddressCell:Lcom/smedialink/ui/custom/DetailsIconCellView;

    .line 72
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->wallet_connect_session_details_address:I

    invoke-interface {p2, p3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 74
    sget p3, Lorg/telegram/messenger/R$drawable;->fork_ic_nav_wallet_24:I

    .line 71
    invoke-virtual {p1, p2, p5, p3, v1}, Lcom/smedialink/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 77
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->viewNetworkCell:Lcom/smedialink/ui/custom/DetailsIconCellView;

    const-string p1, "viewNetworkCell"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->wallet_connect_session_details_network:I

    invoke-interface {p1, p2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_language:I

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v4, p6

    .line 77
    invoke-static/range {v2 .. v8}, Lcom/smedialink/ui/custom/DetailsIconCellView;->setupViewData$default(Lcom/smedialink/ui/custom/DetailsIconCellView;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method
