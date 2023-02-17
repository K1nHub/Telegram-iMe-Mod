.class public final Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "BlockchainWalletDetailsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final walletItem:Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;


# direct methods
.method public constructor <init>(Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "walletItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;->walletItem:Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;

    .line 15
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 9

    .line 36
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;->walletItem:Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;

    .line 37
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;

    .line 38
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->getIconResId()I

    move-result v3

    .line 39
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->getTitleResId()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 40
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->getSubtitleResId()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;->getCreationDate()Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v0, v1, v7, v8}, Lcom/smedialink/utils/extentions/common/StringExtKt;->shortened$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-interface/range {v2 .. v7}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;->setupScreenWithData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final showResetWalletConfirmationDialog()V
    .locals 7

    .line 21
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;

    .line 22
    new-instance v1, Lcom/smedialink/model/dialog/DialogModel;

    .line 23
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_details_reset_title:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_details_reset_description:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 25
    sget v4, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v5, "Cancel"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 26
    sget v5, Lorg/telegram/messenger/R$string;->Reset:I

    const-string v6, "Reset"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;->showResetWalletConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;)V

    return-void
.end method
