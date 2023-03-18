.class public final Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;
.super Lcom/smedialink/ui/base/mvp/MvpAlertDialog;
.source "WalletAirdropDialog.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$Companion;,
        Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletAirdropDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletAirdropDialog.kt\ncom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 CollectionExt.kt\ncom/smedialink/utils/extentions/common/CollectionExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n13#2,4:219\n56#3,6:223\n56#3,6:229\n4#4:235\n5#4,2:238\n2634#5:236\n1#6:237\n*S KotlinDebug\n*F\n+ 1 WalletAirdropDialog.kt\ncom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog\n*L\n44#1:219,4\n45#1:223,6\n46#1:229,6\n157#1:235\n157#1:238,2\n157#1:236\n157#1:237\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final walletFlowCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$BYc1Rrf8IetBV3OtOFpqzio1-J0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->setupMenuItem$lambda$16$lambda$15(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$F-SDXAVBHVoPmZTOhqzgnvC6Qvc(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->onSuccessClaimAirdrop$lambda$6(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v9IebjP7fcs0mhk5_SdTu3ppgYY(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->setupMenuItem$lambda$16$lambda$14(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 44
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 49
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->Companion:Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/smedialink/ui/base/mvp/MvpAlertDialog;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 44
    new-instance p1, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$presenter$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$presenter$2;-><init>(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;

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

    .line 44
    iput-object v0, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$special$$inlined$inject$default$2;

    invoke-direct {v0, p0, v2, v2}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 49
    new-instance p1, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$binding$2;-><init>(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V

    const/4 v0, 0x1

    invoke-static {p0, v2, p1, v0, v2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpAlertDialog;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 52
    invoke-static {p0}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->setBottomGravity(Landroid/app/Dialog;)V

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getPresenter()Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final checkAndOpenWalletFragment()V
    .locals 7

    .line 134
    iget-object v0, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/smedialink/ui/base/WalletAuthFragment;

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getWalletFlowCoordinator()Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;

    move-result-object v1

    .line 136
    iget-object v0, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    const-string v0, "fragment.parentLayout"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/smedialink/ui/wallet/common/WalletRootFragment;->Companion:Lcom/smedialink/ui/wallet/common/WalletRootFragment$Companion;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/common/WalletRootFragment$Companion;->newInstance()Lcom/smedialink/ui/wallet/common/WalletRootFragment;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 135
    invoke-static/range {v1 .. v6}, Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;->start$default(Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/ui/base/WalletAuthFragment;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getWalletFlowCoordinator()Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;

    return-object v0
.end method

.method public static final newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    sget-object v0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->Companion:Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$Companion;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static final onSuccessClaimAirdrop$lambda$6(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->checkAndOpenWalletFragment()V

    return-void
.end method

.method private final setCheckBoxDone(Lorg/telegram/ui/Cells/CheckBoxCell;Z)V
    .locals 2

    const-string v0, "windowBackgroundWhiteGrayText2"

    if-eqz p2, :cond_0

    const-string p2, "chats_actionBackground"

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const-string v1, "checkboxSquareCheck"

    .line 144
    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setCheckBoxColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setupButtons()V
    .locals 2

    .line 147
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->textAdditionalAction:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "setupButtons$lambda$7"

    .line 148
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const-string v1, "chats_actionBackground"

    .line 149
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private final setupCheckBoxViews()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Cells/CheckBoxCell;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-result-object v0

    .line 153
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->checkboxAuth:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->airdrop_dialog_auth_description:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 154
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->checkboxCreateWallet:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v6, Lorg/telegram/messenger/R$string;->airdrop_dialog_create_wallet_description:I

    invoke-interface {v2, v6}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 155
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->checkboxTakeBonus:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v6, Lorg/telegram/messenger/R$string;->airdrop_dialog_claim_bonus_description:I

    invoke-interface {v2, v6}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 157
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->checkboxAuth:Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v2, v1, v5

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->checkboxTakeBonus:Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v2, v1, v4

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->checkboxCreateWallet:Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 158
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 159
    iget-object v5, v0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->checkboxTakeBonus:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setMultiline(Z)V

    const-string v5, "windowBackgroundWhiteGrayText2"

    const-string v6, "checkboxSquareCheck"

    .line 160
    invoke-virtual {v3, v5, v5, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setCheckBoxColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final setupDescriptionView(I)V
    .locals 5

    .line 181
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->textAlertDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 182
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->airdrop_dialog_description:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "windowBackgroundWhiteGrayText2"

    .line 183
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private final setupImageView()V
    .locals 3

    .line 165
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->imageAlertPicture:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x1

    .line 166
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 167
    sget v1, Lorg/telegram/messenger/R$raw;->fork_lime_airdrop:I

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 168
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 205
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-result-object v0

    .line 206
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->buttonAction:Lcom/smedialink/ui/custom/ActionButton;

    const-string v0, "buttonAction"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$setupListeners$1$1;-><init>(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupMenuItem(Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStep;)V
    .locals 5

    .line 186
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->itemMenu:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x2

    .line 187
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 188
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const-string v1, "player_actionBarSelector"

    .line 189
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 190
    new-instance v1, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v2, "AccDescrMoreOptions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->TOKEN_SITE:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_settings_help:I

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->airdrop_dialog_lime_beginner_menu_title:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 194
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStep;->INTRO:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStep;

    if-eq p1, v1, :cond_0

    .line 195
    sget p1, Lcom/smedialink/common/IdFabric$Menu;->REJECT:I

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->airdrop_dialog_action_reject:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 197
    :cond_0
    new-instance p1, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0, p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    return-void
.end method

.method private static final setupMenuItem$lambda$16$lambda$14(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_with"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private static final setupMenuItem$lambda$16$lambda$15(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->TOKEN_SITE:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->airdrop_dialog_lime_beginner_site:I

    invoke-interface {p1, p2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_0
    sget p0, Lcom/smedialink/common/IdFabric$Menu;->REJECT:I

    if-ne p2, p0, :cond_1

    invoke-direct {p1}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getPresenter()Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->rejectAirdrop()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final setupRootView()V
    .locals 2

    .line 171
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "dialogBackground"

    .line 172
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupTitleView()V
    .locals 3

    .line 175
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->textAlertTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->airdrop_dialog_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "chat_messagePanelText"

    .line 177
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "setupTitleView$lambda$12"

    .line 178
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public configureDialogState(ZZLcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStep;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    const-string v2, "step"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-result-object v2

    .line 75
    invoke-direct {p0, v1}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->setupMenuItem(Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStep;)V

    move/from16 v3, p4

    .line 76
    invoke-direct {p0, v3}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->setupDescriptionView(I)V

    .line 78
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->checkboxAuth:Lorg/telegram/ui/Cells/CheckBoxCell;

    const-string v4, "checkboxAuth"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v4, p1

    invoke-direct {p0, v3, v4}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->setCheckBoxDone(Lorg/telegram/ui/Cells/CheckBoxCell;Z)V

    .line 79
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->checkboxCreateWallet:Lorg/telegram/ui/Cells/CheckBoxCell;

    const-string v4, "checkboxCreateWallet"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v4, p2

    invoke-direct {p0, v3, v4}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->setCheckBoxDone(Lorg/telegram/ui/Cells/CheckBoxCell;Z)V

    .line 81
    sget-object v3, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto/16 :goto_0

    .line 109
    :cond_0
    iget-object v4, v2, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->buttonAction:Lcom/smedialink/ui/custom/ActionButton;

    .line 110
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->airdrop_dialog_action_take:I

    invoke-interface {v1, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "configureDialogState$lambda$5$lambda$4"

    .line 111
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$5$1;

    invoke-direct {v7, p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$5$1;-><init>(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 113
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->textAdditionalAction:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "textAdditionalAction"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    goto/16 :goto_0

    .line 93
    :cond_1
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->buttonAction:Lcom/smedialink/ui/custom/ActionButton;

    .line 94
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_eth_wallet:I

    invoke-interface {v1, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "configureDialogState$lambda$5$lambda$2"

    .line 95
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$3$1;

    invoke-direct {v6, p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$3$1;-><init>(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 100
    iget-object v9, v2, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->textAdditionalAction:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_dashboard_import_eth_wallet:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "configureDialogState$lambda$5$lambda$3"

    .line 102
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    new-instance v12, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$4$1;

    invoke-direct {v12, p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$4$1;-><init>(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->buttonAction:Lcom/smedialink/ui/custom/ActionButton;

    .line 84
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$string;->airdrop_dialog_action_start:I

    invoke-interface {v1, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "configureDialogState$lambda$5$lambda$0"

    .line 85
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$1$1;

    invoke-direct {v6, p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$1$1;-><init>(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 87
    iget-object v9, v2, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->textAdditionalAction:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->airdrop_dialog_action_reject:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "configureDialogState$lambda$5$lambda$1"

    .line 89
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    new-instance v12, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$2$1;

    invoke-direct {v12, p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$2$1;-><init>(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onAcceptAirdrop()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.telegram.ui.LaunchActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->openAuthBotChat(Lorg/telegram/ui/LaunchActivity;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->setupRootView()V

    .line 59
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->setupImageView()V

    .line 60
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->setupTitleView()V

    .line 61
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->setupCheckBoxViews()Ljava/util/List;

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->setupButtons()V

    .line 63
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->setupListeners()V

    .line 65
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onSuccessClaimAirdrop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v5, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->showSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method
