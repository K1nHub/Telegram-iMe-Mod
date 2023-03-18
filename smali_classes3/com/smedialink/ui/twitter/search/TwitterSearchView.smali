.class public interface abstract Lcom/smedialink/ui/twitter/search/TwitterSearchView;
.super Ljava/lang/Object;
.source "TwitterSearchView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/ui/base/mvp/LoadMoreView;
.implements Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/ui/base/mvp/base/BaseView;",
        "Lcom/smedialink/ui/base/mvp/LoadMoreView<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;",
        "Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;"
    }
.end annotation

.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract onUserSelected(Lcom/smedialink/model/twitter/TwitterUserItem;Ljava/lang/String;)V
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

.method public abstract showInviteConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;J)V
.end method
