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

    .line 375
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 481
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x2

    return p1

    .line 483
    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    if-ne v1, p1, :cond_2

    const/4 p1, 0x3

    return p1

    .line 485
    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    const/4 v2, 0x5

    if-ne v1, p1, :cond_3

    return v2

    .line 487
    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->emptyViewDividerRow:I

    if-ne v1, p1, :cond_4

    const/4 p1, 0x6

    return p1

    .line 490
    :cond_4
    iget p1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-eq p1, v2, :cond_6

    const/16 v0, 0xb

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_0
    const/4 p1, 0x4

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 381
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 438
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    .line 439
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v4, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v5, 0x5

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v4, v5, :cond_1

    .line 441
    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 442
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v4, v4, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int v4, p2, v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 443
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    int-to-float p2, p2

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v5, v5, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    int-to-float v5, v5

    sub-float/2addr v5, v6

    cmpl-float p2, p2, v5

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p1, v0, v4, v1, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 444
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    goto/16 :goto_3

    :cond_1
    if-ne v4, v1, :cond_a

    .line 446
    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 447
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v4}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z[Z)Ljava/lang/String;

    move-result-object v1

    .line 448
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    int-to-float p2, p2

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v5, v5, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    int-to-float v5, v5

    sub-float/2addr v5, v6

    cmpl-float p2, p2, v5

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p1, v0, v4, v1, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 449
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    goto/16 :goto_3

    .line 451
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int/2addr p2, v0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 453
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    .line 454
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->getCurrentChannel()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 455
    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChannel(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 456
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, p2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChecked(ZZ)V

    goto :goto_3

    .line 457
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_a

    .line 458
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 459
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v0, p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne v0, v1, :cond_8

    .line 460
    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 461
    sget p2, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink:I

    const-string v0, "ChannelInviteViaLink"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 463
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v2, :cond_7

    .line 464
    sget p2, Lorg/telegram/messenger/R$string;->ChannelInviteViaLinkRestricted2:I

    const-string v0, "ChannelInviteViaLinkRestricted2"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 466
    :cond_7
    sget p2, Lorg/telegram/messenger/R$string;->ChannelInviteViaLinkRestricted3:I

    const-string v0, "ChannelInviteViaLinkRestricted3"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    const/4 p2, 0x2

    if-ne v0, p2, :cond_9

    .line 470
    sget p2, Lorg/telegram/messenger/R$string;->YourPublicCommunities:I

    const-string v0, "YourPublicCommunities"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 472
    :cond_9
    sget p2, Lorg/telegram/messenger/R$string;->LastActiveCommunities:I

    const-string v0, "LastActiveCommunities"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 388
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    .line 392
    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-direct {p2, v0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V

    :goto_0
    move-object p1, p2

    goto :goto_2

    .line 424
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2$2;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2$2;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;Landroid/content/Context;)V

    goto :goto_2

    .line 416
    :pswitch_1
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 417
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget p1, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x16

    goto :goto_1

    :cond_0
    const/16 p1, 0x15

    :goto_1
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 418
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 419
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIgnoreHeightCheck(Z)V

    const/16 p1, 0xa

    .line 420
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    goto :goto_0

    .line 413
    :pswitch_2
    new-instance p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-direct {p2, p1, v2, v0, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZ)V

    goto :goto_0

    .line 409
    :pswitch_3
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 410
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p2, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 406
    :pswitch_4
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/16 v0, 0xc

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-direct {p2, p1, v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    goto :goto_0

    .line 395
    :pswitch_5
    new-instance p2, Lorg/telegram/ui/Cells/AdminedChannelCell;

    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;)V

    const/16 v1, 0x9

    invoke-direct {p2, p1, v0, v2, v1}, Lorg/telegram/ui/Cells/AdminedChannelCell;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;ZI)V

    goto :goto_0

    .line 432
    :goto_2
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
