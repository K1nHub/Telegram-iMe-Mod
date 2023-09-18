.class public final Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletAirdropDialogPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletAirdropDialogPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletAirdropDialogPresenter.kt\ncom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,136:1\n14#2:137\n63#3,12:138\n*S KotlinDebug\n*F\n+ 1 WalletAirdropDialogPresenter.kt\ncom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter\n*L\n55#1:137\n58#1:138,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "airdropInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cryptoAccessManager"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "preferenceHelper"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "resourceManager"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "schedulersProvider"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 30
    iput-object p3, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 31
    iput-object p4, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 32
    iput-object p5, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method private final configureDialogState()V
    .locals 5

    .line 102
    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->isBotActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->isCryptoWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->CLAIM:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->isBotActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->isCryptoWalletCreated()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->CREATE_WALLET:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    goto :goto_0

    .line 104
    :cond_1
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->INTRO:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    .line 107
    :goto_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    .line 108
    iget-object v2, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAirdropMetadata()Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->getTokenValue()I

    move-result v2

    .line 109
    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->isBotActivated()Z

    move-result v3

    .line 110
    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->isCryptoWalletCreated()Z

    move-result v4

    .line 107
    invoke-interface {v1, v3, v4, v0, v2}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;->configureDialogState(ZZLcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;I)V

    return-void
.end method

.method private final isBotActivated()Z
    .locals 1

    .line 130
    invoke-static {}, Lcom/iMe/utils/helper/wallet/WalletHelper;->isAuthorized()Z

    move-result v0

    return v0
.end method

.method private final isCryptoWalletCreated()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->configureDialogState()V

    return-void
.end method
