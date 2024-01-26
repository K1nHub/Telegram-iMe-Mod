.class Lorg/telegram/ui/ChatActivity$65;
.super Lorg/telegram/ui/Components/MessagePreviewView;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->openForwardingPreview(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$needTemplatePreview:Z


# direct methods
.method public static synthetic $r8$lambda$LHVpfkJrIreuP4xM93M0BSx_gbc(Lorg/telegram/ui/ChatActivity$65;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$65;->lambda$onDismiss$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$VTKxqhnViE-wO4g545kHVAGxoE0(Lorg/telegram/ui/ChatActivity$65;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$65;->lambda$onFullDismiss$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$WvLTe4dQbKcm-A5gCEpVoCmXcio(Lorg/telegram/ui/ChatActivity$65;Lorg/telegram/messenger/MessagePreviewParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$65;->lambda$didOpenEditorPressed$1(Lorg/telegram/messenger/MessagePreviewParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bo3qYccwR4WExR3JaRkn1RrLTXc(Lorg/telegram/ui/ChatActivity$65;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$65;->lambda$didRenamePressed$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;IZZ)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    .line 10567
    iput-object v0, v10, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    move/from16 v0, p11

    iput-boolean v0, v10, Lorg/telegram/ui/ChatActivity$65;->val$needTemplatePreview:Z

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/MessagePreviewView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;IZ)V

    return-void
.end method

.method private synthetic lambda$didOpenEditorPressed$1(Lorg/telegram/messenger/MessagePreviewParams;)V
    .locals 2

    .line 10615
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p1, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 10616
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->access$30500(Lorg/telegram/ui/ChatActivity;IZ)V

    return-void
.end method

.method private synthetic lambda$didRenamePressed$0(Ljava/lang/String;)V
    .locals 3

    .line 10584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10585
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$29500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 10586
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10588
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/iMe/fork/controller/TemplatesController;->renameTemplate(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onDismiss$3()V
    .locals 1

    .line 10719
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 10720
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFullDismiss$2()V
    .locals 2

    .line 10674
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 10675
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->freezeEmojiView(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected didDeletePressed()V
    .locals 22

    move-object/from16 v0, p0

    .line 10594
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 10597
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$29500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez v2, :cond_1

    .line 10598
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$29500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$29500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v5, v5, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    .line 10599
    iget-object v5, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 10600
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v15, v2

    move-object v13, v3

    goto :goto_1

    .line 10603
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$29500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 10604
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v13, v2

    move-object v15, v3

    .line 10606
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/fork/controller/TemplatesController;->getTemplatesChannelId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v2, 0x2

    new-array v14, v2, [Landroid/util/SparseArray;

    aput-object v1, v14, v4

    const/4 v1, 0x1

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    aput-object v2, v14, v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object/from16 v21, v1

    invoke-static/range {v6 .. v21}, Lorg/telegram/ui/Components/AlertsCreator;->createDeleteMessagesAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$ChatFull;JLorg/telegram/messenger/MessageObject;[Landroid/util/SparseArray;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZILjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method protected didEditPressed()V
    .locals 4

    .line 10575
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideBotCommands()V

    .line 10576
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29400(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/iMe/fork/controller/TemplatesController;->getInstance(I)Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/TemplatesController;->getTemplatesChannelId()J

    move-result-wide v0

    neg-long v0, v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$29500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->template:Lcom/iMe/storage/domain/model/templates/TemplateModel;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getMessageId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->newInstanceForDialogId(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    const/4 v1, 0x1

    .line 10577
    iput-boolean v1, v0, Lorg/telegram/ui/ChatActivity;->needEditHighlightMessage:Z

    .line 10578
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method protected didOpenEditorPressed()V
    .locals 5

    .line 10611
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    if-nez v1, :cond_0

    return-void

    .line 10614
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    new-instance v4, Lorg/telegram/ui/ChatActivity$65$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatActivity$65$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$65;)V

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/ui/ChatActivity;->newInstanceInForwardingEditor(JLorg/telegram/messenger/MessagePreviewParams;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 v0, 0x0

    .line 10618
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return-void
.end method

.method protected didRenamePressed()V
    .locals 4

    .line 10583
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->template:Lcom/iMe/storage/domain/model/templates/TemplateModel;

    new-instance v2, Lorg/telegram/ui/ChatActivity$65$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$65$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$65;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createInputTemplateNameDialog(Lorg/telegram/ui/ChatActivity;Lcom/iMe/storage/domain/model/templates/TemplateModel;Ljava/lang/Runnable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method protected didSendPressed()V
    .locals 9

    .line 10769
    invoke-super {p0}, Lorg/telegram/ui/Components/MessagePreviewView;->didSendPressed()V

    .line 10771
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 10775
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 10777
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$65;->val$needTemplatePreview:Z

    if-eqz v0, :cond_1

    .line 10778
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideBotCommands()V

    .line 10779
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$29500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/ChatActivity;->access$30400(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;ZZZILorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/messenger/MessageObject;)V

    .line 10780
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$29500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/TemplatesController;->incrementUsageRating(Ljava/util/List;)V

    goto :goto_0

    .line 10782
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    :goto_0
    return-void
.end method

.method protected onDismiss(Z)V
    .locals 4

    .line 10690
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v2, 0x1

    .line 10691
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$29800(Lorg/telegram/ui/ChatActivity;Z)V

    .line 10692
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 10693
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10694
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$10502(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ReplyQuote;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 10696
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-nez v2, :cond_1

    .line 10697
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$10502(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ReplyQuote;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 10699
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10700
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iput-boolean v3, v0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->outdated:Z

    .line 10701
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iput v2, v0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    .line 10702
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    iput v2, v0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    .line 10703
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->access$29900(Lorg/telegram/ui/ChatActivity$ReplyQuote;)Z

    .line 10704
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$30000(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 10705
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForReplyQuote(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity$ReplyQuote;)V

    goto :goto_0

    .line 10708
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10709
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v1, :cond_3

    .line 10710
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagePreviewParams$Messages;->getSelectedMessages(Ljava/util/ArrayList;)V

    .line 10712
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->fallbackFieldPanel()V

    .line 10715
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$10702(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 10717
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$30100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 10718
    new-instance p1, Lorg/telegram/ui/ChatActivity$65$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$65$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$65;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 10723
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/ChatActivity;->access$30102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 10726
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$30200(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method protected onFullDismiss(Z)V
    .locals 2

    .line 10664
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10665
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagePreviewParams;->attach(Lorg/telegram/ui/Components/MessagePreviewView;)V

    .line 10668
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10669
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagePreviewParams;->attach(Lorg/telegram/ui/Components/MessagePreviewView;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 10673
    new-instance p1, Lorg/telegram/ui/ChatActivity$65$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$65$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatActivity$65;)V

    const-wide/16 v0, 0xf

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method protected onQuoteSelectedPart()V
    .locals 2

    .line 10683
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 10684
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$10502(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ReplyQuote;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    :cond_1
    return-void
.end method

.method protected removeForward()V
    .locals 4

    .line 10656
    invoke-super {p0}, Lorg/telegram/ui/Components/MessagePreviewView;->removeForward()V

    const/4 v0, 0x1

    .line 10657
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 10658
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/messenger/MessagePreviewParams;->updateForward(Ljava/util/ArrayList;J)V

    .line 10659
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->fallbackFieldPanel()V

    return-void
.end method

.method protected removeLink()V
    .locals 9

    const/4 v0, 0x1

    .line 10627
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 10628
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 10629
    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 10630
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setWebPage(Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 10632
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    if-eqz v2, :cond_2

    .line 10633
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29600(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$29700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-ne v0, v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    :goto_0
    move-object v6, v1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MessagePreviewParams;->updateLink(ILorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject;)V

    .line 10635
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->fallbackFieldPanel()V

    return-void
.end method

.method protected removeQuote()V
    .locals 2

    const/4 v0, 0x1

    .line 10640
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 10641
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$10502(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ReplyQuote;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 10642
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForReply(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method protected removeReply()V
    .locals 7

    const/4 v0, 0x1

    .line 10647
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 10648
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$4602(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    .line 10649
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$10502(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ReplyQuote;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 10650
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagePreviewParams;->updateReply(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;JLorg/telegram/ui/ChatActivity$ReplyQuote;)V

    .line 10651
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->fallbackFieldPanel()V

    return-void
.end method

.method protected selectAnotherChat(Z)V
    .locals 9

    const/4 v0, 0x0

    .line 10731
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 10732
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 10734
    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$30302(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 10738
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v1, :cond_4

    .line 10739
    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_5

    .line 10740
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v6, v6, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v6, v6, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 10741
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3

    .line 10743
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isPublicPoll()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_1

    .line 10745
    :cond_2
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isInvoice()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v2

    .line 10748
    :cond_3
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v7

    aget-object v7, v7, v0

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v4, v0

    move v5, v4

    .line 10751
    :cond_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "onlySelect"

    .line 10752
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v3, 0x3

    const-string v6, "dialogsType"

    .line 10753
    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    xor-int/lit8 v3, p1, 0x1

    const-string v6, "quote"

    .line 10754
    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p1, :cond_6

    .line 10755
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v3, p1, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v3, :cond_6

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-nez p1, :cond_6

    move p1, v2

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_2
    const-string v3, "reply_to"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "hasPoll"

    .line 10756
    invoke-virtual {v1, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "hasInvoice"

    .line 10757
    invoke-virtual {v1, p1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10758
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    const-string p1, "messagesCount"

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10759
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->isAuthorHiddenForce:Z

    const-string v0, "force_hide_forward_author"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "canSelectTopics"

    .line 10760
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10761
    new-instance p1, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p1, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 10762
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 10763
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_8
    return-void
.end method
