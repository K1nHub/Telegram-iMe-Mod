.class Lorg/telegram/ui/ManageLinksActivity$8;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ManageLinksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ManageLinksActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ManageLinksActivity;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ManageLinksActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 1604
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$8;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$8;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1607
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1608
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$8;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-boolean p2, p1, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    if-eqz p2, :cond_0

    iget-boolean p1, p1, Lorg/telegram/ui/ManageLinksActivity;->linksLoading:Z

    if-nez p1, :cond_0

    .line 1609
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$8;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 1610
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$8;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p2}, Lorg/telegram/ui/ManageLinksActivity;->access$1400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result p2

    sub-int/2addr p2, p1

    const/16 p1, 0xa

    if-ge p2, p1, :cond_0

    .line 1611
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$8;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->access$1500(Lorg/telegram/ui/ManageLinksActivity;Z)V

    :cond_0
    return-void
.end method
