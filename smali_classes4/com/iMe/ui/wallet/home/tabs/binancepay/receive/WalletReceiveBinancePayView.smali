.class public interface abstract Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;
.super Ljava/lang/Object;
.source "WalletReceiveBinancePayView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract openChatScreen(J)V
.end method

.method public abstract showCreatedCollectionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showSelectTokenDialog(Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/select/SelectTokenScreenType;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Lcom/iMe/storage/domain/model/wallet/token/FiatValue;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSelectedToken()V
.end method

.method public abstract updateSelectedUser()V
.end method
