.class public interface abstract Lcom/iMe/feature/profile/ProfileView;
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

.method public abstract openSocialAuthScreen(Lcom/iMe/feature/socialMedias/SocialAuthDomain;)V
.end method

.method public abstract openSocialWeb(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
.end method

.method public abstract openTwitterScreen(JLcom/iMe/feature/socialMedias/SocialNetwork;)V
.end method

.method public abstract showBeforeConnectMessage(Lcom/iMe/feature/socialMedias/SocialNetwork;Lcom/iMe/model/dialog/DialogModel;)V
.end method

.method public abstract showLinkConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;J)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract showNeedAuthorizeDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract showResetConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract showUserAccountLevel(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract updateSocialCell()V
.end method
