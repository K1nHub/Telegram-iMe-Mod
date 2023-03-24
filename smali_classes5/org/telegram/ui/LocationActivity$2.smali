.class Lorg/telegram/ui/LocationActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "LocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 2

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LocationActivity;->access$1102(Lorg/telegram/ui/LocationActivity;Z)Z

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/LocationActivity;->access$1202(Lorg/telegram/ui/LocationActivity;Z)Z

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1300(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchDelayed(Ljava/lang/String;Landroid/location/Location;)V

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1400(Lorg/telegram/ui/LocationActivity;)V

    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/LocationActivity;->access$1102(Lorg/telegram/ui/LocationActivity;Z)Z

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 4

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1300(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 601
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 602
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lorg/telegram/ui/LocationActivity;->access$1202(Lorg/telegram/ui/LocationActivity;Z)Z

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1500(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSearchProgress(Z)V

    .line 606
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 609
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1700(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1800(Lorg/telegram/ui/LocationActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1900(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$1300(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1900(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$1300(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 614
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1900(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1300(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v0, v2}, Lorg/telegram/ui/LocationActivity;->access$2002(Lorg/telegram/ui/LocationActivity;Z)Z

    goto :goto_0

    .line 617
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 620
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1700(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1800(Lorg/telegram/ui/LocationActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1900(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1900(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 625
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1400(Lorg/telegram/ui/LocationActivity;)V

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1300(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2100(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchDelayed(Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method
