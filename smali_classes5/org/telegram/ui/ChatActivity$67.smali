.class Lorg/telegram/ui/ChatActivity$67;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->openPinnedMessagesList(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$-NVyaOCoWrHbaHTjm0HanKZPU0w(Lorg/telegram/ui/ChatActivity$67;ZLcom/iMe/fork/controller/MultiPanelController;ZZLjava/util/ArrayList;Ljava/util/ArrayList;III)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/ChatActivity$67;->lambda$onUnpin$0(ZLcom/iMe/fork/controller/MultiPanelController;ZZLjava/util/ArrayList;Ljava/util/ArrayList;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$rNkhgPzZTTZf40I_7R7q4qZitIE(Lorg/telegram/ui/ChatActivity$67;ZZLjava/util/ArrayList;ZLjava/util/ArrayList;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChatActivity$67;->lambda$onUnpin$1(ZZLjava/util/ArrayList;ZLjava/util/ArrayList;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 11114
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onUnpin$0(ZLcom/iMe/fork/controller/MultiPanelController;ZZLjava/util/ArrayList;Ljava/util/ArrayList;III)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 11166
    invoke-virtual {p2, p3}, Lcom/iMe/fork/controller/MultiPanelController;->setMultiPanelEnabled(Z)V

    .line 11167
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$22900(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/fork/enums/DialogType;

    move-result-object p1

    sget-object p3, Lcom/iMe/fork/enums/MultiPanelButton;->PINS:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {p2, p1, p3, v2}, Lcom/iMe/fork/controller/MultiPanelController;->setButtonEnabled(Lcom/iMe/fork/enums/DialogType;Lcom/iMe/fork/enums/MultiPanelButton;Z)V

    .line 11168
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$32000(Lorg/telegram/ui/ChatActivity;)V

    .line 11170
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$32700(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 11171
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pin_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 11172
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->access$8700(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_2

    .line 11174
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    if-eqz p4, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didLoadBookmarkMessages:I

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didLoadPinnedMessages:I

    :goto_0
    const/16 p3, 0x8

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p3, v2

    aput-object p5, p3, v1

    const/4 p5, 0x2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, p3, p5

    const/4 p5, 0x3

    aput-object p6, p3, p5

    const/4 p5, 0x4

    aput-object v0, p3, p5

    const/4 p5, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p3, p5

    const/4 p5, 0x6

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    move p7, p8

    :goto_1
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, p5

    const/4 p4, 0x7

    iget-object p5, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p5}, Lorg/telegram/ui/ChatActivity;->access$12100(Lorg/telegram/ui/ChatActivity;)Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    aput-object p5, p3, p4

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 11176
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$32300(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    if-ne p9, p1, :cond_3

    .line 11177
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$32102(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin;

    :cond_3
    return-void
.end method

.method private synthetic lambda$onUnpin$1(ZZLjava/util/ArrayList;ZLjava/util/ArrayList;I)V
    .locals 7

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 11184
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBookmarksController()Lcom/iMe/fork/controller/BookmarksController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide p4

    invoke-virtual {p1, p4, p5, p3}, Lcom/iMe/fork/controller/BookmarksController;->unbookmarkMessages(JLjava/util/ArrayList;)V

    goto :goto_1

    .line 11186
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBookmarksController()Lcom/iMe/fork/controller/BookmarksController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/iMe/fork/controller/BookmarksController;->unbookmarkAllMessages(J)V

    goto :goto_1

    :cond_1
    if-nez p4, :cond_3

    .line 11190
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean p2, p1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    .line 11191
    :goto_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 11192
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController;->pinMessage(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;IZZZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 11195
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/messenger/MessagesController;->unpinAllMessages(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 11198
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$32300(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    if-ne p6, p1, :cond_4

    .line 11199
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$32102(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    return-void
.end method


# virtual methods
.method public synthetic onCompleteForwardingEditing(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$onCompleteForwardingEditing(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic onReport()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$onReport(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;)V

    return-void
.end method

.method public onUnpin(ZZZZLorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ",
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

    move-object/from16 v11, p0

    move-object/from16 v12, p6

    const/4 v0, 0x1

    const/4 v13, 0x0

    if-eqz p1, :cond_7

    .line 11129
    iget-object v1, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v3

    .line 11130
    iget-object v1, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$11900(Lorg/telegram/ui/ChatActivity;)I

    move-result v8

    .line 11131
    invoke-virtual {v3}, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result v4

    .line 11133
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11134
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual/range {p7 .. p7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_1

    .line 11136
    iget-object v1, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$31900(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 11138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pin_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11139
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 11140
    iget-object v4, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$22900(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/fork/enums/DialogType;

    move-result-object v4

    sget-object v5, Lcom/iMe/fork/enums/MultiPanelButton;->PINS:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {v3, v4, v5, v13}, Lcom/iMe/fork/controller/MultiPanelController;->setButtonEnabled(Lcom/iMe/fork/enums/DialogType;Lcom/iMe/fork/enums/MultiPanelButton;Z)V

    .line 11141
    iget-object v3, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$32000(Lorg/telegram/ui/ChatActivity;)V

    .line 11142
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 11143
    iget-object v1, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$8700(Lorg/telegram/ui/ChatActivity;Z)V

    return-void

    .line 11146
    :cond_0
    invoke-virtual {v3, v0}, Lcom/iMe/fork/controller/MultiPanelController;->setMultiPanelEnabled(Z)V

    .line 11147
    iget-object v2, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$22900(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/fork/enums/DialogType;

    move-result-object v2

    sget-object v6, Lcom/iMe/fork/enums/MultiPanelButton;->PINS:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {v3, v2, v6, v0}, Lcom/iMe/fork/controller/MultiPanelController;->setButtonEnabled(Lcom/iMe/fork/enums/DialogType;Lcom/iMe/fork/enums/MultiPanelButton;Z)V

    .line 11148
    invoke-virtual {v3}, Lcom/iMe/fork/controller/MultiPanelController;->saveConfig()V

    .line 11149
    iget-object v2, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$32000(Lorg/telegram/ui/ChatActivity;)V

    .line 11151
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 11152
    iget-object v1, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$8700(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_2

    .line 11154
    :cond_1
    iget-object v1, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    if-eqz p4, :cond_2

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didLoadBookmarkMessages:I

    goto :goto_0

    :cond_2
    sget v2, Lorg/telegram/messenger/NotificationCenter;->didLoadPinnedMessages:I

    :goto_0
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v13

    aput-object v14, v5, v0

    const/4 v6, 0x2

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v9, v5, v6

    const/4 v6, 0x3

    const/4 v9, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x4

    aput-object v9, v5, v6

    const/4 v6, 0x5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x6

    if-eqz p4, :cond_3

    iget-object v9, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$11900(Lorg/telegram/ui/ChatActivity;)I

    move-result v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_1

    :cond_3
    move v9, v13

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x7

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v9, v5, v6

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 11156
    :goto_2
    iget-object v1, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$32100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11157
    iget-object v1, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$32100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    .line 11159
    :cond_4
    iget-object v1, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$32202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 11160
    iget-object v0, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$32304(Lorg/telegram/ui/ChatActivity;)I

    move-result v15

    .line 11161
    iget-object v0, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$32400(Lorg/telegram/ui/ChatActivity;)I

    move-result v9

    .line 11162
    iget-object v10, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_5

    move-object/from16 v16, p5

    goto :goto_3

    :cond_5
    move-object/from16 v16, v10

    :goto_3
    if-eqz p4, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    move/from16 v17, v0

    goto :goto_4

    :cond_6
    move/from16 v17, v9

    :goto_4
    new-instance v18, Lorg/telegram/ui/ChatActivity$67$$ExternalSyntheticLambda0;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v5, p4

    move-object v6, v14

    move-object v13, v10

    move v10, v15

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/ChatActivity$67$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$67;ZLcom/iMe/fork/controller/MultiPanelController;ZZLjava/util/ArrayList;Ljava/util/ArrayList;III)V

    new-instance v19, Lorg/telegram/ui/ChatActivity$67$$ExternalSyntheticLambda1;

    move-object/from16 v0, v19

    move/from16 v2, p4

    move/from16 v3, p3

    move-object v4, v14

    move/from16 v5, p2

    move-object/from16 v6, p6

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChatActivity$67$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$67;ZZLjava/util/ArrayList;ZLjava/util/ArrayList;I)V

    iget-object v0, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, p2

    move-object/from16 v20, v0

    invoke-static/range {v15 .. v20}, Lorg/telegram/ui/Components/BulletinFactory;->createUnpinAllMessagesBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-static {v13, v0}, Lorg/telegram/ui/ChatActivity;->access$32102(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin;

    if-eqz p3, :cond_b

    .line 11203
    iget-object v0, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$32100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 11204
    iget-object v0, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$32202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 11205
    iget-object v0, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$32100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_7

    :cond_7
    move v1, v13

    .line 11209
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_8

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_5

    :cond_8
    iget-object v1, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$32500(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p7

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_a

    .line 11211
    iget-object v1, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$14400(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v0, :cond_9

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6

    :cond_9
    iget-object v0, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$32500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    :goto_6
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 11213
    :cond_a
    iget-object v0, v11, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->access$32600(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)V

    :cond_b
    :goto_7
    return-void
.end method

.method public openReplyMessage(I)V
    .locals 7

    .line 11117
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

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

    .line 11122
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$14600(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    return-void
.end method
