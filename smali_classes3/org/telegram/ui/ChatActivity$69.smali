.class Lorg/telegram/ui/ChatActivity$69;
.super Lorg/telegram/ui/Components/ForwardingPreviewView;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->openForwardingPreview(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$keyboardVisible:Z

.field final synthetic val$needTemplatePreview:Z


# direct methods
.method public static synthetic $r8$lambda$1gA0DN5vkByDdwamhltaUfNQsyE(Lorg/telegram/ui/ChatActivity$69;Lorg/telegram/messenger/ForwardingMessagesParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$69;->lambda$didOpenEditorPressed$1(Lorg/telegram/messenger/ForwardingMessagesParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p9l6VORi--5ysokEMV9AF726eC8(Lorg/telegram/ui/ChatActivity$69;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$69;->lambda$onDismiss$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$tWxKhKtX20iIY9BwStj2yB9zse4(Lorg/telegram/ui/ChatActivity$69;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$69;->lambda$didRenamePressed$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/messenger/ForwardingMessagesParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;ZZ)V
    .locals 8

    move-object v7, p0

    move-object v0, p1

    .line 11959
    iput-object v0, v7, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    move/from16 v0, p8

    iput-boolean v0, v7, Lorg/telegram/ui/ChatActivity$69;->val$needTemplatePreview:Z

    move/from16 v0, p9

    iput-boolean v0, v7, Lorg/telegram/ui/ChatActivity$69;->val$keyboardVisible:Z

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ForwardingPreviewView;-><init>(Landroid/content/Context;Lorg/telegram/messenger/ForwardingMessagesParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;)V

    return-void
.end method

.method private synthetic lambda$didOpenEditorPressed$1(Lorg/telegram/messenger/ForwardingMessagesParams;)V
    .locals 1

    .line 12007
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$36002(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/ForwardingMessagesParams;)Lorg/telegram/messenger/ForwardingMessagesParams;

    .line 12008
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$41000(Lorg/telegram/ui/ChatActivity;Z)V

    return-void
.end method

.method private synthetic lambda$didRenamePressed$0(Ljava/lang/String;)V
    .locals 3

    .line 11976
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11977
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 11978
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11980
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTemplatesController()Lorg/fork/controller/TemplatesController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/fork/controller/TemplatesController;->renameTemplate(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onDismiss$2()V
    .locals 1

    .line 12030
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 12031
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected didDeletePressed()V
    .locals 21

    move-object/from16 v0, p0

    .line 11986
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 11989
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ForwardingMessagesParams;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez v2, :cond_1

    .line 11990
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ForwardingMessagesParams;->groupedMessagesMap:Landroid/util/LongSparseArray;

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/ForwardingMessagesParams;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    .line 11991
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

    .line 11992
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v15, v2

    move-object v13, v3

    goto :goto_1

    .line 11995
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ForwardingMessagesParams;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 11996
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v13, v2

    move-object v15, v3

    .line 11998
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTemplatesController()Lorg/fork/controller/TemplatesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fork/controller/TemplatesController;->getTemplatesChannelId()J

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

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object/from16 v20, v1

    invoke-static/range {v6 .. v20}, Lorg/telegram/ui/Components/AlertsCreator;->createDeleteMessagesAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$ChatFull;JLorg/telegram/messenger/MessageObject;[Landroid/util/SparseArray;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZILjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method protected didEditPressed()V
    .locals 4

    .line 11967
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideBotCommands()V

    .line 11968
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/fork/controller/TemplatesController;->getInstance(I)Lorg/fork/controller/TemplatesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/TemplatesController;->getTemplatesChannelId()J

    move-result-wide v0

    neg-long v0, v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ForwardingMessagesParams;->template:Lcom/smedialink/storage/domain/model/templates/TemplateModel;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->getMessageId()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ChatActivity;->newInstanceForDialogId(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    const/4 v1, 0x1

    .line 11969
    iput-boolean v1, v0, Lorg/telegram/ui/ChatActivity;->needEditHighlightMessage:Z

    .line 11970
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method protected didOpenEditorPressed()V
    .locals 5

    .line 12003
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$36000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 12006
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$36000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatActivity$69$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatActivity$69$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$69;)V

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/ui/ChatActivity;->newInstanceInForwardingEditor(JLorg/telegram/messenger/ForwardingMessagesParams;Lorg/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 v0, 0x0

    .line 12010
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V

    return-void
.end method

.method protected didRenamePressed()V
    .locals 4

    .line 11975
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->template:Lcom/smedialink/storage/domain/model/templates/TemplateModel;

    new-instance v2, Lorg/telegram/ui/ChatActivity$69$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$69$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$69;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createInputTemplateNameDialog(Lorg/telegram/ui/ChatActivity;Lcom/smedialink/storage/domain/model/templates/TemplateModel;Ljava/lang/Runnable;Lorg/fork/utils/Callbacks$Callback1;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method protected didSendPressed()V
    .locals 9

    .line 12074
    invoke-super {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->didSendPressed()V

    .line 12076
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 12080
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V

    .line 12082
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$69;->val$needTemplatePreview:Z

    if-eqz v0, :cond_1

    .line 12083
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideBotCommands()V

    .line 12084
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v0

    iget-object v2, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->messages:Ljava/util/ArrayList;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/ChatActivity;->access$40900(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;ZZZILorg/telegram/messenger/ForwardingMessagesParams;Lorg/telegram/messenger/MessageObject;)V

    .line 12085
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTemplatesController()Lorg/fork/controller/TemplatesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/fork/controller/TemplatesController;->incrementUsageRating(Ljava/util/List;)V

    goto :goto_0

    .line 12087
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    :goto_0
    return-void
.end method

.method protected onDismiss(Z)V
    .locals 3

    .line 12019
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$40700(Lorg/telegram/ui/ChatActivity;Z)V

    .line 12021
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$69;->val$needTemplatePreview:Z

    if-nez v0, :cond_0

    .line 12022
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$36000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12023
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12024
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$36000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ForwardingMessagesParams;->getSelectedMessages(Ljava/util/ArrayList;)V

    .line 12025
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForForward(ZLjava/util/ArrayList;)V

    .line 12028
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$69;->val$keyboardVisible:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 12029
    new-instance p1, Lorg/telegram/ui/ChatActivity$69$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$69$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$69;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 12036
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40800(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method protected selectAnotherChat()V
    .locals 8

    .line 12041
    invoke-super {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->selectAnotherChat()V

    const/4 v0, 0x0

    .line 12042
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V

    .line 12043
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$36000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12046
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$36000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v1, :cond_3

    .line 12047
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$36000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/ForwardingMessagesParams;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 12048
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2

    .line 12050
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isPublicPoll()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 12052
    :cond_1
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isInvoice()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    .line 12055
    :cond_2
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12057
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "onlySelect"

    .line 12058
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x3

    const-string v2, "dialogsType"

    .line 12059
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "hasPoll"

    .line 12060
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "hasInvoice"

    .line 12061
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12062
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$36000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "messagesCount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12063
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$36000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->needForceHideForwardAuthor:Z

    const-string v2, "force_hide_forward_author"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "canSelectTopics"

    .line 12064
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12065
    new-instance v1, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 12066
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/DialogsActivity;->setCustomForwardDelegate(Lorg/telegram/ui/DialogsActivity$CustomForwardDelegate;)V

    .line 12067
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 12068
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$69;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_4
    return-void
.end method
