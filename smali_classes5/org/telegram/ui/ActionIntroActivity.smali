.class public Lorg/telegram/ui/ActionIntroActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ActionIntroActivity.java"

# interfaces
.implements Lorg/telegram/messenger/LocationController$LocationFetchCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionIntroActivity$ActionIntroQRLoginDelegate;
    }
.end annotation


# instance fields
.field private final bannerSlide:Lcom/iMe/model/wallet/home/BannerSlide;

.field private buttonTextView:Landroid/widget/TextView;

.field private colors:[I

.field private final cryptoAccessManager:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;",
            ">;"
        }
    .end annotation
.end field

.field private final cryptoPreferenceHelper:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;",
            ">;"
        }
    .end annotation
.end field

.field private currentGroupCreateAddress:Ljava/lang/String;

.field private currentGroupCreateDisplayAddress:Ljava/lang/String;

.field private currentGroupCreateLocation:Landroid/location/Location;

.field private currentType:I

.field private descriptionLayout:Landroid/widget/LinearLayout;

.field private descriptionText:Landroid/widget/TextView;

.field private descriptionText2:Landroid/widget/TextView;

.field private desctiptionLines:[Landroid/widget/TextView;

.field private drawable2:Landroid/graphics/drawable/Drawable;

.field private flickerButton:Z

.field private final forcedNetworkId:Ljava/lang/String;

.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private final lockedSection:Lcom/iMe/fork/enums/LockedSection;

.field private final pinCodeCoordinator:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private qrLoginDelegate:Lorg/telegram/ui/ActionIntroActivity$ActionIntroQRLoginDelegate;

.field private final resourceManager:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ">;"
        }
    .end annotation
.end field

.field private showingAsBottomSheet:Z

.field private subtitleTextView:Landroid/widget/TextView;

.field private final swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

.field private titleTextView:Landroid/widget/TextView;

