.class Lorg/telegram/ui/Components/ChatActivityEnterView$68$2;
.super Lorg/telegram/ui/Components/TrendingStickersAlert;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$68;->showTrendingStickersAlert(Lorg/telegram/ui/Components/TrendingStickersLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$68;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$68;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/TrendingStickersLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 9929
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$68;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/TrendingStickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/TrendingStickersLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 9932
    invoke-super {p0}, Lorg/telegram/ui/Components/TrendingStickersAlert;->dismiss()V

    .line 9933
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$68;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 9934
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$68;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17002(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/Components/TrendingStickersAlert;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    .line 9936
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$68;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9937
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$68$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$68;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$68;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTrendingStickersShowed(Z)V

    :cond_1
    return-void
.end method
