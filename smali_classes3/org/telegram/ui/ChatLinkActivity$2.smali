.class Lorg/telegram/ui/ChatLinkActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "ChatLinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatLinkActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatLinkActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatLinkActivity;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 3

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$200(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/ChatLinkActivity$SearchAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatLinkActivity$SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatLinkActivity;->access$002(Lorg/telegram/ui/ChatLinkActivity;Z)Z

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatLinkActivity;->access$302(Lorg/telegram/ui/ChatLinkActivity;Z)Z

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$500(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatLinkActivity;->access$400(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$400(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$500(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$500(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$100(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$600(Lorg/telegram/ui/ChatLinkActivity;)Landroid/view/View;

    move-result-object v0

    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$700(Lorg/telegram/ui/ChatLinkActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$100(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatLinkActivity;->access$002(Lorg/telegram/ui/ChatLinkActivity;Z)Z

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$100(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 4

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$200(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/ChatLinkActivity$SearchAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatLinkActivity;->access$302(Lorg/telegram/ui/ChatLinkActivity;Z)Z

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$500(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$500(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatLinkActivity;->access$200(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/ChatLinkActivity$SearchAdapter;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$500(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatLinkActivity;->access$200(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/ChatLinkActivity$SearchAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$800(Lorg/telegram/ui/ChatLinkActivity;)Landroid/view/View;

    move-result-object v0

    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$900(Lorg/telegram/ui/ChatLinkActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$200(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/ChatLinkActivity$SearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatLinkActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$500(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$500(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$100(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 342
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$2;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$200(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/ui/ChatLinkActivity$SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatLinkActivity$SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    return-void
.end method
