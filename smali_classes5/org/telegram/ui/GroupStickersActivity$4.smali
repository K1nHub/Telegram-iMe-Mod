.class Lorg/telegram/ui/GroupStickersActivity$4;
.super Ljava/lang/Object;
.source "GroupStickersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupStickersActivity;->onStickerSetClicked(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupStickersActivity;

.field final synthetic val$isSelected:Z

.field final synthetic val$stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupStickersActivity;ZLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$isSelected:Z

    iput-object p3, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomButtonColorKey()Ljava/lang/String;
    .locals 1

    .line 249
    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$isSelected:Z

    if-nez v0, :cond_0

    const-string v0, "featuredStickers_addButton"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCustomButtonRippleColorKey()Ljava/lang/String;
    .locals 1

    .line 244
    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$isSelected:Z

    if-nez v0, :cond_0

    const-string v0, "featuredStickers_addButtonPressed"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCustomButtonText()Ljava/lang/String;
    .locals 1

    .line 254
    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$isSelected:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->RemoveGroupStickerSet:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->SetAsGroupStickerSet:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomButtonTextColorKey()Ljava/lang/String;
    .locals 1

    .line 239
    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$isSelected:Z

    if-eqz v0, :cond_0

    const-string v0, "dialogTextRed"

    goto :goto_0

    :cond_0
    const-string v0, "featuredStickers_buttonText"

    :goto_0
    return-object v0
.end method

.method public onCustomButtonPressed()Z
    .locals 11

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$500(Lorg/telegram/ui/GroupStickersActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 261
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    const v2, 0x7fffffff

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 265
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupStickersActivity;->access$600(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v3

    .line 266
    iget-boolean v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$isSelected:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 267
    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lorg/telegram/ui/GroupStickersActivity;->access$702(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 268
    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4, v6}, Lorg/telegram/ui/GroupStickersActivity;->access$802(Lorg/telegram/ui/GroupStickersActivity;Z)Z

    goto :goto_1

    .line 270
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    iget-object v7, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v4, v7}, Lorg/telegram/ui/GroupStickersActivity;->access$702(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 271
    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4, v5}, Lorg/telegram/ui/GroupStickersActivity;->access$802(Lorg/telegram/ui/GroupStickersActivity;Z)Z

    .line 273
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupStickersActivity;->access$900(Lorg/telegram/ui/GroupStickersActivity;)V

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 277
    iget-object v7, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupStickersActivity;->access$000(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v5

    .line 278
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 279
    iget-object v8, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 280
    iget-object v9, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupStickersActivity;->access$1000(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v10

    add-int/2addr v10, v3

    if-ne v9, v10, :cond_2

    .line 281
    check-cast v8, Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/ui/Cells/StickerSetCell;->setChecked(ZZ)V

    move v7, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move v7, v5

    :goto_3
    if-nez v7, :cond_4

    .line 288
    iget-object v7, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupStickersActivity;->access$300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 291
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupStickersActivity;->access$600(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v3

    if-eq v3, v4, :cond_7

    .line 293
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupStickersActivity;->access$000(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v5

    .line 294
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 295
    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 296
    iget-object v7, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupStickersActivity;->access$1000(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupStickersActivity;->access$600(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v9

    add-int/2addr v8, v9

    if-ne v7, v8, :cond_5

    .line 297
    check-cast v4, Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-virtual {v4, v6, v6}, Lorg/telegram/ui/Cells/StickerSetCell;->setChecked(ZZ)V

    move v3, v6

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    move v3, v5

    :goto_5
    if-nez v3, :cond_7

    .line 304
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupStickersActivity;->access$300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupStickersActivity;->access$600(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_7
    if-eq v1, v2, :cond_8

    .line 309
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupStickersActivity;->access$500(Lorg/telegram/ui/GroupStickersActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    add-int/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 311
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$000(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1100(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldText(Ljava/lang/CharSequence;Z)V

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1200(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField(Z)V

    :cond_9
    return v6
.end method
