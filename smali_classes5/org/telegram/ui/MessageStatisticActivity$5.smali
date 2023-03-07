.class Lorg/telegram/ui/MessageStatisticActivity$5;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "MessageStatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageStatisticActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MessageStatisticActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MessageStatisticActivity;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lorg/telegram/ui/MessageStatisticActivity$5;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 427
    iget-object p1, p0, Lorg/telegram/ui/MessageStatisticActivity$5;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 429
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$5;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$800(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    const-string v1, "chat_id"

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$5;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$800(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getChatId()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$5;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$800(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 435
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$5;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    new-instance v1, Lorg/telegram/ui/StatisticActivity;

    invoke-direct {v1, p1}, Lorg/telegram/ui/StatisticActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    :goto_1
    return-void
.end method
