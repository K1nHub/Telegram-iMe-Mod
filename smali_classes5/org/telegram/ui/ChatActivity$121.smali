.class Lorg/telegram/ui/ChatActivity$121;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->lambda$createMenu$224(Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field clicked:Z

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 27597
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$121;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 27602
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$121;->clicked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 27605
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$121;->clicked:Z

    .line 27606
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$121;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v1, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
