.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;
.super Ljava/util/TimerTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;


# direct methods
.method public static synthetic $r8$lambda$F2HR8lfyztk_na1Yp8zsC3ajbO0(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 4721
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 9

    .line 4728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    .line 4729
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D

    move-result-wide v2

    sub-double v2, v0, v2

    .line 4730
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v4, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11102(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)D

    .line 4731
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11226(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)I

    .line 4732
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/16 v4, 0x3e8

    const/4 v5, 0x2

    if-lt v0, v4, :cond_3

    .line 4733
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    div-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x3c

    .line 4734
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v6

    div-int/2addr v6, v4

    mul-int/lit8 v4, v0, 0x3c

    sub-int/2addr v6, v4

    .line 4735
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v4, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 4737
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 4738
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->SmsAvailableIn:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    const-string v0, "SmsAvailableIn"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4736
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->CallAvailableIn:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    const-string v0, "CallAvailableIn"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4740
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;

    goto/16 :goto_4

    .line 4744
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 4745
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 4746
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 4747
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->RequestCallButton:I

    const-string v2, "RequestCallButton"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 4748
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-ne v0, v3, :cond_6

    goto :goto_2

    .line 4751
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->RequestSmsButton:I

    const-string v2, "RequestSmsButton"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 4749
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->RequestMissedCall:I

    const-string v2, "RequestMissedCall"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4753
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4754
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$10700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$id;->color_key_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 4724
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$11000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4727
    :cond_0
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
