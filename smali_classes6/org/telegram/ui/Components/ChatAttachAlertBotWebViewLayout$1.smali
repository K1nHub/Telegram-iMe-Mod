.class Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChatAttachAlertBotWebViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 136
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/Components/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->onBackPressed()Z

    move-result p1

    if-nez p1, :cond_6

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->onCheckDismissByUser()Z

    goto/16 :goto_0

    .line 139
    :cond_0
    sget v0, Lorg/telegram/messenger/R$id;->menu_open_bot:I

    if-ne p1, v0, :cond_1

    .line 140
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$100(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)J

    move-result-wide v0

    const-string v2, "user_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 143
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto/16 :goto_0

    .line 144
    :cond_1
    sget v0, Lorg/telegram/messenger/R$id;->menu_reload_page:I

    if-ne p1, v0, :cond_3

    .line 145
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/Components/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 146
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/Components/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 147
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/Components/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 150
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->setLoadProgress(F)V

    .line 151
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 152
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/Components/BotWebViewContainer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$100(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 155
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/Components/BotWebViewContainer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$100(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$400(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/BotWebViewContainer;->loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    .line 156
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/Components/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->reload()V

    goto :goto_0

    .line 157
    :cond_3
    sget v0, Lorg/telegram/messenger/R$id;->menu_delete_bot:I

    if-ne p1, v0, :cond_5

    .line 158
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 159
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$100(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    .line 160
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    iget-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$100(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onLongClickBotButton(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 164
    :cond_5
    sget v0, Lorg/telegram/messenger/R$id;->menu_settings:I

    if-ne p1, v0, :cond_6

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/Components/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->onSettingsButtonPressed()V

    :cond_6
    :goto_0
    return-void
.end method
