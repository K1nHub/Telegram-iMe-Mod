.class Lorg/telegram/ui/ChatActivity$71;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->openPinnedMessagesList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$56v-mCfvymCHHfbzifisO9FLtTE(Lorg/telegram/ui/ChatActivity$71;ZLcom/iMe/fork/controller/MultiPanelController;ZLjava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/ChatActivity$71;->lambda$onUnpin$0(ZLcom/iMe/fork/controller/MultiPanelController;ZLjava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ymbvLdY2kTF7j1RcvsGYLUnRzhA(Lorg/telegram/ui/ChatActivity$71;ZLjava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$71;->lambda$onUnpin$1(ZLjava/util/ArrayList;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 11401
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onUnpin$0(ZLcom/iMe/fork/controller/MultiPanelController;ZLjava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 11472
    invoke-virtual {p2, p3}, Lcom/iMe/fork/controller/MultiPanelController;->setMultiPanelEnabled(Z)V

    .line 11473
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/fork/enums/DialogType;

    move-result-object p1

    sget-object p3, Lcom/iMe/fork/enums/MultiPanelButton;->PINS:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {p2, p1, p3, v2}, Lcom/iMe/fork/controller/MultiPanelController;->setButtonEnabled(Lcom/iMe/fork/enums/DialogType;Lcom/iMe/fork/enums/MultiPanelButton;Z)V

    .line 11474
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$31500(Lorg/telegram/ui/ChatActivity;)V

    .line 11476
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$32200(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 11477
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pin_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 11478
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_0

    .line 11480
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didLoadPinnedMessages:I

    const/16 p3, 0x8

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p3, v2

    aput-object p4, p3, v1

    const/4 p4, 0x2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, p3, p4

    const/4 p4, 0x3

    aput-object p5, p3, p4

    const/4 p4, 0x4

    aput-object v0, p3, p4

    const/4 p4, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, p4

    const/4 p4, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, p4

    const/4 p4, 0x7

    iget-object p5, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p5}, Lorg/telegram/ui/ChatActivity;->access$32300(Lorg/telegram/ui/ChatActivity;)Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    aput-object p5, p3, p4

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 11482
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$31800(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    if-ne p7, p1, :cond_1

    .line 11483
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$31602(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    return-void
.end method

.method private synthetic lambda$onUnpin$1(ZLjava/util/ArrayList;I)V
    .locals 8

    if-nez p1, :cond_1

    .line 11488
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 11489
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 11490
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->pinMessage(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;IZZZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 11493
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/MessagesController;->unpinAllMessages(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 11496
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$31800(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    if-ne p3, p1, :cond_2

    .line 11497
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$31602(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic onForwardingMessagesChanged(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$onForwardingMessagesChanged(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic onReport()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$onReport(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;)V

    return-void
.end method

.method public onUnpin(ZZZLorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Lorg/telegram/ui/ChatActivity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object/from16 v11, p5

    const/4 v0, 0x1

    const/4 v12, 0x0

    .line 11460
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_6

    .line 11432
    iget-object v2, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v3

    .line 11433
    invoke-virtual {v3}, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result v4

    .line 11435
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11436
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual/range {p6 .. p6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v10, :cond_3

    .line 11438
    iget-object v1, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 11440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pin_"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11441
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->getDialogType()Lcom/iMe/fork/enums/DialogType;

    move-result-object v8

    sget-object v13, Lcom/iMe/fork/enums/MultiPanelButton;->PINS:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {v3, v8, v13}, Lcom/iMe/fork/controller/MultiPanelController;->isButtonEnabled(Lcom/iMe/fork/enums/DialogType;Lcom/iMe/fork/enums/MultiPanelButton;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 11448
    :cond_0
    invoke-virtual {v3, v0}, Lcom/iMe/fork/controller/MultiPanelController;->setMultiPanelEnabled(Z)V

    .line 11449
    iget-object v2, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/fork/enums/DialogType;

    move-result-object v2

    invoke-virtual {v3, v2, v13, v0}, Lcom/iMe/fork/controller/MultiPanelController;->setButtonEnabled(Lcom/iMe/fork/enums/DialogType;Lcom/iMe/fork/enums/MultiPanelButton;Z)V

    .line 11450
    invoke-virtual {v3}, Lcom/iMe/fork/controller/MultiPanelController;->saveConfig()V

    .line 11451
    iget-object v2, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$31500(Lorg/telegram/ui/ChatActivity;)V

    .line 11453
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11454
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 11456
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 11458
    :goto_0
    iget-object v1, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_2

    .line 11442
    :cond_2
    :goto_1
    iget-object v4, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/fork/enums/DialogType;

    move-result-object v4

    sget-object v5, Lcom/iMe/fork/enums/MultiPanelButton;->PINS:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {v3, v4, v5, v12}, Lcom/iMe/fork/controller/MultiPanelController;->setButtonEnabled(Lcom/iMe/fork/enums/DialogType;Lcom/iMe/fork/enums/MultiPanelButton;Z)V

    .line 11443
    iget-object v3, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$31500(Lorg/telegram/ui/ChatActivity;)V

    .line 11444
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 11445
    iget-object v1, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;Z)V

    return-void

    .line 11460
    :cond_3
    iget-object v2, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v7, Lorg/telegram/messenger/NotificationCenter;->didLoadPinnedMessages:I

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v13, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v8, v12

    aput-object v5, v8, v0

    const/4 v13, 0x2

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v14, v8, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput-object v14, v8, v13

    const/4 v13, 0x4

    aput-object v14, v8, v13

    const/4 v13, 0x5

    aput-object v1, v8, v13

    const/4 v13, 0x6

    aput-object v1, v8, v13

    const/4 v1, 0x7

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v13, v8, v1

    invoke-virtual {v2, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 11462
    :goto_2
    iget-object v1, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$31600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11463
    iget-object v1, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$31600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    .line 11465
    :cond_4
    iget-object v1, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$31702(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 11466
    iget-object v0, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31804(Lorg/telegram/ui/ChatActivity;)I

    move-result v13

    .line 11467
    iget-object v0, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31900(Lorg/telegram/ui/ChatActivity;)I

    move-result v14

    .line 11468
    iget-object v15, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_5

    move-object/from16 v16, p4

    goto :goto_3

    :cond_5
    move-object/from16 v16, v15

    :goto_3
    new-instance v17, Lorg/telegram/ui/ChatActivity$71$$ExternalSyntheticLambda0;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v7, v14

    move v8, v13

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ChatActivity$71$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$71;ZLcom/iMe/fork/controller/MultiPanelController;ZLjava/util/ArrayList;Ljava/util/ArrayList;II)V

    new-instance v4, Lorg/telegram/ui/ChatActivity$71$$ExternalSyntheticLambda1;

    invoke-direct {v4, v9, v10, v11, v13}, Lorg/telegram/ui/ChatActivity$71$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$71;ZLjava/util/ArrayList;I)V

    iget-object v0, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object/from16 v0, v16

    move v1, v14

    move-object/from16 v3, v17

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/BulletinFactory;->createUnpinAllMessagesBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-static {v15, v0}, Lorg/telegram/ui/ChatActivity;->access$31602(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin;

    if-eqz p3, :cond_a

    .line 11501
    iget-object v0, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 11502
    iget-object v0, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v12}, Lorg/telegram/ui/ChatActivity;->access$31702(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 11503
    iget-object v0, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_6

    .line 11507
    :cond_6
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_7
    iget-object v1, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$32000(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p6

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_9

    .line 11509
    iget-object v1, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$13500(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v1

    aget-object v1, v1, v12

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_8

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    :cond_8
    iget-object v0, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$32000(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 11511
    :cond_9
    iget-object v0, v9, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$32100(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    :cond_a
    :goto_6
    return-void
.end method

.method public openReplyMessage(I)V
    .locals 7

    .line 11420
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZI)V

    return-void
.end method

.method public openSearch(Ljava/lang/String;)V
    .locals 1

    .line 11425
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    return-void
.end method

.method public setFieldText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 11409
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 11410
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
