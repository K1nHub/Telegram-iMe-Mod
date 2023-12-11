.class Lorg/telegram/ui/ChatActivity$29;
.super Lorg/telegram/ui/Components/MentionsContainerView;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field private wasAtTop:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;JILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 7883
    iput-object v0, v8, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/MentionsContainerView;-><init>(Landroid/content/Context;JILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x1

    .line 7934
    iput-boolean v0, v8, Lorg/telegram/ui/ChatActivity$29;->wasAtTop:Z

    return-void
.end method


# virtual methods
.method protected canOpen()Z
    .locals 2

    .line 7887
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$24700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onClose()V
    .locals 1

    .line 7910
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$24900(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method protected onContextClick(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V
    .locals 11

    .line 7923
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez v0, :cond_0

    goto :goto_2

    .line 7926
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v1, "web_player_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7930
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/ChatActivity;->access$25100(Lorg/telegram/ui/ChatActivity;ILjava/lang/String;Landroid/text/style/CharacterStyle;Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    goto :goto_2

    .line 7927
    :cond_2
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getInlineResultWidthAndHeight(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)[I

    move-result-object v0

    .line 7928
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$25000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v4, ""

    :goto_1
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    const/4 p1, 0x0

    aget v8, v0, p1

    const/4 p1, 0x1

    aget v9, v0, p1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v10

    move-object v6, v7

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onContextSearch(Z)V
    .locals 2

    .line 7915
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 7916
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setCaption(Ljava/lang/String;)V

    .line 7917
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showContextProgress(Z)V

    :cond_0
    return-void
.end method

.method protected onOpen()V
    .locals 5

    .line 7892
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7893
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7894
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "secretbot"

    .line 7895
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7896
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 7897
    sget v3, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v4, "AppName"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7898
    sget v3, Lorg/telegram/messenger/R$string;->SecretChatContextBotAlert:I

    const-string v4, "SecretChatContextBotAlert"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7899
    sget v3, Lorg/telegram/messenger/R$string;->OK:I

    const-string v4, "OK"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7900
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 7901
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7905
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$24900(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method protected onScrolled(ZZ)V
    .locals 2

    .line 7937
    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$29;->wasAtTop:Z

    if-eq p2, p1, :cond_0

    .line 7938
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZZ)V

    .line 7939
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$29;->wasAtTop:Z

    :cond_0
    return-void
.end method
