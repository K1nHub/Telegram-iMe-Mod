.class public final Lcom/iMe/ui/wallet/send/WalletSendFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "WalletSendFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/send/WalletSendView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/send/WalletSendFragment$Companion;,
        Lcom/iMe/ui/wallet/send/WalletSendFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSendFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSendFragment.kt\ncom/iMe/ui/wallet/send/WalletSendFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,701:1\n666#1,16:720\n682#1,8:762\n666#1,24:770\n674#1,8:794\n682#1,8:828\n674#1,8:836\n682#1,8:870\n13#2,4:702\n56#3,6:706\n262#4,2:712\n262#4,2:714\n262#4,2:716\n1855#5,2:718\n58#6,23:736\n93#6,3:759\n58#6,23:802\n93#6,3:825\n58#6,23:844\n93#6,3:867\n*S KotlinDebug\n*F\n+ 1 WalletSendFragment.kt\ncom/iMe/ui/wallet/send/WalletSendFragment\n*L\n561#1:720,16\n561#1:762,8\n587#1:770,24\n598#1:794,8\n598#1:828,8\n612#1:836,8\n612#1:870,8\n69#1:702,4\n72#1:706,6\n410#1:712,2\n450#1:714,2\n455#1:716,2\n496#1:718,2\n568#1:736,23\n568#1:759,3\n605#1:802,23\n605#1:825,3\n623#1:844,23\n623#1:867,3\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/send/WalletSendFragment$Companion;

.field private static final INPUT_FIELD_HEIGHT:I


# instance fields
.field private final args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private cameraBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private final clipboardManager$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final isBinanceTokenReplenish:Z

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final screenType:Lcom/iMe/model/wallet/send/WalletSendScreenType;

