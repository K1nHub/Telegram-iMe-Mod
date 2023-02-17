.class Lorg/telegram/ui/Components/ChatActivityEnterView$18;
.super Lorg/telegram/ui/Components/BotCommandsMenuContainer;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 0

    .line 2965
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$18;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BotCommandsMenuContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .line 2968
    invoke-super {p0}, Lorg/telegram/ui/Components/BotCommandsMenuContainer;->onDismiss()V

    .line 2969
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$18;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BotCommandsMenuView;->setOpened(Z)V

    return-void
.end method