.field private final tokenToSwap:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method public static synthetic $r8$lambda$0CcJdACHY6PPaevvE-xEmq40Ok8(Lorg/telegram/ui/ActionIntroActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionIntroActivity;->lambda$createView$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$0wKUoxZ2VF545yS7Ah7gNjFt05E(Lorg/telegram/ui/ActionIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionIntroActivity;->lambda$createView$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$75yv7kj2xOILXgxE8CzF05p8-bE(Lorg/telegram/ui/ActionIntroActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionIntroActivity;->lambda$showChooseGatePairDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8SpOmF9cgURGu1Inn7HmvoRYuBk(Lorg/telegram/ui/ActionIntroActivity;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionIntroActivity;->lambda$createView$2(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C1z22D4kXXiQi5sU-nwEEV3c13M(Lorg/telegram/ui/ActionIntroActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionIntroActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EHHuDmG1uuUMWMRa_q_bYuKzyGU(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionIntroActivity;->lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JBXk_0dO2LPER6gaCnknLDymtDE(Lorg/telegram/ui/ActionIntroActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionIntroActivity;->lambda$createView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OaOCoQflPSWl6Z8zZ5EjW1Dj8sk(Lorg/telegram/ui/ActionIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionIntroActivity;->lambda$onRequestPermissionsResultFragment$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$YDggsA4ijP63pkDDfC3XtID007g(Lorg/telegram/ui/ActionIntroActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionIntroActivity;->lambda$createView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iTRfS0lEPdDDpYZTbeBZ101y3e4(Lorg/telegram/ui/ActionIntroActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionIntroActivity;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u19EzaLWc0I3yBG2T03118n2Lc8(Lorg/telegram/ui/ActionIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionIntroActivity;->updateColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$xN70pEM2-d8wOZr_USh4hD71b7I(Lorg/telegram/ui/ActionIntroActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionIntroActivity;->lambda$onRequestPermissionsResultFragment$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    .line 130
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionIntroActivity;-><init>(ILcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;Lcom/iMe/model/wallet/home/BannerSlide;Lcom/iMe/fork/enums/LockedSection;)V

    return-void
.end method

.method public constructor <init>(ILcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;Lcom/iMe/model/wallet/home/BannerSlide;Lcom/iMe/fork/enums/LockedSection;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 104
    const-class v0, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->cryptoAccessManager:Lkotlin/Lazy;

    .line 105
    const-class v0, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->cryptoPreferenceHelper:Lkotlin/Lazy;

    .line 106
    const-class v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->resourceManager:Lkotlin/Lazy;

    .line 107
    const-class v0, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->pinCodeCoordinator:Lkotlin/Lazy;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/TextView;

    .line 176
    iput-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    .line 222
    iput p1, p0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "BINANCE_SMART_CHAIN"

    .line 224
    invoke-static {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getLIME(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/telegram/ui/ActionIntroActivity;->tokenToSwap:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 225
    :cond_1
    sget-object p3, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH_FUSION:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    :goto_1
    iput-object p3, p0, Lorg/telegram/ui/ActionIntroActivity;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 226
    iput-object p5, p0, Lorg/telegram/ui/ActionIntroActivity;->bannerSlide:Lcom/iMe/model/wallet/home/BannerSlide;

    .line 227
    iput-object p6, p0, Lorg/telegram/ui/ActionIntroActivity;->lockedSection:Lcom/iMe/fork/enums/LockedSection;

    .line 228
    iput-object p4, p0, Lorg/telegram/ui/ActionIntroActivity;->forcedNetworkId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ActionIntroActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lorg/telegram/ui/ActionIntroActivity;->flickerButton:Z

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/ActionIntroActivity$ActionIntroQRLoginDelegate;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionIntroActivity;->qrLoginDelegate:Lorg/telegram/ui/ActionIntroActivity$ActionIntroQRLoginDelegate;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionIntroActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionIntroActivity;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ActionIntroActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lorg/telegram/ui/ActionIntroActivity;->showingAsBottomSheet:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionIntroActivity;->descriptionLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ActionIntroActivity;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private getWallet()Lcom/iMe/storage/domain/model/crypto/Wallet;
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->cryptoAccessManager:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v1, p0, Lorg/telegram/ui/ActionIntroActivity;->cryptoPreferenceHelper:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$2(Ljava/lang/Long;)V
    .locals 2

    .line 856
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatActivity;->newInstanceForDialogId(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$3()V
    .locals 2

    .line 915
    new-instance v0, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-direct {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;-><init>()V

    sget-object v1, Lcom/iMe/model/wallet/send/WalletSendScreenType;->WALLET_TRANSFER:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    .line 916
    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->newInstance(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;Lcom/iMe/model/wallet/send/WalletSendScreenType;)Lcom/iMe/ui/wallet/send/WalletSendFragment;

    move-result-object v0

    .line 915
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 999
    new-instance p1, Lorg/telegram/ui/LoginActivity;

    invoke-direct {p1}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/ui/LoginActivity;->changePhoneNumber()Lorg/telegram/ui/LoginActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 5

    .line 847
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 851
    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1c

    const/16 v2, 0x6e

    if-ne p1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 859
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setMusicIntroShown(Z)V

    .line 860
    new-instance p1, Lcom/iMe/fork/ui/fragment/MusicActivity;

    invoke-direct {p1}, Lcom/iMe/fork/ui/fragment/MusicActivity;-><init>()V

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_2

    :cond_2
    const/16 v0, 0x67

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 862
    new-instance p1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    iget-object v3, p0, Lorg/telegram/ui/ActionIntroActivity;->tokenToSwap:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v4, p0, Lorg/telegram/ui/ActionIntroActivity;->forcedNetworkId:Ljava/lang/String;

    invoke-direct {p1, v0, v2, v3, v4}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->newInstance(Lcom/iMe/model/wallet/swap/WalletSwapScreenType;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_2

    :cond_3
    const/16 v0, 0x6a

    if-ne p1, v0, :cond_4

    .line 864
    invoke-virtual {p0}, Lorg/telegram/ui/ActionIntroActivity;->showNotAvailableToast()V

    goto/16 :goto_2

    :cond_4
    const/16 v0, 0x68

    if-ne p1, v0, :cond_5

    .line 866
    invoke-virtual {p0}, Lorg/telegram/ui/ActionIntroActivity;->showNotAvailableToast()V

    goto/16 :goto_2

    :cond_5
    const/16 v0, 0x69

    if-ne p1, v0, :cond_6

    .line 868
    invoke-virtual {p0}, Lorg/telegram/ui/ActionIntroActivity;->showNotAvailableToast()V

    goto/16 :goto_2

    :cond_6
    const/16 v0, 0x6b

    if-ne p1, v0, :cond_7

    .line 870
    invoke-virtual {p0}, Lorg/telegram/ui/ActionIntroActivity;->showNotAvailableToast()V

    goto/16 :goto_2

    :cond_7
    const/16 v0, 0x6d

    const/16 v3, 0x22

    const-string v4, "android.permission.CAMERA"

    if-ne p1, v0, :cond_a

    .line 872
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    .line 875
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_9

    .line 876
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 879
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/ActionIntroActivity;->processOpenQrReader()V

    goto/16 :goto_2

    :cond_a
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_17

    .line 881
    iget-object p1, p0, Lorg/telegram/ui/ActionIntroActivity;->bannerSlide:Lcom/iMe/model/wallet/home/BannerSlide;

    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$FAQ;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$FAQ;

    if-ne p1, v0, :cond_b

    .line 882
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->common_wallet_faq_url:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_2

    .line 884
    :cond_b
    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Swap;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Swap;

    if-ne p1, v0, :cond_d

    .line 885
    iget-object p1, p0, Lorg/telegram/ui/ActionIntroActivity;->cryptoAccessManager:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 886
    sget-object p1, Lcom/iMe/model/common/ScreenType;->FULLSCREEN:Lcom/iMe/model/common/ScreenType;

    invoke-static {p1, v2}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;->newInstance(Lcom/iMe/model/common/ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_2

    .line 888
    :cond_c
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_2

    .line 890
    :cond_d
    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$NonCustodial;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$NonCustodial;

    if-ne p1, v0, :cond_f

    .line 891
    invoke-direct {p0}, Lorg/telegram/ui/ActionIntroActivity;->getWallet()Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->pinCodeCoordinator:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    new-instance v3, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    const-string v4, ""

    invoke-direct {v3, p1, v4, v4}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;-><init>(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-static {v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object p1

    new-instance v3, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;

    sget-object v4, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->CHECK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-direct {v3, v4}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;-><init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;)V

    .line 893
    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;Z)V

    goto/16 :goto_2

    .line 906
    :cond_e
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_2

    .line 908
    :cond_f
    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Gate;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Gate;

    if-ne p1, v0, :cond_10

    .line 909
    invoke-direct {p0}, Lorg/telegram/ui/ActionIntroActivity;->showChooseGatePairDialog()V

    goto/16 :goto_2

    .line 910
    :cond_10
    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$CryptoTransfers;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$CryptoTransfers;

    if-ne p1, v0, :cond_11

    .line 911
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->cryptoPreferenceHelper:Lkotlin/Lazy;

    .line 914
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    .line 911
    invoke-static {p0, p1, v0, v1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->runWithCheckIsCryptoWalletCreated(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_2

    .line 922
    :cond_11
    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AscendeEX;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AscendeEX;

    if-ne p1, v0, :cond_12

    .line 923
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->common_ascendeex_url:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_2

    .line 925
    :cond_12
    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Staking;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Staking;

    if-ne p1, v0, :cond_14

    .line 926
    iget-object p1, p0, Lorg/telegram/ui/ActionIntroActivity;->cryptoAccessManager:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 927
    invoke-static {}, Lcom/iMe/ui/wallet/staking/StakingFragment;->newInstance()Lcom/iMe/ui/wallet/staking/StakingFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 928
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_2

    .line 930
    :cond_13
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    .line 931
    invoke-static {p0, v0, p1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createWalletCreatedRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 930
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 938
    :cond_14
    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Binance$FAQ;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Binance$FAQ;

    if-ne p1, v0, :cond_15

    .line 939
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_faq_action_link:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_2

    .line 941
    :cond_15
    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Binance$Marketplace;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Binance$Marketplace;

    if-ne p1, v0, :cond_16

    .line 942
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_marketplace_action_link:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 943
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_2

    .line 945
    :cond_16
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_2

    :cond_17
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 967
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/PasscodeActivity;

    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->lockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-direct {p1, v1, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILcom/iMe/fork/enums/LockedSection;)V

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_2

    .line 950
    :pswitch_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_18

    return-void

    .line 953
    :cond_18
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_19

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_19

    .line 954
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 957
    :cond_19
    invoke-direct {p0}, Lorg/telegram/ui/ActionIntroActivity;->processOpenQrReader()V

    goto/16 :goto_2

    .line 976
    :pswitch_2
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 978
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 996
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 997
    sget v0, Lorg/telegram/messenger/R$string;->PhoneNumberChangeTitle:I

    const-string v1, "PhoneNumberChangeTitle"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 998
    sget v0, Lorg/telegram/messenger/R$string;->PhoneNumberAlert:I

    const-string v1, "PhoneNumberAlert"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 999
    sget v0, Lorg/telegram/messenger/R$string;->Change:I

    const-string v1, "Change"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1000
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1001
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 983
    :pswitch_4
    iget-object p1, p0, Lorg/telegram/ui/ActionIntroActivity;->currentGroupCreateAddress:Ljava/lang/String;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lorg/telegram/ui/ActionIntroActivity;->currentGroupCreateLocation:Landroid/location/Location;

    if-nez p1, :cond_1a

    goto :goto_0

    .line 986
    :cond_1a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-array v2, v1, [J

    .line 987
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    aput-wide v3, v2, v0

    const-string v0, "result"

    .line 988
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const/4 v0, 0x4

    const-string v2, "chatType"

    .line 989
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 990
    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->currentGroupCreateAddress:Ljava/lang/String;

    const-string v2, "address"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->currentGroupCreateLocation:Landroid/location/Location;

    const-string v2, "location"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 992
    new-instance v0, Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/GroupCreateFinalActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_2

    :cond_1b
    :goto_0
    return-void

    .line 971
    :pswitch_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_2

    .line 961
    :pswitch_6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "step"

    .line 962
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 963
    new-instance v0, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_2

    .line 852
    :cond_1c
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setAlbumsIntroShown(Z)V

    .line 853
    iget p1, p0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    if-ne p1, v0, :cond_1d

    .line 854
    invoke-static {}, Lorg/telegram/ui/DialogsActivity;->newInstanceInAlbumsMode()Lorg/telegram/ui/DialogsActivity;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_2

    .line 856
    :cond_1d
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    invoke-static {p1}, Lorg/telegram/ui/ChannelCreateActivity;->newInstanceInAlbumMode(Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ChannelCreateActivity;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 1

    .line 1084
    iget-object p1, p0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1085
    iget-object p1, p0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 1086
    iget-object p1, p0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;)V
    .locals 1

    .line 1147
    iget-object p1, p0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1148
    iget-object p1, p0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 1149
    iget-object p1, p0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 1

    .line 1161
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->closeLastFragment(Z)V

    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultFragment$10(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1260
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1261
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1262
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1264
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultFragment$9()V
    .locals 2

    .line 1249
    new-instance v0, Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-direct {v0}, Lorg/telegram/ui/PeopleNearbyActivity;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private synthetic lambda$showChooseGatePairDialog$0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 155
    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/GatePair;->values()[Lcom/iMe/storage/domain/model/wallet/GatePair;

    move-result-object p1

    aget-object p1, p1, p2

    .line 156
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/GatePair;->getUrl()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private processOpenQrReader()V
    .locals 3

    .line 1279
    iget v0, p0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    const/4 v1, 0x1

    const/16 v2, 0x6d

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1280
    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionIntroActivity$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionIntroActivity$4;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    invoke-static {p0, v0, v1, v2, v0}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private showChooseGatePairDialog()V
    .locals 3

    .line 151
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    iget-object v1, p0, Lorg/telegram/ui/ActionIntroActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_gate_select_pair_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 153
    iget-object v1, p0, Lorg/telegram/ui/ActionIntroActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {v1}, Lcom/iMe/storage/domain/model/wallet/GatePair;->getTitlesAsArray(Lcom/iMe/storage/domain/utils/system/ResourceManager;)[Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v2, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 159
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updateColors()V
    .locals 4

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->colors:[I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const v2, 0x333333

    .line 1216
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 1217
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 1219
    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->colors:[I

    const/4 v1, 0x2

    const v2, 0xffffff

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 1220
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    .line 1222
    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->colors:[I

    const/4 v1, 0x4

    const v3, 0x50a7ea

    aput v3, v0, v1

    const/4 v1, 0x5

    .line 1223
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    .line 1225
    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->colors:[I

    const/4 v1, 0x6

    const v3, 0x212020

    aput v3, v0, v1

    const/4 v1, 0x7

    .line 1226
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 1227
    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/ActionIntroActivity;->colors:[I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->replaceColors([I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 234
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 235
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 236
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 238
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 239
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 240
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 241
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 242
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 243
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ActionIntroActivity$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ActionIntroActivity$1;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 253
    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionIntroActivity$2;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ActionIntroActivity$2;-><init>(Lorg/telegram/ui/ActionIntroActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 704
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 705
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 706
    sget-object v4, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda7;->INSTANCE:Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda7;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 708
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v4, :cond_1

    .line 709
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 712
    :cond_1
    new-instance v4, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 713
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 715
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    .line 716
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 717
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 718
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    const/16 v7, 0x20

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v4, v8, v3, v9, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 719
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-virtual {v4, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 720
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 722
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    .line 723
    iget v8, v0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    :cond_2
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 724
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 725
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 726
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 727
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 728
    iget v4, v0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    const/16 v8, 0x18

    const/4 v10, 0x2

    if-ne v4, v10, :cond_3

    .line 729
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v4, v11, v3, v12, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 731
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v4, v11, v3, v12, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 733
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 734
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 736
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    .line 737
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 738
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 739
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v4, v12, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 740
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 741
    iget v4, v0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    const/4 v12, 0x6

    if-eq v4, v12, :cond_6

    if-ne v4, v9, :cond_4

    goto :goto_1

    :cond_4
    if-ne v4, v10, :cond_5

    .line 744
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v4, v14, v3, v15, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 746
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v4, v14, v3, v15, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 742
    :cond_6
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    const/16 v14, 0x30

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v4, v15, v3, v14, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 748
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 750
    iget v4, v0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    const-string v14, "fonts/rmedium.ttf"

    const-string v15, ""

    const/4 v12, 0x5

    if-ne v4, v12, :cond_11

    .line 751
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionLayout:Landroid/widget/LinearLayout;

    .line 752
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 753
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionLayout:Landroid/widget/LinearLayout;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v4, v7, v3, v8, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 754
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionLayout:Landroid/widget/LinearLayout;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_7

    move v7, v12

    goto :goto_3

    :cond_7
    move v7, v9

    :goto_3
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 755
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v4, v3

    :goto_4
    if-ge v4, v9, :cond_10

    .line 758
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 759
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 760
    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionLayout:Landroid/widget/LinearLayout;

    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    if-eq v4, v10, :cond_8

    const/16 v21, 0x7

    goto :goto_5

    :cond_8
    move/from16 v21, v3

    :goto_5
    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    mul-int/lit8 v9, v4, 0x2

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v10, v8, v9

    .line 763
    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v8, v8, v9

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 764
    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v8, v8, v9

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_9

    move v11, v12

    goto :goto_6

    :cond_9
    const/4 v11, 0x3

    :goto_6
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 765
    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v8, v8, v9

    invoke-virtual {v8, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 766
    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v8, v8, v9

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_a

    const-string v11, ".%d"

    goto :goto_7

    :cond_a
    const-string v11, "%d."

    :goto_7
    new-array v13, v6, [Ljava/lang/Object;

    add-int/lit8 v19, v4, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v13, v3

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v8, v8, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 769
    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    add-int/lit8 v11, v9, 0x1

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v13, v8, v11

    .line 770
    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v8, v8, v11

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 771
    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v8, v8, v11

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_b

    move v10, v12

    goto :goto_8

    :cond_b
    const/4 v10, 0x3

    :goto_8
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 772
    iget-object v8, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v8, v8, v11

    invoke-virtual {v8, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    if-nez v4, :cond_d

    .line 774
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v4, v4, v11

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 775
    iget-object v4, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v4, v4, v11

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkSelection:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 776
    sget v4, Lorg/telegram/messenger/R$string;->AuthAnotherClientInfo1:I

    const-string v8, "AuthAnotherClientInfo1"

    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 777
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v10, 0x2a

    .line 778
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/16 v13, 0x2a

    .line 779
    invoke-virtual {v4, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v13, -0x1

    if-eq v10, v13, :cond_c

    const/4 v13, -0x1

    if-eq v4, v13, :cond_c

    if-eq v10, v4, :cond_c

    .line 781
    iget-object v13, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v13, v13, v11

    new-instance v5, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v5}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    add-int/lit8 v5, v4, 0x1

    .line 782
    invoke-virtual {v8, v4, v5, v15}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v10, 0x1

    .line 783
    invoke-virtual {v8, v10, v5, v15}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 784
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    sget v13, Lorg/telegram/messenger/R$string;->AuthAnotherClientDownloadClientUrl:I

    const-string v3, "AuthAnotherClientDownloadClientUrl"

    invoke-static {v3, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    const/16 v3, 0x21

    invoke-virtual {v8, v5, v10, v4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 786
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_d
    if-ne v4, v6, :cond_e

    .line 788
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    sget v4, Lorg/telegram/messenger/R$string;->AuthAnotherClientInfo2:I

    const-string v5, "AuthAnotherClientInfo2"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 790
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    sget v4, Lorg/telegram/messenger/R$string;->AuthAnotherClientInfo3:I

    const-string v5, "AuthAnotherClientInfo3"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    :goto_9
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v4, -0x2

    if-eqz v3, :cond_f

    .line 793
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 794
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-static {v8, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v3, v3, v9

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/16 v24, 0x4

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    .line 797
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v3, v3, v9

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x4

    const/16 v27, 0x0

    invoke-static/range {v22 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 798
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    move/from16 v4, v19

    const/4 v3, 0x0

    const/high16 v5, 0x41700000    # 15.0f

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, 0x8

    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 802
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 805
    :cond_11
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText2:Landroid/widget/TextView;

    .line 806
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 807
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 808
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText2:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 809
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText2:Landroid/widget/TextView;

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 810
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText2:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 811
    iget v3, v0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    if-ne v3, v4, :cond_12

    .line 812
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText2:Landroid/widget/TextView;

    const/16 v4, 0x12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_b

    :cond_12
    const/4 v7, 0x0

    .line 814
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText2:Landroid/widget/TextView;

    const/16 v4, 0x20

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v5, v7, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 816
    :goto_b
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText2:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 818
    new-instance v3, Lorg/telegram/ui/ActionIntroActivity$3;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ActionIntroActivity$3;-><init>(Lorg/telegram/ui/ActionIntroActivity;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    const/16 v4, 0x22

    .line 838
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v3, v5, v7, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 839
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 840
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 841
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 842
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 843
    iget v3, v0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    const/4 v5, 0x6

    if-eq v3, v5, :cond_14

    const/4 v7, 0x3

    if-eq v3, v7, :cond_14

    if-nez v3, :cond_13

    goto :goto_c

    :cond_13
    const/4 v12, 0x4

    goto :goto_d

    :cond_14
    :goto_c
    move v12, v5

    .line 844
    :goto_d
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v7, v6, [F

    int-to-float v8, v12

    const/4 v9, 0x0

    aput v8, v7, v9

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 845
    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 846
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1008
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionIntroActivity;->isForkIntro()Z

    move-result v2

    const/16 v3, 0x14e

    const/16 v5, 0x64

    if-eqz v2, :cond_1f

    .line 1009
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1010
    iget v1, v0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    if-eq v1, v5, :cond_1d

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_15

    goto/16 :goto_e

    :cond_15
    const/16 v2, 0x65

    if-ne v1, v2, :cond_16

    .line 1016
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_music_intro:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 1017
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AttachMusic:I

    const-string v3, "AttachMusic"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->music_intro_subtitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v3, "Continue"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    :cond_16
    const/16 v2, 0x67

    const/16 v5, 0x96

    if-ne v1, v2, :cond_17

    .line 1021
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 1022
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->fork_swap:I

    invoke-virtual {v1, v2, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1023
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1024
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_banner_slide_swap_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_banner_slide_swap_long_description:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_exchange:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    :cond_17
    const/16 v2, 0x68

    if-ne v1, v2, :cond_18

    .line 1028
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_img_intro_channels:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 1029
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_internal_point_channels_catalog_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_internal_point_channels_catalog_subtitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_feature_in_developing:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    :cond_18
    const/16 v2, 0x69

    if-ne v1, v2, :cond_19

    .line 1033
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_img_intro_bot:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 1034
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_internal_point_neurobots_store_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_internal_point_neurobots_store_subtitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_feature_in_developing:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    :cond_19
    const/16 v2, 0x6b

    if-ne v1, v2, :cond_1a

    .line 1038
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_img_intro_premium:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 1039
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_internal_point_premium_account_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_internal_point_premium_account_subtitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_feature_in_developing:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    :cond_1a
    const/16 v2, 0x6a

    if-ne v1, v2, :cond_1b

    .line 1043
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_img_intro_ads:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 1044
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_internal_point_ads_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_internal_point_ads_subtitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_feature_in_developing:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    :cond_1b
    const/16 v2, 0x6d

    if-ne v1, v2, :cond_1c

    const/16 v2, 0x8

    new-array v1, v2, [I

    .line 1048
    iput-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->colors:[I

    .line 1049
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionIntroActivity;->updateColors()V

    .line 1050
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 1051
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->fork_binance_pay_scan:I

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity;->colors:[I

    invoke-virtual {v1, v2, v3, v3, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III[I)V

    .line 1052
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1053
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1054
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_pay_intro_scan_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_pay_intro_scan_description:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AuthAnotherClientScan:I

    const-string v3, "AuthAnotherClientScan"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    :cond_1c
    const/16 v2, 0x6c

    if-ne v1, v2, :cond_25

    .line 1058
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->bannerSlide:Lcom/iMe/model/wallet/home/BannerSlide;

    if-eqz v1, :cond_25

    .line 1059
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 1060
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity;->bannerSlide:Lcom/iMe/model/wallet/home/BannerSlide;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/BannerSlide;->getAnimatedIconResId()I

    move-result v2

    invoke-virtual {v1, v2, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1061
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1062
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity;->bannerSlide:Lcom/iMe/model/wallet/home/BannerSlide;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/BannerSlide;->getTitleResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity;->bannerSlide:Lcom/iMe/model/wallet/home/BannerSlide;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/BannerSlide;->getLongDescriptionResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity;->bannerSlide:Lcom/iMe/model/wallet/home/BannerSlide;

    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->cryptoAccessManager:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-virtual {v2, v3}, Lcom/iMe/model/wallet/home/BannerSlide;->getActionButtonText(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 1011
    :cond_1d
    :goto_e
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_cloud_albums_intro:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 1012
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->cloud_albums_intro_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->cloud_albums_intro_subtitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    iget v2, v0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    if-ne v2, v5, :cond_1e

    sget v2, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v3, "Continue"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_1e
    sget v2, Lorg/telegram/messenger/R$string;->cloud_albums_intro_button:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    :goto_f
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 1068
    :cond_1f
    iget v2, v0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    const-string v7, "PeopleNearby"

    const/16 v8, 0xc8

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_12

    .line 1080
    :pswitch_0
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1081
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->utyan_passcode:I

    invoke-virtual {v1, v2, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1082
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1083
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->lockedSection:Lcom/iMe/fork/enums/LockedSection;

    if-eqz v1, :cond_20

    .line 1091
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/iMe/fork/enums/LockedSection;->getNameResId()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10

    .line 1094
    :cond_20
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Passcode:I

    const-string v3, "Passcode"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    :goto_10
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChangePasscodeInfoShort:I

    const-string v3, "ChangePasscodeInfoShort"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->EnablePasscode:I

    const-string v3, "EnablePasscode"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1098
    iput-boolean v6, v0, Lorg/telegram/ui/ActionIntroActivity;->flickerButton:Z

    goto/16 :goto_12

    :pswitch_1
    const/16 v1, 0x8

    new-array v2, v1, [I

    .line 1121
    iput-object v2, v0, Lorg/telegram/ui/ActionIntroActivity;->colors:[I

    .line 1122
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionIntroActivity;->updateColors()V

    .line 1123
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->qr_login:I

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity;->colors:[I

    invoke-virtual {v1, v2, v3, v3, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III[I)V

    .line 1124
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1125
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AuthAnotherClient:I

    const-string v3, "AuthAnotherClient"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AuthAnotherClientScan:I

    const-string v3, "AuthAnotherClientScan"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_12

    .line 1112
    :pswitch_2
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v3, Lorg/telegram/ui/Components/ShareLocationDrawable;

    const/4 v5, 0x3

    invoke-direct {v3, v1, v5}, Lorg/telegram/ui/Components/ShareLocationDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1114
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1115
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PeopleNearby:I

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PeopleNearbyGpsInfo:I

    const-string v3, "PeopleNearbyGpsInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PeopleNearbyGps:I

    const-string v3, "PeopleNearbyGps"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 1143
    :pswitch_3
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1144
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1145
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->utyan_change_number:I

    invoke-virtual {v1, v2, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1146
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    .line 1154
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v7, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-nez v2, :cond_21

    .line 1156
    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    :cond_21
    if-eqz v2, :cond_22

    .line 1159
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->PhoneNumberKeepButton:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const-string v2, "PhoneNumberKeepButton"

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    :cond_22
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PhoneNumberChange2:I

    const-string v3, "PhoneNumberChange2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->PhoneNumberHelp:I

    const-string v5, "PhoneNumberHelp"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    const-string v3, "PhoneNumberChange2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1166
    iput-boolean v6, v0, Lorg/telegram/ui/ActionIntroActivity;->flickerButton:Z

    goto/16 :goto_12

    .line 1131
    :pswitch_4
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1132
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1133
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-eqz v2, :cond_23

    sget v2, Lorg/telegram/messenger/R$drawable;->groupsintro2:I

    goto :goto_11

    :cond_23
    sget v2, Lorg/telegram/messenger/R$drawable;->groupsintro:I

    :goto_11
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 1134
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1135
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity;->currentGroupCreateDisplayAddress:Ljava/lang/String;

    if-eqz v2, :cond_24

    move-object v15, v2

    :cond_24
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NearbyCreateGroup:I

    const-string v3, "NearbyCreateGroup"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NearbyCreateGroupInfo:I

    const-string v3, "NearbyCreateGroupInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText2:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NearbyCreateGroupInfo2:I

    const-string v3, "NearbyCreateGroupInfo2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NearbyStartGroup:I

    const-string v3, "NearbyStartGroup"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 1102
    :pswitch_5
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1103
    iget-object v2, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v3, Lorg/telegram/ui/Components/ShareLocationDrawable;

    const/4 v5, 0x3

    invoke-direct {v3, v1, v5}, Lorg/telegram/ui/Components/ShareLocationDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1104
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1105
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PeopleNearby:I

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PeopleNearbyAccessInfo:I

    const-string v3, "PeopleNearbyAccessInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PeopleNearbyAllowAccess:I

    const-string v3, "PeopleNearbyAllowAccess"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    iput-boolean v6, v0, Lorg/telegram/ui/ActionIntroActivity;->flickerButton:Z

    goto :goto_12

    .line 1070
    :pswitch_6
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1071
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->channel_create:I

    invoke-virtual {v1, v2, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1072
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAlertTitle:I

    const-string v3, "ChannelAlertTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAlertText:I

    const-string v3, "ChannelAlertText"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAlertCreate2:I

    const-string v3, "ChannelAlertCreate2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1076
    iput-boolean v6, v0, Lorg/telegram/ui/ActionIntroActivity;->flickerButton:Z

    .line 1171
    :cond_25
    :goto_12
    iget-boolean v1, v0, Lorg/telegram/ui/ActionIntroActivity;->flickerButton:Z

    if-eqz v1, :cond_26

    .line 1172
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v2, v5, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1173
    iget-object v1, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1176
    :cond_26
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    new-instance v10, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda12;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    .line 1303
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v11

    move-object v8, v10

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v2, :cond_0

    .line 1306
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v14, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    :cond_0
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->titleTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v2, v11

    move-object v8, v10

    move/from16 v9, v20

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v2

    move/from16 v19, v20

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->descriptionText:Landroid/widget/TextView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v14, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionIntroActivity;->buttonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v14, v3, v4

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    const/4 v4, 0x0

    aget-object v13, v3, v4

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v12, v2

    move/from16 v19, v20

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    const/4 v5, 0x1

    aget-object v13, v3, v5

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    aget-object v22, v3, v5

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    const/4 v6, 0x2

    aget-object v13, v3, v6

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    const/4 v6, 0x3

    aget-object v13, v3, v6

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    const/4 v6, 0x4

    aget-object v13, v3, v6

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionIntroActivity;->desctiptionLines:[Landroid/widget/TextView;

    const/4 v6, 0x5

    aget-object v13, v3, v6

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v5, [Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lorg/telegram/ui/ActionIntroActivity;->drawable2:Landroid/graphics/drawable/Drawable;

    aput-object v5, v3, v4

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_changephoneinfo_image2:I

    move-object/from16 v21, v2

    move-object/from16 v26, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getType()I
    .locals 1

    .line 1290
    iget v0, p0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    return v0
.end method

.method public isForkIntro()Z
    .locals 2

    .line 140
    iget v0, p0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    const/16 v1, 0x68

    if-eq v0, v1, :cond_1

    const/16 v1, 0x69

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isLightStatusBar()Z
    .locals 5

    .line 1333
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    .line 1334
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v3, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onLocationAddressAvailable(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Landroid/location/Location;)V
    .locals 0

    .line 1181
    iget-object p3, p0, Lorg/telegram/ui/ActionIntroActivity;->subtitleTextView:Landroid/widget/TextView;

    if-nez p3, :cond_0

    return-void

    .line 1184
    :cond_0
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    iput-object p1, p0, Lorg/telegram/ui/ActionIntroActivity;->currentGroupCreateAddress:Ljava/lang/String;

    .line 1186
    iput-object p2, p0, Lorg/telegram/ui/ActionIntroActivity;->currentGroupCreateDisplayAddress:Ljava/lang/String;

    .line 1187
    iput-object p5, p0, Lorg/telegram/ui/ActionIntroActivity;->currentGroupCreateLocation:Landroid/location/Location;

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1241
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_4

    .line 1245
    array-length p1, p3

    if-eqz p1, :cond_4

    .line 1246
    aget p1, p3, v0

    if-eqz p1, :cond_1

    .line 1247
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createLocationRequiredDialog(Landroid/content/Context;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1249
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x22

    if-ne p1, p2, :cond_4

    .line 1253
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, v0

    if-nez p1, :cond_3

    .line 1254
    invoke-direct {p0}, Lorg/telegram/ui/ActionIntroActivity;->processOpenQrReader()V

    goto :goto_0

    .line 1256
    :cond_3
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->QRCodePermissionNoCameraWithHint:I

    const-string p3, "QRCodePermissionNoCameraWithHint"

    .line 1257
    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    const-string p3, "PermissionOpenSettings"

    .line 1258
    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionIntroActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    const-string p3, "ContactsPermissionAlertNotNow"

    .line 1267
    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    const/16 p3, 0x48

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    .line 1268
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1269
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_4
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1192
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1193
    iget v0, p0, Lorg/telegram/ui/ActionIntroActivity;->currentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 1196
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1197
    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    goto :goto_1

    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 1200
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1203
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 1207
    new-instance v0, Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-direct {v0}, Lorg/telegram/ui/PeopleNearbyActivity;-><init>()V

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_3
    return-void
.end method

.method public setGroupCreateAddress(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    .line 1231
    iput-object p1, p0, Lorg/telegram/ui/ActionIntroActivity;->currentGroupCreateAddress:Ljava/lang/String;

    .line 1232
    iput-object p2, p0, Lorg/telegram/ui/ActionIntroActivity;->currentGroupCreateDisplayAddress:Ljava/lang/String;

    .line 1233
    iput-object p3, p0, Lorg/telegram/ui/ActionIntroActivity;->currentGroupCreateLocation:Landroid/location/Location;

    if-eqz p3, :cond_0

    if-nez p1, :cond_0

    .line 1235
    invoke-static {p3, p0}, Lorg/telegram/messenger/LocationController;->fetchLocationAddress(Landroid/location/Location;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V

    :cond_0
    return-void
.end method

.method public setQrLoginDelegate(Lorg/telegram/ui/ActionIntroActivity$ActionIntroQRLoginDelegate;)V
    .locals 0

    .line 1275
    iput-object p1, p0, Lorg/telegram/ui/ActionIntroActivity;->qrLoginDelegate:Lorg/telegram/ui/ActionIntroActivity$ActionIntroQRLoginDelegate;

    return-void
.end method

.method public showNotAvailableToast()V
    .locals 3

    .line 136
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->info:I

    sget v2, Lorg/telegram/messenger/R$string;->wallet_feature_not_available:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method
