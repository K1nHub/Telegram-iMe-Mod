.class public interface abstract Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;
.super Ljava/lang/Object;
.source "FragmentUsernamesView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/ui/base/mvp/SwipeRefreshView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
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

.method public abstract showActionError(Ljava/lang/String;)V
.end method

.method public abstract showActionSuccess()V
.end method

.method public abstract showChooseSortingTypeDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
.end method

.method public abstract showProductDetailsDialog(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;)V
.end method
