.class Lorg/telegram/ui/ChatActivity$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$2xhEx_uwqcJ5SIx2ATAIFn_U7M8(Lorg/telegram/ui/ChatActivity$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$1;->lambda$didPressGoToMessage$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7PBak9YQn2k_FlnujeNnxZvUiR4(Lorg/telegram/ui/ChatActivity$1;Lcom/iMe/storage/domain/model/templates/TemplateModel;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$1;->lambda$didPressSendMessage$2(Lcom/iMe/storage/domain/model/templates/TemplateModel;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YugFt9RvrrBKDpbniwR3lbdgwTs(Lorg/telegram/ui/ChatActivity$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$1;->lambda$didPressOpenTemplates$0(Z)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCloseDelay(Z)J
    .locals 2

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    const-wide/16 v0, 0x1f4

    return-wide v0

    :cond_0
    if-eqz p1, :cond_1

    .line 526
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuIsShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 527
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideBotCommands()V

    const-wide/16 v0, 0xc8

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private synthetic lambda$didPressGoToMessage$1(I)V
    .locals 3

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$000(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/iMe/fork/controller/TemplatesController;->getInstance(I)Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/TemplatesController;->getTemplatesChannelId()J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2, p1}, Lorg/telegram/ui/ChatActivity;->newInstanceForDialogId(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$didPressOpenTemplates$0(Z)V
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->openTemplatesChannel(Z)V

    return-void
.end method

.method private synthetic lambda$didPressSendMessage$2(Lcom/iMe/storage/domain/model/templates/TemplateModel;Z)V
    .locals 1

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ChatActivity;->sendTemplate(Lcom/iMe/storage/domain/model/templates/TemplateModel;Z)V

    return-void
.end method


# virtual methods
.method public didPressGoToMessage(I)V
    .locals 3

    .line 513
    new-instance v0, Lorg/telegram/ui/ChatActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatActivity$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$1;I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$1;->getCloseDelay(Z)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public didPressOpenTemplates(Z)V
    .locals 3

    .line 508
    new-instance v0, Lorg/telegram/ui/ChatActivity$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatActivity$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$1;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$1;->getCloseDelay(Z)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public didPressSendMessage(Lcom/iMe/storage/domain/model/templates/TemplateModel;Z)V
    .locals 1

    .line 518
    new-instance v0, Lorg/telegram/ui/ChatActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ChatActivity$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$1;Lcom/iMe/storage/domain/model/templates/TemplateModel;Z)V

    xor-int/lit8 p1, p2, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$1;->getCloseDelay(Z)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
