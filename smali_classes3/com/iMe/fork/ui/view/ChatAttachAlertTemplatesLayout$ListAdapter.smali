.class final Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatAttachAlertTemplatesLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 363
    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->access$getRowCount$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->access$getTopPaddingRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOP_PADDING:I

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->access$getHeaderRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->access$getBottomPaddingRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)I

    move-result v0

    if-ne p1, v0, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->BOTTOM_PADDING:I

    goto :goto_0

    .line 400
    :cond_2
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEMPLATE:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEMPLATE:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 388
    instance-of v0, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 389
    iget-object p2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-static {p2}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->access$getTemplates$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/R$string;->chat_templates_list_header:I

    goto :goto_0

    .line 390
    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->chat_templates:I

    .line 388
    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 392
    :cond_1
    instance-of v0, p1, Lcom/iMe/fork/ui/view/TemplateCell;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/iMe/fork/ui/view/TemplateCell;

    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->access$getTemplates$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-static {v1}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->access$getTemplatesStartRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getDelegate()Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/iMe/fork/ui/view/TemplateCell;->bind(Lcom/iMe/storage/domain/model/templates/TemplateModel;Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 8

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TOP_PADDING:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter$onCreateViewHolder$1;

    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-direct {p2, v0, p1}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter$onCreateViewHolder$1;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/content/Context;)V

    goto :goto_0

    .line 377
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne p2, v0, :cond_1

    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v4, 0x15

    const/4 v5, 0x7

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-static {p1}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->access$getResourcesProvider$p$s-1709477308(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 378
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 380
    :cond_1
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->BOTTOM_PADDING:I

    const-string v1, "parent.context"

    if-ne p2, v0, :cond_2

    new-instance p2, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$EmptyView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$EmptyView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 381
    :cond_2
    new-instance p2, Lcom/iMe/fork/ui/view/TemplateCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/iMe/fork/ui/view/TemplateCell;-><init>(Landroid/content/Context;)V

    .line 382
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
