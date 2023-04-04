.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;
.super Ljava/util/TimerTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createCodeTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;


# direct methods
.method public static synthetic $r8$lambda$jXbRBzH5tAuDep0bocMFAPyMtjQ(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 4507
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 5

    .line 4511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    .line 4512
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D

    move-result-wide v2

    sub-double v2, v0, v2

    .line 4513
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v4, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10302(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)D

    .line 4514
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10426(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)I

    .line 4515
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_1

    .line 4516
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)V

    .line 4517
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4518
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4519
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4521
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 4510
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
