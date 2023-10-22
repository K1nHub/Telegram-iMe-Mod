.class public interface abstract Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;
.super Ljava/lang/Object;
.source "WalletHomeServicesView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract firstScreenInitWithItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract openActionIntroScreen(I)V
.end method

.method public abstract openChannelsCatalogScreen()V
.end method

.method public abstract openCryptoBoxesScreen()V
.end method

.method public abstract openStakingScreen()V
.end method

.method public abstract openTelegramPremiumScreen()V
.end method

.method public abstract openTelegramUsernamesScreen()V
.end method

.method public abstract showRequiredWalletCreatedDialog(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
.end method
