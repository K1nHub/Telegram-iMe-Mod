.class Lorg/telegram/ui/DialogsActivity$14;
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

    .line 5134
    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/DialogsItemAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method


# virtual methods
.method public onRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 5137
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5138
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-nez p1, :cond_2

    .line 5139
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5141
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 5143
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16600(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 5144
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16602(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    .line 5146
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5147
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->doNotShow()V

    :cond_2
    return-void
.end method
