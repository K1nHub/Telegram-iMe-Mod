.class public interface abstract Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;
.super Ljava/lang/Object;
.source "WalletHomeBinancePayView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/ui/base/mvp/SwipeRefreshView;
.implements Lcom/smedialink/manager/crypto/pay/BinancePayProcessView;
.implements Lcom/smedialink/ui/base/mvp/AdapterNotifyView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openConvertScreen()V
.end method

.method public abstract openHistoryScreen()V
.end method

.method public abstract openPayScreen()V
.end method

.method public abstract openReplenishScreen(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
.end method

.method public abstract render(Ljava/util/List;)V
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

.method public abstract showConfirmLogOutDialog(Lcom/smedialink/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/dialog/DialogModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showLoginGuideDialog(Lcom/smedialink/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/dialog/DialogModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showRequiredVerifyDialog()V
.end method

.method public abstract showRequiredWalletCreatedDialog()V
.end method

.method public abstract showUserInfo(Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method
