.class public interface abstract Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;
.super Ljava/lang/Object;
.source "WalletCreateManagerView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/manager/wallet/create/WalletCreateManagerView$DefaultImpls;
    }
.end annotation

.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openCreateWalletScreen(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract openImportWalletScreen(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showActivationConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showAlreadyCreatedWalletWarningDialog(Lcom/smedialink/model/dialog/DialogModel;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showAnimatedDialog(Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;Lorg/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end method
