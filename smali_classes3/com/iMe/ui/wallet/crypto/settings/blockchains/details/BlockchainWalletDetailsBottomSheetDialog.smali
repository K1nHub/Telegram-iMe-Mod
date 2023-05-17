.class public final Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "BlockchainWalletDetailsBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockchainWalletDetailsBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockchainWalletDetailsBottomSheetDialog.kt\ncom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,183:1\n13#2,4:184\n56#3,6:188\n*S KotlinDebug\n*F\n+ 1 BlockchainWalletDetailsBottomSheetDialog.kt\ncom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog\n*L\n39#1:184,4\n42#1:188,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final infoDialogModel:Lcom/iMe/model/dialog/DialogModel;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resetWalletAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final showBackupAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final walletItem:Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;


# direct methods
.method public static synthetic $r8$lambda$RGSFyQA2h-S6Dnm5Mr11nI3hPHI(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->setupActionItem$lambda$4$lambda$3(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dbzd__y5iwBCTaTV2h6uN8yhuqE(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->resetWallet()V

    return-void
.end method

.method public static synthetic $r8$lambda$kUsHzCnXPAjmvr0RVnVD7VasEXc(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->setupActionItem$lambda$4$lambda$2(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 39
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 45
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/iMe/model/dialog/DialogModel;",
            ")V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resetWalletAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showBackupAction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoDialogModel"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 32
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->walletItem:Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;

    .line 33
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->resetWalletAction:Lkotlin/jvm/functions/Function1;

    .line 34
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->showBackupAction:Lkotlin/jvm/functions/Function1;

    .line 35
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->infoDialogModel:Lcom/iMe/model/dialog/DialogModel;

    .line 39
    new-instance p2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$presenter$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;)V

    .line 16
    new-instance p3, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p4

    const-string p5, "mvpDelegate"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "presenter"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p4, p5, p2}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 39
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4, p4}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 42
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$binding$2;

    invoke-direct {p2, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$binding$2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {p0, p4, p2, v1, p4}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;)Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWalletItem$p(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;)Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->walletItem:Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;

    return-object p0
.end method

.method public static final synthetic access$showWalletBackup(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->showWalletBackup()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final resetWallet()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->resetWalletAction:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->walletItem:Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private final setupActionItem()V
    .locals 5

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    const/4 v1, 0x2

    .line 107
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 108
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const-string v1, "setupActionItem$lambda$4"

    .line 109
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 110
    sget v1, Lcom/iMe/common/IdFabric$Menu;->INFO:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_information_dialog_title:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 111
    sget v1, Lcom/iMe/common/IdFabric$Menu;->COPY:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_copy_address:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 112
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 119
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v2, "AccDescrMoreOptions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setupActionItem$lambda$4$lambda$2(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_with"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private static final setupActionItem$lambda$4$lambda$3(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget v0, Lcom/iMe/common/IdFabric$Menu;->INFO:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "context"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->infoDialogModel:Lcom/iMe/model/dialog/DialogModel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 116
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$Menu;->COPY:I

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->walletItem:Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->getAddress()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 124
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;

    move-result-object v0

    .line 125
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ImageHeaderView;->setupColors()V

    .line 126
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->viewConnectedCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 127
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->viewAddressCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 129
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->buttonBackup:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    .line 130
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->buttonReset:Lcom/iMe/ui/custom/BigActionButton;

    .line 131
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x4

    .line 133
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 135
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    .line 132
    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "setupColors$lambda$6$lambda$5"

    .line 137
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 13

    .line 150
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;

    move-result-object v0

    .line 151
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->buttonBackup:Lcom/iMe/ui/custom/BigActionButton;

    const-string v2, "buttonBackup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 152
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->buttonReset:Lcom/iMe/ui/custom/BigActionButton;

    const-string v0, "buttonReset"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$setupListeners$1$2;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupTexts()V
    .locals 4

    .line 143
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;

    move-result-object v0

    .line 144
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->buttonBackup:Lcom/iMe/ui/custom/BigActionButton;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_eth_account_settings_backup_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->buttonReset:Lcom/iMe/ui/custom/BigActionButton;

    sget v1, Lorg/telegram/messenger/R$string;->Reset:I

    const-string v2, "Reset"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final showWalletBackup()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->showBackupAction:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->walletItem:Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

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

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->setupActionItem()V

    .line 55
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->setupColors()V

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->setupListeners()V

    .line 57
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->setupTexts()V

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public setupScreenWithData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;

    move-result-object v0

    .line 69
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    const-string v2, "viewHeader"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/iMe/ui/custom/ImageHeaderView;->setupViewData$default(Lcom/iMe/ui/custom/ImageHeaderView;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 74
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->viewConnectedCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 75
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->wallet_details_created:I

    invoke-interface {p2, p3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 77
    sget p3, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    const/4 v1, 0x1

    .line 74
    invoke-virtual {p1, p2, p4, p3, v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 80
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->viewAddressCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->wallet_connect_session_details_address:I

    invoke-interface {p2, p3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 83
    sget p3, Lorg/telegram/messenger/R$drawable;->fork_ic_nav_wallet_24:I

    .line 80
    invoke-virtual {p1, p2, p5, p3, v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public showResetWalletConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v3, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsBottomSheetDialog;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    .line 90
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 96
    invoke-static {p1}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method
