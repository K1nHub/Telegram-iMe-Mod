.class public interface abstract Lcom/iMe/ui/profile/ProfileView;
.super Ljava/lang/Object;
.source "ProfileView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract onFilteredMembers(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract openTwitterAuthScreen(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract openTwitterScreen(JJLjava/lang/String;)V
.end method

.method public abstract showTwitterAccountActionsDialog()V
.end method

.method public abstract showTwitterBotConfirmationDialogIfNeeded(Lcom/iMe/model/dialog/DialogModel;)V
.end method

.method public abstract showTwitterLinkConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
.end method

.method public abstract showTwitterResetConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
.end method

.method public abstract showTwitterUnlinkedErrorDialog(Lcom/iMe/model/dialog/DialogModel;)V
.end method

.method public abstract showUserAccountLevel(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showVpnWarningDialog(Lcom/iMe/model/dialog/DialogModel;)V
.end method

.method public abstract updateTwitterItem()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method
