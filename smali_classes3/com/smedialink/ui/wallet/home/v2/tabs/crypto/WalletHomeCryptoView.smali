.class public interface abstract Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;
.super Ljava/lang/Object;
.source "WalletHomeCryptoView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/ui/base/mvp/SwipeRefreshView;
.implements Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;
.implements Lcom/smedialink/ui/base/mvp/AdapterNotifyView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$DefaultImpls;
    }
.end annotation

.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openHistoryScreen()V
.end method

.method public abstract openSendScreen()V
.end method

.method public abstract renderNodes(Ljava/util/List;)V
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

.method public abstract showAddressMismatchScreen()V
.end method

.method public abstract showChangeNetworkHint()V
.end method

.method public abstract showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showQrReceiveDialog(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
.end method

.method public abstract showWalletAddressScan(Ljava/lang/String;)V
.end method
