.class Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "ChatAttachAlertLocationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 3

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$802(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Z)Z

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1002(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Z)Z

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchDelayed(Ljava/lang/String;Landroid/location/Location;)V

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 406
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onSearchExpand()V
    .locals 3

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$802(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Z)Z

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->makeFocusable(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 4

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 417
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1002(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Z)Z

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSearchProgress(Z)V

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 425
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 430
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->isEmpty()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1802(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Z)Z

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    goto :goto_0

    .line 434
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 437
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 443
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchDelayed(Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method
