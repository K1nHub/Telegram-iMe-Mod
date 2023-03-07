.class public interface abstract Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;
.super Ljava/lang/Object;
.source "WalletReceiveBinancePayView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract openChatScreen(J)V
.end method

.method public abstract showCreatedCollectionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showSelectTokenDialog(Lcom/smedialink/model/wallet/select/SelectableType;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZLorg/fork/utils/Callbacks$Callback1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/select/SelectableType;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Z",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSelectedToken()V
.end method

.method public abstract updateSelectedUser()V
.end method