.field private final tokenBuyCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$7uUa-jBECk2n7V28lpS7mmid0F4(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->openSelectTokenScreen$lambda$3(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D_tOHzQiPYITxTTijL2rsuis0sg(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupListeners$lambda$46$lambda$43(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EWjeSpjkAEtG9IT587cAEGHhOIA(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->openChooseContact$lambda$2(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HwLLs5lqijuTLq0oZqJ5ckm6i10(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->showSuccessSend$lambda$8(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OVio4fYNWP3azXzdK57p_cUyyOw(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->showRecipientWalletNotActivatedError$lambda$10(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QVZidu2uHCF6iEp06nGMWU1PdHg(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setErrorStateTitledInputFieldView$lambda$20$lambda$19$lambda$18(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RgigyiY-Rzg72VToY-4IPtqCTlQ(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->showRecipientNotFoundError$lambda$9(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SKMK4t2JE1ypGiy6W9npHzzjcog(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->showChooseNetworkDialog$lambda$1(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_-bb1s8q_5MqXULM-OV_Vdevk_0(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupListeners$lambda$46$lambda$44(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$evAB5rgYgBeFhCyEXmdDzKrfgWM(Lcom/iMe/ui/wallet/send/WalletSendFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupViews$lambda$42$lambda$34$lambda$33$lambda$32(Lcom/iMe/ui/wallet/send/WalletSendFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k2Slk8odj5wtrO95oBMxIs57SIk(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupListeners$lambda$46$lambda$45(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pJYv0LKNUy59tk0-KFv6f5uOR-g(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->onSuccessValidation$lambda$12(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rn9Wen29YywAuI5OYkt0bygpwNI(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupViews$lambda$42$lambda$41(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wQZAzs5_-eRao8oYgGnVjMZUtuQ(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->onSuccessValidation$lambda$11(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/send/WalletSendFragment;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 69
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/send/WalletSendPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 74
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 77
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "clipboardManager"

    const-string v4, "getClipboardManager()Landroid/content/ClipboardManager;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/send/WalletSendFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/send/WalletSendFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->Companion:Lcom/iMe/ui/wallet/send/WalletSendFragment$Companion;

    const/16 v0, 0x34

    .line 693
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(I)I

    move-result v0

    sput v0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->INPUT_FIELD_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;Lcom/iMe/model/wallet/send/WalletSendScreenType;)V
    .locals 5

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "screenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    .line 66
    iput-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->screenType:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    .line 69
    new-instance v0, Lcom/iMe/ui/wallet/send/WalletSendFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string/jumbo v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/send/WalletSendPresenter;

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

    .line 69
    iput-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/send/WalletSendFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/send/WalletSendFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    .line 74
    new-instance v0, Lcom/iMe/ui/wallet/send/WalletSendFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 77
    new-instance v0, Lcom/iMe/ui/wallet/send/WalletSendFragment$clipboardManager$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$clipboardManager$2;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->clipboardManager$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 81
    sget-object v0, Lcom/iMe/model/wallet/send/WalletSendScreenType;->BINANCE_REPLENISH:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->isBinanceTokenReplenish:Z

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/iMe/ui/wallet/send/WalletSendFragment;)Lcom/iMe/model/wallet/transfer/TransferScreenArgs;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/send/WalletSendFragment;)Lcom/iMe/ui/wallet/send/WalletSendPresenter;
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getPresenter()Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager(Lcom/iMe/ui/wallet/send/WalletSendFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/iMe/ui/wallet/send/WalletSendFragment;)Lcom/iMe/model/wallet/send/WalletSendScreenType;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->screenType:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/send/WalletSendFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    return-object v0
.end method

.method private final getClipboardManager()Landroid/content/ClipboardManager;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->clipboardManager$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/send/WalletSendFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method

.method private final getClipboardText()Ljava/lang/String;
    .locals 3

    .line 658
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, ""

    if-eqz v0, :cond_1

    goto :goto_2

    .line 661
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 663
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/send/WalletSendPresenter;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/send/WalletSendFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    return-object v0
.end method

.method private final getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    return-object v0
.end method

.method public static final newInstance(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;Lcom/iMe/model/wallet/send/WalletSendScreenType;)Lcom/iMe/ui/wallet/send/WalletSendFragment;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->Companion:Lcom/iMe/ui/wallet/send/WalletSendFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendFragment$Companion;->newInstance(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;Lcom/iMe/model/wallet/send/WalletSendScreenType;)Lcom/iMe/ui/wallet/send/WalletSendFragment;

    move-result-object p0

    return-object p0
.end method

.method private static final onSuccessValidation$lambda$11(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "$shouldSendMessage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 296
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method private static final onSuccessValidation$lambda$12(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shouldSendMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getPresenter()Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    move-result-object p0

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->send(Z)V

    return-void
.end method

.method private static final openChooseContact$lambda$2(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "address"

    .line 158
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupReplenishAddress(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getPresenter()Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    move-result-object p0

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->onSelectContact(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method private final openScanQrCodeScreen()V
    .locals 3

    .line 461
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 465
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    .line 464
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->showCameraScanner()V

    return-void
.end method

.method private static final openSelectTokenScreen$lambda$3(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getPresenter()Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    move-result-object p0

    const-string/jumbo p2, "token"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->onTokenSelected(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method private final pasteAddressToRecipient()V
    .locals 2

    .line 650
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputRecipient:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 651
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getClipboardText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 652
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const-string/jumbo v1, "pasteAddressToRecipient$lambda$47"

    .line 653
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setSelectionEnd(Landroid/widget/EditText;)V

    return-void
.end method

.method private final setErrorStateTitledInputFieldView(Lcom/iMe/ui/custom/TitledInputFieldView;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 421
    invoke-virtual {p1}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object p3

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lorg/telegram/ui/Components/LinkActionView;->setErrorState(Z)V

    .line 423
    invoke-virtual {p1}, Lcom/iMe/ui/custom/TitledInputFieldView;->getCustomView()Landroid/view/View;

    move-result-object p1

    instance-of p3, p1, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    :cond_0
    if-eqz v0, :cond_5

    .line 424
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    .line 425
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    new-instance p1, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda8;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    invoke-static {v0, p4, v2, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setSubstringClickListener(Landroid/widget/TextView;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 435
    :cond_3
    invoke-virtual {p1}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/LinkActionView;->setErrorState(Z)V

    .line 436
    invoke-virtual {p1}, Lcom/iMe/ui/custom/TitledInputFieldView;->getCustomView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic setErrorStateTitledInputFieldView$default(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lcom/iMe/ui/custom/TitledInputFieldView;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const-string p4, ""

    .line 413
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setErrorStateTitledInputFieldView(Lcom/iMe/ui/custom/TitledInputFieldView;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private static final setErrorStateTitledInputFieldView$lambda$20$lambda$19$lambda$18(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getPresenter()Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->onReplenish()V

    return-void
.end method

.method private final setupActionBar()V
    .locals 3

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 516
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 517
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_user_id_dialog_transfer_action:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 518
    new-instance v1, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 8

    .line 488
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 491
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/widget/TextView;

    .line 492
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->textHeader:Landroid/widget/TextView;

    const-string/jumbo v5, "textHeader"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 493
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->textTokenBalance:Landroid/widget/TextView;

    const-string/jumbo v6, "textTokenBalance"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 494
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->textTokenBalanceInDollars:Landroid/widget/TextView;

    const-string/jumbo v7, "textTokenBalanceInDollars"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 490
    invoke-static {v1, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColorKey(I[Landroid/widget/TextView;)V

    new-array v1, v2, [Lcom/iMe/ui/custom/TitledInputFieldView;

    .line 496
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputRecipient:Lcom/iMe/ui/custom/TitledInputFieldView;

    aput-object v2, v1, v5

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputToken:Lcom/iMe/ui/custom/TitledInputFieldView;

    aput-object v2, v1, v6

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    aput-object v2, v1, v7

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/custom/TitledInputFieldView;

    .line 497
    invoke-virtual {v2}, Lcom/iMe/ui/custom/TitledInputFieldView;->getCustomView()Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 498
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    .line 497
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 501
    :cond_2
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->textNetwork:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 502
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->imageNetwork:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "imageNetwork"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 503
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->linearCryptoSettings:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 504
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->linearSelectNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 505
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputToken:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/TitledInputFieldView;->setupColors()V

    .line 506
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/TitledInputFieldView;->setupColors()V

    .line 507
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputRecipient:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/TitledInputFieldView;->setupColors()V

    .line 508
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->choiceAddressButtons:Lcom/iMe/ui/custom/ChooseRecipientOptionsView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->setupColors()V

    .line 509
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->buttonSend:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupColors()V

    .line 510
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputComment:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/TitledInputFieldView;->setupColors()V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 639
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    .line 640
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    const-string/jumbo v2, "networkTypeView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 641
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->choiceAddressButtons:Lcom/iMe/ui/custom/ChooseRecipientOptionsView;

    new-instance v1, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    new-instance v2, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda10;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    new-instance v3, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda11;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->setupListeners(Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final setupListeners$lambda$46$lambda$43(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->pasteAddressToRecipient()V

    return-void
.end method

.method private static final setupListeners$lambda$46$lambda$44(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getPresenter()Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->onContactsClick()V

    return-void
.end method

.method private static final setupListeners$lambda$46$lambda$45(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->openScanQrCodeScreen()V

    return-void
.end method

.method private final setupViews()V
    .locals 19

    move-object/from16 v0, p0

    .line 529
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v1

    .line 530
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v3, 0x1

    .line 531
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 532
    sget v4, Lorg/telegram/messenger/R$raw;->fork_crypto_transfers:I

    const/16 v5, 0x60

    invoke-virtual {v2, v4, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 533
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 536
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->textHeader:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    .line 537
    iget-object v5, v0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->screenType:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    sget-object v6, Lcom/iMe/ui/wallet/send/WalletSendFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x2

    if-eq v5, v3, :cond_2

    if-eq v5, v6, :cond_1

    const/4 v7, 0x3

    if-ne v5, v7, :cond_0

    .line 545
    sget v5, Lorg/telegram/messenger/R$string;->channel_donations_description:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 542
    :cond_1
    sget v5, Lorg/telegram/messenger/R$string;->binance_replenish_token_description:I

    goto :goto_0

    .line 539
    :cond_2
    sget v5, Lorg/telegram/messenger/R$string;->wallet_banner_slide_crypto_transfers_long_description:I

    .line 536
    :goto_0
    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v2, v0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->screenType:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    sget-object v4, Lcom/iMe/model/wallet/send/WalletSendScreenType;->BINANCE_REPLENISH:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    const/4 v5, 0x0

    const/4 v7, 0x0

    if-ne v2, v4, :cond_3

    .line 550
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->choiceAddressButtons:Lcom/iMe/ui/custom/ChooseRecipientOptionsView;

    const-string v8, "choiceAddressButtons"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7, v3, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 553
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 555
    iget-boolean v8, v0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->isBinanceTokenReplenish:Z

    if-eqz v8, :cond_4

    sget v8, Lorg/telegram/messenger/R$string;->common_progress_state_title:I

    goto :goto_1

    .line 556
    :cond_4
    sget v8, Lorg/telegram/messenger/R$string;->wallet_amount_send_enter_address_hint:I

    .line 553
    :goto_1
    invoke-interface {v2, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 559
    iget-object v8, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputRecipient:Lcom/iMe/ui/custom/TitledInputFieldView;

    .line 560
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Lcom/iMe/ui/custom/TitledInputFieldView;->setCustomView(Landroid/view/View;)V

    const-string/jumbo v9, "this"

    .line 562
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$string;->wallet_binance_receive_choose_contact_hint:I

    invoke-interface {v10, v11}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 565
    iget-object v11, v0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->screenType:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    if-eq v11, v4, :cond_5

    move v11, v3

    goto :goto_2

    :cond_5
    move v11, v7

    .line 675
    :goto_2
    invoke-virtual {v8, v10}, Lcom/iMe/ui/custom/TitledInputFieldView;->setTitle(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v8}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v10

    const/16 v12, 0x10

    .line 677
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 678
    invoke-virtual {v10, v3}, Lorg/telegram/ui/Components/LinkActionView;->hideAllActionButtons(Z)V

    .line 679
    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/LinkActionView;->setEditHint(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/LinkActionView;->setMode(Z)V

    .line 567
    invoke-virtual {v10}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    const-string/jumbo v11, "setupViews$lambda$42$lambda$31$lambda$30$lambda$29"

    .line 568
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v11, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupViews$lambda$42$lambda$31$lambda$30$lambda$29$$inlined$doAfterTextChanged$1;

    invoke-direct {v11, v0, v10}, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupViews$lambda$42$lambda$31$lambda$30$lambda$29$$inlined$doAfterTextChanged$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lorg/telegram/ui/Components/LinkActionView;)V

    .line 93
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/high16 v11, 0x80000

    .line 574
    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 576
    iget-object v2, v0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->screenType:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    if-ne v2, v4, :cond_6

    .line 577
    invoke-virtual {v10}, Lorg/telegram/ui/Components/LinkActionView;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v13

    const-string v2, "frameLayout"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v14, 0x0

    new-instance v2, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupViews$1$2$1$2;

    invoke-direct {v2, v0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupViews$1$2$1$2;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v18}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 682
    :cond_6
    invoke-virtual {v10, v7}, Lorg/telegram/ui/Components/LinkActionView;->showOptions(Z)V

    .line 582
    sget v2, Lcom/iMe/ui/wallet/send/WalletSendFragment;->INPUT_FIELD_HEIGHT:I

    const/4 v4, -0x1

    invoke-virtual {v8, v4, v2}, Lcom/iMe/ui/custom/TitledInputFieldView;->setupInputLayoutParams(II)V

    .line 585
    iget-object v8, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputToken:Lcom/iMe/ui/custom/TitledInputFieldView;

    .line 586
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v10}, Lcom/iMe/ui/custom/TitledInputFieldView;->setCustomView(Landroid/view/View;)V

    .line 588
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$string;->wallet_binance_receive_select_token_hint:I

    invoke-interface {v10, v11}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v11

    sget v13, Lorg/telegram/messenger/R$string;->wallet_binance_receive_select_token_title:I

    invoke-interface {v11, v13}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 675
    invoke-virtual {v8, v10}, Lcom/iMe/ui/custom/TitledInputFieldView;->setTitle(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v8}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v10

    .line 677
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 678
    invoke-virtual {v10, v3}, Lorg/telegram/ui/Components/LinkActionView;->hideAllActionButtons(Z)V

    .line 679
    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/LinkActionView;->setEditHint(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v10, v7}, Lorg/telegram/ui/Components/LinkActionView;->setMode(Z)V

    .line 593
    new-instance v11, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda0;

    invoke-direct {v11, v0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/LinkActionView;->setFieldClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    invoke-virtual {v10, v7}, Lorg/telegram/ui/Components/LinkActionView;->showOptions(Z)V

    .line 595
    invoke-virtual {v8, v4, v2}, Lcom/iMe/ui/custom/TitledInputFieldView;->setupInputLayoutParams(II)V

    .line 599
    iget-object v8, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputComment:Lcom/iMe/ui/custom/TitledInputFieldView;

    const-string v10, "inputComment"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$string;->wallet_transfer_comment_title:I

    invoke-interface {v10, v11}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v11

    sget v13, Lorg/telegram/messenger/R$string;->wallet_transfer_comment_hint:I

    invoke-interface {v11, v13}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 675
    invoke-virtual {v8, v10}, Lcom/iMe/ui/custom/TitledInputFieldView;->setTitle(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v8}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v8

    .line 677
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 678
    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/LinkActionView;->hideAllActionButtons(Z)V

    .line 679
    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/LinkActionView;->setEditHint(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/LinkActionView;->setMode(Z)V

    .line 605
    invoke-virtual {v8}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v10

    const-string v11, "editText"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v11, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupViews$lambda$42$lambda$36$$inlined$doAfterTextChanged$1;

    invoke-direct {v11, v0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupViews$lambda$42$lambda$36$$inlined$doAfterTextChanged$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    .line 93
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 682
    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/LinkActionView;->showOptions(Z)V

    .line 610
    iget-object v8, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    .line 611
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v10}, Lcom/iMe/ui/custom/TitledInputFieldView;->setCustomView(Landroid/view/View;)V

    .line 613
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_amount_title:I

    invoke-interface {v9, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$string;->wallet_binance_receive_amount_title:I

    invoke-interface {v10, v11}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 675
    invoke-virtual {v8, v9}, Lcom/iMe/ui/custom/TitledInputFieldView;->setTitle(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v8}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v9

    .line 677
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 678
    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/LinkActionView;->hideAllActionButtons(Z)V

    .line 679
    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/LinkActionView;->setEditHint(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/LinkActionView;->setMode(Z)V

    .line 619
    invoke-virtual {v9}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v10

    const/16 v11, 0x2002

    .line 620
    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    const-string/jumbo v11, "setupViews$lambda$42$lambda$40$lambda$39$lambda$38"

    .line 622
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v11}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v11

    invoke-static {v10, v11, v7, v6, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->limitInputLength$default(Landroid/widget/EditText;IIILjava/lang/Object;)V

    .line 80
    new-instance v5, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupViews$lambda$42$lambda$40$lambda$39$lambda$38$$inlined$doAfterTextChanged$1;

    invoke-direct {v5, v0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupViews$lambda$42$lambda$40$lambda$39$lambda$38$$inlined$doAfterTextChanged$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    .line 93
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 682
    invoke-virtual {v9, v7}, Lorg/telegram/ui/Components/LinkActionView;->showOptions(Z)V

    .line 684
    new-instance v5, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupInputField$2$1$1;

    invoke-direct {v5, v0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupInputField$2$1$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    invoke-virtual {v9, v5}, Lorg/telegram/ui/Components/LinkActionView;->addMaxButton(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 685
    invoke-virtual {v9}, Lorg/telegram/ui/Components/LinkActionView;->getMaxButtonView()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string/jumbo v6, "maxButtonView"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->access$getArgs$p(Lcom/iMe/ui/wallet/send/WalletSendFragment;)Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    move v3, v7

    :goto_3
    invoke-static {v5, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setEnabledWithAlpha(Landroid/view/View;Z)V

    .line 628
    :cond_8
    invoke-virtual {v8, v4, v2}, Lcom/iMe/ui/custom/TitledInputFieldView;->setupInputLayoutParams(II)V

    .line 631
    iget-object v9, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->buttonSend:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    const-string v1, "buttonSend"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_button_txt:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 631
    new-instance v14, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda12;

    invoke-direct {v14, v0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda12;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6e

    const/16 v18, 0x0

    invoke-static/range {v9 .. v18}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupViewData$default(Lcom/iMe/ui/custom/TransactionActionButtonsView;Ljava/lang/String;ZZZLcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setupViews$lambda$42$lambda$34$lambda$33$lambda$32(Lcom/iMe/ui/wallet/send/WalletSendFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getPresenter()Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->onSelectTokenClick()V

    return-void
.end method

.method private static final setupViews$lambda$42$lambda$41(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getPresenter()Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resolveAction()V

    return-void
.end method

.method private final showBalance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 442
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    .line 443
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->textTokenBalance:Landroid/widget/TextView;

    .line 445
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 446
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_my_balance:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 445
    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 444
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "showBalance$lambda$23$lambda$21"

    .line 450
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->textTokenBalanceInDollars:Landroid/widget/TextView;

    .line 454
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p2, "showBalance$lambda$23$lambda$22"

    .line 455
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final showCameraScanner()V
    .locals 2

    .line 478
    new-instance v0, Lcom/iMe/ui/wallet/send/WalletSendFragment$showCameraScanner$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$showCameraScanner$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    const/4 v1, 0x1

    .line 474
    invoke-static {p0, v1, v1, v0, v1}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->cameraBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private static final showChooseNetworkDialog$lambda$1(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getPresenter()Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->onSelectNetworkClick(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    return-void
.end method

.method private static final showRecipientNotFoundError$lambda$9(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private static final showRecipientWalletNotActivatedError$lambda$10(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private static final showSuccessSend$lambda$8(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 105
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 106
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 107
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 108
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 109
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    .line 106
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 111
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 112
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 113
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 114
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    .line 111
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 116
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 117
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 118
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 119
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    .line 116
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 121
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 122
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v2

    .line 123
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 124
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 121
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 104
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hideFeeView()V
    .locals 4

    .line 345
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->viewFee:Lcom/iMe/ui/custom/FeeView;

    const-string v1, "binding.viewFee"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupActionBar()V

    .line 87
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupViews()V

    .line 88
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupListeners()V

    .line 90
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->cameraBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->cameraBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 101
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    return-void
.end method

.method public onSuccessValidation(Lcom/iMe/model/dialog/DialogModel;Z)V
    .locals 11

    const-string/jumbo v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 288
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 292
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v1, "parentActivity"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_send_message_checkbox_title:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 291
    new-instance v6, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    new-instance v7, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda13;

    invoke-direct {v7, p0, v0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda13;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v3, p1

    move v5, p2

    invoke-static/range {v2 .. v10}, Lcom/iMe/utils/dialogs/DialogUtils;->createCheckBoxAlert$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 290
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public onViewCreated()V
    .locals 0

    .line 94
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onViewCreated()V

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupColors()V

    return-void
.end method

.method public openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 7

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string/jumbo v0, "parentLayout"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;->start$default(Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;ZILjava/lang/Object;)V

    return-void
.end method

.method public openChooseContact(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    .line 155
    new-instance p1, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ContactsActivity;->setUserWithCryptoAddressDelegate(Lcom/iMe/fork/utils/Callbacks$Callback2;)V

    .line 162
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openSelectTokenScreen(Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "selectTokensScreenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "networkId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    sget-object v1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->Companion:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;

    new-instance v6, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;->newInstance(Lcom/iMe/model/wallet/select/SelectTokenScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback2;)Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public renderInsertedAmountInFiat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "insertedAmountInFiat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->textTokenBalanceInDollars:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public renderSelectedToken(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "tokenText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenLogoUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenBalanceText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insertedAmountInDollarsText"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->screenType:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    sget-object v2, Lcom/iMe/model/wallet/send/WalletSendScreenType;->BINANCE_REPLENISH:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    if-ne v1, v2, :cond_0

    .line 188
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputRecipient:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v1

    .line 189
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->common_progress_state_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setEditHint(Ljava/lang/String;)V

    .line 192
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputToken:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v1

    .line 193
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/LinkActionView;->setText(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->screenType:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    sget-object v2, Lcom/iMe/ui/wallet/send/WalletSendFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const-string/jumbo v2, "parentActivity"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    .line 205
    invoke-static {p1, p2, v2}, Lcom/iMe/utils/helper/GlideHelper;->loadBinanceImageAsBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    .line 196
    invoke-static {p1, p2, v2, v4}, Lcom/iMe/utils/helper/GlideHelper;->loadImageAsBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V

    .line 215
    :goto_0
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {p1}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->getMaxButtonView()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string/jumbo v0, "maxButtonView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setEnabledWithAlpha(Landroid/view/View;Z)V

    .line 217
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    const-string/jumbo p2, "renderSelectedToken$lambda$7$lambda$6$lambda$5"

    .line 218
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p3, v0, v3, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->limitInputLength$default(Landroid/widget/EditText;IIILjava/lang/Object;)V

    .line 219
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 222
    invoke-direct {p0, p4, p5}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->showBalance(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupTokenInputErrorState(Z)V

    return-void
.end method

.method public resetScreen()V
    .locals 6

    .line 311
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    .line 312
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputRecipient:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v1

    .line 314
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_send_enter_address_hint:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setEditHint(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->resetField()V

    const/4 v1, 0x0

    .line 318
    invoke-virtual {p0, v1}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupRecipientInputErrorState(Z)V

    .line 320
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputToken:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v2}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkActionView;->resetField()V

    .line 321
    invoke-virtual {p0, v1}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupTokenInputErrorState(Z)V

    .line 323
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v2}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v2

    .line 324
    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkActionView;->resetField()V

    .line 325
    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkActionView;->getMaxButtonView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "maxButtonView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_0
    const/4 v2, 0x0

    .line 327
    invoke-virtual {p0, v1, v2}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupAmountInputErrorState(ZLjava/lang/String;)V

    .line 329
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->textTokenBalance:Landroid/widget/TextView;

    const-string/jumbo v4, "textTokenBalance"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v3, v1, v4, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 330
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->textTokenBalanceInDollars:Landroid/widget/TextView;

    const-string/jumbo v5, "textTokenBalanceInDollars"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1, v4, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 331
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->viewFee:Lcom/iMe/ui/custom/FeeView;

    const-string/jumbo v3, "viewFee"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v4, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method

.method public setupAmount(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkActionView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setupAmountInputErrorState(ZLjava/lang/String;)V
    .locals 3

    .line 400
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    const-string v1, "binding.inputAmount"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 402
    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_send_error_insufficient_funds:I

    .line 401
    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const-string p2, ""

    .line 399
    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setErrorStateTitledInputFieldView(Lcom/iMe/ui/custom/TitledInputFieldView;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public setupAvatarRecipient(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    .line 307
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputRecipient:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkActionView;->setAvatarForEditableMode(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public setupCommentVisibility(Z)V
    .locals 2

    .line 410
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputComment:Lcom/iMe/ui/custom/TitledInputFieldView;

    const-string v1, "binding.inputComment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 262
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V
    .locals 1

    const-string/jumbo v0, "networkItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    .line 130
    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    .line 131
    iget-boolean p1, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->isBinanceTokenReplenish:Z

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/iMe/ui/custom/NetworkTypeView;->setImmutable()V

    :cond_0
    return-void
.end method

.method public setupRecipientInputErrorState(Z)V
    .locals 8

    .line 381
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputRecipient:Lcom/iMe/ui/custom/TitledInputFieldView;

    const-string v0, "binding.inputRecipient"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_error_incorrect_address:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p1

    .line 380
    invoke-static/range {v1 .. v7}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setErrorStateTitledInputFieldView$default(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lcom/iMe/ui/custom/TitledInputFieldView;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public setupReplenishAddress(Ljava/lang/String;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputRecipient:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkActionView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setupTokenInputErrorState(Z)V
    .locals 8

    .line 389
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->inputToken:Lcom/iMe/ui/custom/TitledInputFieldView;

    const-string v0, "binding.inputToken"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_error_unsupported_token:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p1

    .line 388
    invoke-static/range {v1 .. v7}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->setErrorStateTitledInputFieldView$default(Lcom/iMe/ui/wallet/send/WalletSendFragment;Lcom/iMe/ui/custom/TitledInputFieldView;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public showAlertError(Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_unexpected_error_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    .line 249
    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showChooseNetworkDialog(Ljava/util/List;Lcom/iMe/model/wallet/crypto/NetworkItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ")V"
        }
    .end annotation

    const-string v0, "availableNetworks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->Companion:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;

    .line 143
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 146
    new-instance v2, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    const-string/jumbo v3, "parentActivity"

    .line 143
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;->newInstance(Landroid/content/Context;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showNoEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 3

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string/jumbo v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;->showNoEnoughMoneyDialog(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    return-void
.end method

.method public showRecipientNotFoundError()V
    .locals 4

    .line 258
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 259
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_title:I

    .line 258
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 262
    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_description:I

    .line 261
    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 265
    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_btn_txt:I

    .line 264
    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    new-instance v3, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda9;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method

.method public showRecipientWalletNotActivatedError()V
    .locals 4

    .line 273
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 274
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_title:I

    .line 273
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 277
    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_error_user_wallet_not_activated_description:I

    .line 276
    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 280
    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_btn_txt:I

    .line 279
    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 272
    new-instance v3, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda7;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method

.method public showSuccessSend(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_success_send_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    new-instance v2, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V

    invoke-static {p0, v0, p1, v1, v2}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method

.method public updateFeeView(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V
    .locals 4

    .line 336
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->viewFee:Lcom/iMe/ui/custom/FeeView;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "updateFeeView$lambda$16"

    .line 338
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 339
    invoke-virtual {v0, p0, p1}, Lcom/iMe/ui/custom/FeeView;->init(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    :cond_0
    return-void
.end method

.method public updateStateButtonSend(Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;)V
    .locals 4

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;->buttonSend:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    .line 350
    sget-object v1, Lcom/iMe/ui/wallet/send/WalletSendFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_button_txt:I

    invoke-interface {p1, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setActionButtonText(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, v2}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setActionButtonEnabled(Z)V

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$string;->common_progress_state_title:I

    invoke-interface {p1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setActionButtonText(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, v1}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setActionButtonEnabled(Z)V

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_button_txt:I

    invoke-interface {p1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setActionButtonText(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0, v1}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setActionButtonEnabled(Z)V

    :goto_0
    return-void
.end method
