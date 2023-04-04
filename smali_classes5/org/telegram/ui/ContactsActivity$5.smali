.class Lorg/telegram/ui/ContactsActivity$5;
.super Lorg/telegram/ui/Adapters/ContactsAdapter;
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
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;Landroid/content/Context;IZLandroidx/collection/LongSparseArray;IZ)V
    .locals 7

    .line 777
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Adapters/ContactsAdapter;-><init>(Landroid/content/Context;IZLandroidx/collection/LongSparseArray;IZ)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 5

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->getSelectedContactsFilter()Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setFilterModel(Lcom/iMe/model/contacts/ContactsFilter;)V

    .line 782
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->reCreateDelegates()V

    .line 784
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 785
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 786
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItemCount()I

    move-result v0

    .line 787
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$1700(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 790
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    goto :goto_2

    .line 793
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    :cond_3
    :goto_2
    return-void
.end method
