.class public interface abstract Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;
.super Ljava/lang/Object;
.source "FragmentPremiumView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openChooseContact(Landroid/os/Bundle;)V
.end method

.method public abstract renderBalance(Ljava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract renderButton(Ljava/lang/String;Z)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract renderItems(Ljava/util/List;)V
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

.method public abstract renderRecipient(Lorg/telegram/tgnet/TLRPC$User;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showActionError(Ljava/lang/String;)V
.end method

.method public abstract showActionSuccess()V
.end method

.method public abstract showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
.end method
