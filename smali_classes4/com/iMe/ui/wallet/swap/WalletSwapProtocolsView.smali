.class public interface abstract Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;
.super Ljava/lang/Object;
.source "WalletSwapProtocolsView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openBinanceConvertScreen()V
.end method

.method public abstract openSwapScreen(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
.end method

.method public abstract showExchangesProviders(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showRequiredVerifyDialog()V
.end method
