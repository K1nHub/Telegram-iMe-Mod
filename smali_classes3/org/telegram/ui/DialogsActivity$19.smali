.class Lorg/telegram/ui/DialogsActivity$19;
.super Lorg/telegram/ui/Components/DialogsItemAnimator;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 5328
    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/DialogsItemAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method


# virtual methods
.method public onRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 5331
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5332
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-nez p1, :cond_2

    .line 5333
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5335
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 5337
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 5338
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16102(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    .line 5340
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5341
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->doNotShow()V

    :cond_2
    return-void
.end method
