.class Lorg/telegram/ui/ChatUsersActivity$4;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "ChatUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$4;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$4;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$4;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 680
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$4;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$4;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground(Landroid/graphics/Canvas;III)V

    .line 682
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 671
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$4;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1000(Lorg/telegram/ui/ChatUsersActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$4;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1100(Lorg/telegram/ui/ChatUsersActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
