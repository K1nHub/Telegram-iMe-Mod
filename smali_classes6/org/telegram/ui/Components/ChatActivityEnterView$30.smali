.class Lorg/telegram/ui/Components/ChatActivityEnterView$30;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


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
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 4074
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 2

    .line 4078
    instance-of p2, p1, Lcom/iMe/fork/ui/view/TemplateCell;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 4079
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    move-result-object p2

    check-cast p1, Lcom/iMe/fork/ui/view/TemplateCell;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/TemplateCell;->getTemplate()Lcom/iMe/storage/domain/model/templates/TemplateModel;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;->didPressSendMessage(Lcom/iMe/storage/domain/model/templates/TemplateModel;Z)V

    return v0

    .line 4083
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;

    if-eqz p2, :cond_1

    .line 4084
    check-cast p1, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->getCommand()Ljava/lang/String;

    move-result-object p1

    .line 4085
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 4086
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/Components/BotCommandsMenuContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotCommandsMenuContainer;->dismiss()V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
