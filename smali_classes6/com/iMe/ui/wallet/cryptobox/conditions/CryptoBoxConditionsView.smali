.class public interface abstract Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;
.super Ljava/lang/Object;
.source "CryptoBoxConditionsView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/manager/wallet/create/WalletCreateManagerView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract copyNameToClipboard(Ljava/lang/String;)V
.end method

.method public abstract openAddressScan(Ljava/lang/String;)V
.end method

.method public abstract renderButton(Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract renderScreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network$Explorer;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showParticipationSuccess()V
.end method

.method public abstract startActivationFlow()V
.end method
