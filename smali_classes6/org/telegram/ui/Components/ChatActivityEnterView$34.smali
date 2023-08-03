.class Lorg/telegram/ui/Components/ChatActivityEnterView$34;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createBotCommandsMenuContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public static synthetic $r8$lambda$1s1Peq8NVg_VJ72BXCOhBQKo8H0(Lorg/telegram/ui/Components/ChatActivityEnterView$34;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->lambda$onItemClick$0(Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 4303
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    .line 4319
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v17, p4

    invoke-static/range {v3 .. v17}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 4320
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 4321
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/Components/BotCommandsMenuContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BotCommandsMenuContainer;->dismiss()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4307
    instance-of v2, v1, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;

    if-eqz v2, :cond_0

    .line 4308
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;->didPressOpenTemplates(Z)V

    goto/16 :goto_0

    .line 4309
    :cond_0
    instance-of v2, v1, Lcom/iMe/fork/ui/view/TemplateCell;

    if-eqz v2, :cond_1

    .line 4310
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    move-result-object v2

    check-cast v1, Lcom/iMe/fork/ui/view/TemplateCell;

    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/TemplateCell;->getTemplate()Lcom/iMe/storage/domain/model/templates/TemplateModel;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;->didPressSendMessage(Lcom/iMe/storage/domain/model/templates/TemplateModel;Z)V

    goto/16 :goto_0

    .line 4312
    :cond_1
    instance-of v2, v1, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;

    if-eqz v2, :cond_5

    .line 4313
    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->getCommand()Ljava/lang/String;

    move-result-object v3

    .line 4314
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 4317
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4318
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v4

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v5

    new-instance v7, Lorg/telegram/ui/Components/ChatActivityEnterView$34$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$34$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$34;Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 4322
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v9, 0x0

    .line 4318
    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_0

    .line 4324
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChatActivity;->checkSlowMode(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 4327
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v3 .. v17}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 4328
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 4329
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/Components/BotCommandsMenuContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BotCommandsMenuContainer;->dismiss()V

    :cond_5
    :goto_0
    return-void
.end method
