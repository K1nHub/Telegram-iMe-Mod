.class public final Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "AddressMismatchFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddressMismatchFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddressMismatchFragment.kt\ncom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n*L\n1#1,176:1\n13#2,4:177\n*S KotlinDebug\n*F\n+ 1 AddressMismatchFragment.kt\ncom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment\n*L\n25#1:177,4\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$KbPyaQ2mAO8kAL0b51G2fSJpFMs(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RZV2d5nl-B9_FemNwCtXv11n3R0(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->showDeleteWalletDialog$lambda$9(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$djPU0w6sXOiKytEZs8rIa15vGf0(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->closeScreen$lambda$1(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 25
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 28
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->Companion:Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 22
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 25
    new-instance v0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "presenter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 25
    iput-object v1, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 28
    new-instance v0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$openBlockchainsWalletsManagementScreen(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->openBlockchainsWalletsManagementScreen()V

    return-void
.end method

.method public static final synthetic access$showDeleteWalletDialog(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->showDeleteWalletDialog()V

    return-void
.end method

.method private static final closeScreen$lambda$1(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->buttonBackup:Lcom/iMe/ui/custom/ActionButton;

    invoke-virtual {p0}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    return-void
.end method

.method private final openBlockchainsWalletsManagementScreen()V
    .locals 7

    .line 153
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getPinCodeCoordinator()Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string/jumbo v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    sget-object v2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;->Companion:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$Companion;

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 153
    invoke-static/range {v0 .. v6}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;->start$default(Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;ZILjava/lang/Object;)V

    return-void
.end method

.method private final setupActionBar()V
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 106
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    const/4 v1, 0x0

    .line 107
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    return-void
.end method

.method private final setupColors()V
    .locals 3

    .line 134
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 136
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->buttonDelete:Landroidx/appcompat/widget/AppCompatButton;

    const-string/jumbo v2, "setupColors$lambda$7$lambda$6"

    .line 137
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 138
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 140
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private final setupImage()V
    .locals 3

    .line 126
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->imageLogo:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 128
    sget v1, Lorg/telegram/messenger/R$raw;->fork_address_mismatch:I

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 129
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private final setupListeners()V
    .locals 13

    .line 146
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;

    move-result-object v0

    .line 147
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->buttonBackup:Lcom/iMe/ui/custom/ActionButton;

    const-string v2, "buttonBackup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 148
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->buttonDelete:Landroidx/appcompat/widget/AppCompatButton;

    const-string v0, "buttonDelete"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$setupListeners$1$2;-><init>(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupTexts()V
    .locals 4

    .line 112
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;

    move-result-object v0

    .line 113
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_eth_address_mismatch_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->buttonDelete:Landroidx/appcompat/widget/AppCompatButton;

    .line 115
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_eth_address_mismatch_btn_delete:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->buttonBackup:Lcom/iMe/ui/custom/ActionButton;

    .line 117
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_eth_address_mismatch_btn_backup:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_eth_address_mismatch_description:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private final showDeleteWalletDialog()V
    .locals 6

    .line 161
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->getDeleteWalletDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 160
    new-instance v2, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 165
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 166
    invoke-static {v0}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method private static final showDeleteWalletDialog$lambda$9(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->deleteActiveWallet$default(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;JILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public closeScreen(J)V
    .locals 1

    .line 95
    new-instance v0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->postViewActionDelayed(JLcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
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

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 53
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 54
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 55
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 60
    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move/from16 v9, v18

    .line 53
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 62
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v12

    .line 64
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    .line 62
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 71
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;

    move-result-object v3

    iget-object v5, v3, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    .line 78
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    .line 71
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 80
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;

    move-result-object v3

    iget-object v5, v3, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    .line 87
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v4, v2

    .line 80
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 89
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;

    move-result-object v3

    iget-object v5, v3, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->buttonDelete:Landroidx/appcompat/widget/AppCompatButton;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    .line 52
    new-instance v10, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;)V

    .line 91
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    move-object v4, v2

    .line 89
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 52
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->setupActionBar()V

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->setupColors()V

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->setupListeners()V

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->setupTexts()V

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->setupImage()V

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected shouldAskPinCode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
