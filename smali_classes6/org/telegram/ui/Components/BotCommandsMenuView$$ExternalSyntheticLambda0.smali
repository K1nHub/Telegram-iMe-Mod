.class public final synthetic Lorg/telegram/ui/Components/BotCommandsMenuView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/BotCommandsMenuView;

.field public final synthetic f$1:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/BotCommandsMenuView;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/BotCommandsMenuView;

    iput-object p2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/BotCommandsMenuView;

    iget-object v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/BotCommandsMenuView;->$r8$lambda$jQZrBKVoqHPFMEY421VumByMMls(Lorg/telegram/ui/Components/BotCommandsMenuView;Lorg/telegram/ui/ChatActivity;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
