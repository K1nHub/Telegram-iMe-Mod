.class Lorg/telegram/ui/ContactsActivity$3;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "ContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 4

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1000(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ContactsActivity;->access$702(Lorg/telegram/ui/ContactsActivity;Z)Z

    .line 680
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ContactsActivity;->access$1102(Lorg/telegram/ui/ContactsActivity;Z)Z

    .line 681
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ContactsActivity;->access$500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 683
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    const/16 v3, 0x5a

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->topOffset:I

    .line 688
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$800(Lorg/telegram/ui/ContactsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$800(Lorg/telegram/ui/ContactsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ContactsActivity;->access$1302(Lorg/telegram/ui/ContactsActivity;Z)Z

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$800(Lorg/telegram/ui/ContactsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v2, 0x64

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 692
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ContactsActivity;->access$1400(Lorg/telegram/ui/ContactsActivity;Z)V

    .line 694
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$600(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$600(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 698
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$900(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 699
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$900(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ContactsActivity;->access$702(Lorg/telegram/ui/ContactsActivity;Z)Z

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$800(Lorg/telegram/ui/ContactsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$800(Lorg/telegram/ui/ContactsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 666
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$600(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$600(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 670
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$900(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$900(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 3

    .line 706
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1000(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 709
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 710
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ContactsActivity;->access$1102(Lorg/telegram/ui/ContactsActivity;Z)Z

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ContactsActivity;->access$1000(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1000(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 719
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1000(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    goto :goto_0

    .line 722
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 723
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 724
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    :cond_3
    :goto_0
    return-void
.end method
