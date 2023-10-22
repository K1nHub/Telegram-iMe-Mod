.class Lorg/telegram/ui/DialogsActivity$18;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 5853
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IFF)Z
    .locals 8

    .line 5857
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$18;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->isAlbumsDialogsType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5860
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/topics/TopicsBar;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5864
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5868
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$27700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5869
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p4, p0, Lorg/telegram/ui/DialogsActivity$18;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p4

    invoke-static {p3, p1, p2, p4}, Lorg/telegram/ui/DialogsActivity;->access$27800(Lorg/telegram/ui/DialogsActivity;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x1

    return p1

    .line 5873
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$18;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v2, v1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$18;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v7

    move-object v1, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/DialogsActivity;->access$27900(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;IFFILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result p1

    return p1
.end method

.method public onLongClickRelease()V
    .locals 2

    .line 5885
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    .line 5886
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    :cond_0
    return-void
.end method

.method public onMove(FF)V
    .locals 1

    .line 5878
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_0

    .line 5879
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->movePreviewFragment(F)V

    :cond_0
    return-void
.end method
