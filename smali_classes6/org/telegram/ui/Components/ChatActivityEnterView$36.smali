.class Lorg/telegram/ui/Components/ChatActivityEnterView$36;
.super Lorg/telegram/ui/Components/BotCommandsMenuContainer;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createBotCommandsMenuContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 0

    .line 4757
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$36;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BotCommandsMenuContainer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 4758
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$36;->ignoreLayout:Z

    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .line 4762
    invoke-super {p0}, Lorg/telegram/ui/Components/BotCommandsMenuContainer;->onDismiss()V

    .line 4763
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$36;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4764
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$36;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BotCommandsMenuView;->setOpened(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 4770
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4771
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$36;->ignoreLayout:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4772
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$36;->ignoreLayout:Z

    .line 4773
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$36;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11600(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    :cond_0
    return-void
.end method
