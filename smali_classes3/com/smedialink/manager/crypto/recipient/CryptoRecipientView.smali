.class public interface abstract Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;
.super Ljava/lang/Object;
.source "CryptoRecipientView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract openChatScreen(J)V
.end method

.method public abstract showErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showRequestPermissionDialog(Ljava/lang/String;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showRequestPermissionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V
.end method
