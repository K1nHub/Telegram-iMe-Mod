.class Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "LimitReachedBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->createAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 348
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x2

    return p1

    .line 350
    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    if-ne v1, p1, :cond_2

    const/4 p1, 0x3

    return p1

    .line 352
    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    const/4 v2, 0x5

    if-ne v1, p1, :cond_3

    return v2

    .line 355
    :cond_3
    iget p1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne p1, v2, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 273
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 322
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v3, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 324
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 325
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v4, v4, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int/2addr p2, v4

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 326
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v3, p2, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 327
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int/2addr p2, v0

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 330
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    .line 331
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->getCurrentChannel()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 332
    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChannel(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 333
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v0, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v3, v1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChecked(ZZ)V

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 335
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 336
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget p2, p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 337
    sget p2, Lorg/telegram/messenger/R$string;->YourPublicCommunities:I

    const-string v0, "YourPublicCommunities"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->LastActiveCommunities:I

    const-string v0, "LastActiveCommunities"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 280
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v2, 0x3

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq p2, v2, :cond_3

    const/4 v2, 0x4

    if-eq p2, v2, :cond_2

    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    .line 284
    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-direct {p2, v0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V

    goto :goto_1

    .line 308
    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 309
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget p1, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne p1, v1, :cond_1

    const/16 p1, 0x16

    goto :goto_0

    :cond_1
    const/16 p1, 0x15

    :goto_0
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 310
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 311
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIgnoreHeightCheck(Z)V

    const/16 p1, 0xa

    .line 312
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    goto :goto_1

    .line 305
    :cond_2
    new-instance p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-direct {p2, p1, v0, v3, v4}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZ)V

    goto :goto_1

    .line 301
    :cond_3
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 302
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p2, v4, v4, v4, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 298
    :cond_4
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/16 v0, 0xc

    const-string/jumbo v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p2, p1, v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    goto :goto_1

    .line 287
    :cond_5
    new-instance p2, Lorg/telegram/ui/Cells/AdminedChannelCell;

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;)V

    const/16 v2, 0x9

    invoke-direct {p2, p1, v1, v0, v2}, Lorg/telegram/ui/Cells/AdminedChannelCell;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;ZI)V

    .line 316
    :goto_1
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
