.class Lorg/telegram/ui/LaunchActivity$2;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->getAuthDelegate(Lcom/iMe/fork/utils/Callbacks$Callback;)Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field final synthetic val$onAuthSuccessAction:Lcom/iMe/fork/utils/Callbacks$Callback;


# direct methods
.method public static synthetic $r8$lambda$ZXt2bgOUtgBV4P56hYG_DwXiELk(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/LaunchActivity$2;->lambda$showLoadingDialog$0(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/content/DialogInterface;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$2;->val$onAuthSuccessAction:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$showLoadingDialog$0(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/content/DialogInterface;)V
    .locals 0

    .line 436
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method


# virtual methods
.method public hideLoadingDialog()V
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onAuthSuccess()V
    .locals 1

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->val$onAuthSuccessAction:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-interface {v0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method public showLoadingDialog(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 4

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->access$102(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 435
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LaunchActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/telegram/ui/LaunchActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 437
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0

    .line 449
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    return-void
.end method
