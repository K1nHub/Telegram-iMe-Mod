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
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$2;->val$onAuthSuccessAction:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideLoadingDialog()V
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->hideLoadingDialog()V

    return-void
.end method

.method public onAuthSuccess()V
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->val$onAuthSuccessAction:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-interface {v0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method public showLoadingDialog(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/LaunchActivity;->showLoadingDialog(ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0

    .line 489
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    return-void
.end method
