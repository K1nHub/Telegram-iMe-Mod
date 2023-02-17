.class Lorg/telegram/ui/Components/ChatActivityEnterView$22;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$fragment:Lorg/telegram/ui/ChatActivity;

.field private visibleToast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/app/Activity;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 3108
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->val$fragment:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 3114
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10302(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 3115
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CrossOutDrawable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3116
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v0, Lorg/telegram/ui/Components/CrossOutDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->val$context:Landroid/app/Activity;

    sget v3, Lorg/telegram/messenger/R$drawable;->input_notify_on:I

    const-string v4, "chat_messagePanelIcons"

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/Components/CrossOutDrawable;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10402(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/Components/CrossOutDrawable;)Lorg/telegram/ui/Components/CrossOutDrawable;

    .line 3118
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CrossOutDrawable;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/CrossOutDrawable;->setCrossOut(ZZ)V

    .line 3119
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/CrossOutDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3120
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "silent_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v2

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3121
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->val$fragment:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getTopicId()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v2, v3, v0}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JI)V

    .line 3123
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->visibleToast:Landroid/widget/Toast;

    if-eqz p1, :cond_2

    .line 3124
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3127
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3129
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->val$fragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x36

    goto :goto_2

    :cond_3
    const/16 v0, 0x37

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v0, v4}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    .line 3130
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lorg/telegram/messenger/R$string;->AccDescrChanSilentOn:I

    const-string v2, "AccDescrChanSilentOn"

    goto :goto_3

    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrChanSilentOff:I

    const-string v2, "AccDescrChanSilentOff"

    :goto_3
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3131
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldHint(Z)V

    return-void
.end method
