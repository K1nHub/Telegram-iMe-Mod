.class Lorg/telegram/ui/Components/ChatActivityEnterView$4;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastKnownPage:I

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 938
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->lastKnownPage:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 942
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getCurrentPage()I

    move-result v0

    .line 944
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->lastKnownPage:I

    if-eq v0, v1, :cond_7

    .line 945
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->lastKnownPage:I

    .line 946
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    .line 947
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_1

    const/4 v6, 0x3

    if-ne v0, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    invoke-static {v2, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1502(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 948
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v2

    .line 949
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v0, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1602(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 950
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 951
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v6

    if-eqz v6, :cond_4

    .line 952
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v5

    :goto_3
    invoke-static {v4, v3, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    .line 953
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    goto :goto_4

    .line 954
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 955
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v4, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    .line 958
    :cond_5
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eq v2, v0, :cond_7

    .line 959
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    :cond_7
    return-void
.end method
