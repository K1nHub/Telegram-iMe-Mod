.class Lorg/telegram/ui/ChannelBoostLayout$1;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "ChannelBoostLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelBoostLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private remTotalBoosts:I

.field private remTotalGifts:I

.field final synthetic this$0:Lorg/telegram/ui/ChannelBoostLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelBoostLayout;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    const/4 p1, -0x1

    .line 105
    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->remTotalBoosts:I

    .line 106
    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->remTotalGifts:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v0}, Lorg/telegram/ui/ChannelBoostLayout;->access$000(Lorg/telegram/ui/ChannelBoostLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v0}, Lorg/telegram/ui/ChannelBoostLayout;->access$000(Lorg/telegram/ui/ChannelBoostLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v0}, Lorg/telegram/ui/ChannelBoostLayout;->access$000(Lorg/telegram/ui/ChannelBoostLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->selectable:Z

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 244
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_d

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    .line 253
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 254
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    .line 256
    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object p2, p2, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->BoostsLevel2:I

    const-string v5, "BoostsLevel2"

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, p2, v1, v0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object p2, p2, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->premium_audience:Lorg/telegram/tgnet/TLRPC$TL_statsPercentValue;

    const-string v0, "PremiumSubscribers"

    if-eqz p2, :cond_2

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$TL_statsPercentValue;->total:D

    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-eqz v7, :cond_2

    .line 258
    iget-wide v7, p2, Lorg/telegram/tgnet/TLRPC$TL_statsPercentValue;->part:D

    double-to-float p2, v7

    double-to-float v5, v5

    div-float/2addr p2, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr p2, v5

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "~"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v6, v6, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->premium_audience:Lorg/telegram/tgnet/TLRPC$TL_statsPercentValue;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$TL_statsPercentValue;->part:D

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v8, v4

    const-string p2, "%.1f"

    invoke-static {v7, p2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget v6, Lorg/telegram/messenger/R$string;->PremiumSubscribers:I

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v5, p2, v0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->PremiumSubscribers:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "~0"

    const-string v5, "0%"

    invoke-virtual {p1, v3, v0, v5, p2}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p2, 0x2

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v0, v0, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->BoostsExisting:I

    const-string v5, "BoostsExisting"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v0, v1, v3}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object p2, p2, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    sub-int/2addr v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->BoostsToLevel:I

    const-string v3, "BoostsToLevel"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, p2, v1, v0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 265
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_5

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v0}, Lorg/telegram/ui/ChannelBoostLayout;->access$000(Lorg/telegram/ui/ChannelBoostLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-object v0, v0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->booster:Lorg/telegram/tgnet/tl/TL_stories$TL_boost;

    .line 267
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget v1, v1, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v6, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 268
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;

    .line 269
    iget v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->multiplier:I

    if-le v1, v3, :cond_4

    .line 270
    sget v1, Lorg/telegram/messenger/R$string;->BoostsExpireOn:I

    new-array v2, v3, [Ljava/lang/Object;

    iget v6, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->expires:I

    int-to-long v8, v6

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->formatDate(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v4, "BoostsExpireOn"

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 271
    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->BoostExpireOn:I

    new-array v2, v3, [Ljava/lang/Object;

    iget v6, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->expires:I

    int-to-long v8, v6

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->formatDate(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v4, "BoostExpireOn"

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v9, v1

    .line 272
    invoke-static {v7}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v1}, Lorg/telegram/ui/ChannelBoostLayout;->access$000(Lorg/telegram/ui/ChannelBoostLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-boolean p2, p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->isLast:Z

    xor-int/lit8 v11, p2, 0x1

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 273
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->setStatus(Lorg/telegram/tgnet/tl/TL_stories$TL_boost;)V

    .line 274
    invoke-virtual {p1, v5}, Lorg/telegram/ui/Cells/UserCell;->setAvatarPadding(I)V

    goto/16 :goto_3

    .line 275
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v6, 0x6

    if-ne v0, v6, :cond_6

    .line 276
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v0}, Lorg/telegram/ui/ChannelBoostLayout;->access$000(Lorg/telegram/ui/ChannelBoostLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-object p2, p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 278
    :cond_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v6, 0x9

    if-ne v0, v6, :cond_8

    .line 279
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    .line 280
    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p2}, Lorg/telegram/ui/ChannelBoostLayout;->access$300(Lorg/telegram/ui/ChannelBoostLayout;)I

    move-result p2

    if-nez p2, :cond_7

    .line 281
    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p2}, Lorg/telegram/ui/ChannelBoostLayout;->access$400(Lorg/telegram/ui/ChannelBoostLayout;)I

    move-result p2

    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "BoostingShowMoreBoosts"

    invoke-static {v2, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {p1, p2, v1, v0, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_3

    .line 283
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p2}, Lorg/telegram/ui/ChannelBoostLayout;->access$500(Lorg/telegram/ui/ChannelBoostLayout;)I

    move-result p2

    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "BoostingShowMoreGifts"

    invoke-static {v2, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {p1, p2, v1, v0, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_3

    .line 285
    :cond_8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 286
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/LinkActionView;

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v0}, Lorg/telegram/ui/ChannelBoostLayout;->access$000(Lorg/telegram/ui/ChannelBoostLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-object p2, p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setLink(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 288
    :cond_9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v0}, Lorg/telegram/ui/ChannelBoostLayout;->access$000(Lorg/telegram/ui/ChannelBoostLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    .line 290
    iget-object v0, p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    .line 291
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;

    .line 292
    sget v1, Lorg/telegram/messenger/R$string;->TelegramPremiumCount:I

    new-array v2, v3, [Ljava/lang/Object;

    iget v6, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;->quantity:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v6, "TelegramPremiumCount"

    invoke-static {v6, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 293
    sget v1, Lorg/telegram/messenger/R$string;->SubscriptionsCount:I

    new-array v2, v3, [Ljava/lang/Object;

    iget v6, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;->months:I

    new-array v7, v4, [Ljava/lang/Object;

    const-string v9, "GiftMonths"

    invoke-static {v9, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v4, "SubscriptionsCount"

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 294
    iget-boolean p2, p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->isLast:Z

    xor-int/lit8 v11, p2, 0x1

    move-object v6, p1

    move-object v7, v0

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 295
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;->setImage(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V

    .line 296
    invoke-virtual {p1, v5}, Lorg/telegram/ui/Cells/UserCell;->setAvatarPadding(I)V

    goto/16 :goto_3

    .line 297
    :cond_a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_e

    .line 298
    iget p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->remTotalBoosts:I

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p2}, Lorg/telegram/ui/ChannelBoostLayout;->access$600(Lorg/telegram/ui/ChannelBoostLayout;)I

    move-result p2

    if-ne p1, p2, :cond_b

    iget p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->remTotalGifts:I

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p2}, Lorg/telegram/ui/ChannelBoostLayout;->access$700(Lorg/telegram/ui/ChannelBoostLayout;)I

    move-result p2

    if-eq p1, p2, :cond_e

    .line 299
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p1}, Lorg/telegram/ui/ChannelBoostLayout;->access$600(Lorg/telegram/ui/ChannelBoostLayout;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->remTotalBoosts:I

    .line 300
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p1}, Lorg/telegram/ui/ChannelBoostLayout;->access$700(Lorg/telegram/ui/ChannelBoostLayout;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->remTotalGifts:I

    .line 301
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p1}, Lorg/telegram/ui/ChannelBoostLayout;->access$200(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->removeTabs()Landroid/util/SparseArray;

    .line 302
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p1}, Lorg/telegram/ui/ChannelBoostLayout;->access$200(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p2}, Lorg/telegram/ui/ChannelBoostLayout;->access$600(Lorg/telegram/ui/ChannelBoostLayout;)I

    move-result p2

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "BoostingBoostsCount"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;)V

    .line 303
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget p1, p1, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController;->giveawayGiftsPurchaseAvailable:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p1}, Lorg/telegram/ui/ChannelBoostLayout;->access$700(Lorg/telegram/ui/ChannelBoostLayout;)I

    move-result p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p1}, Lorg/telegram/ui/ChannelBoostLayout;->access$700(Lorg/telegram/ui/ChannelBoostLayout;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p2}, Lorg/telegram/ui/ChannelBoostLayout;->access$600(Lorg/telegram/ui/ChannelBoostLayout;)I

    move-result p2

    if-eq p1, p2, :cond_c

    .line 304
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p1}, Lorg/telegram/ui/ChannelBoostLayout;->access$200(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p2}, Lorg/telegram/ui/ChannelBoostLayout;->access$700(Lorg/telegram/ui/ChannelBoostLayout;)I

    move-result p2

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "BoostingGiftsCount"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;)V

    .line 306
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p1}, Lorg/telegram/ui/ChannelBoostLayout;->access$200(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p2}, Lorg/telegram/ui/ChannelBoostLayout;->access$300(Lorg/telegram/ui/ChannelBoostLayout;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setInitialTabId(I)V

    .line 307
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p1}, Lorg/telegram/ui/ChannelBoostLayout;->access$200(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->finishAddingTabs()V

    goto :goto_3

    .line 247
    :cond_d
    :goto_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    .line 248
    iget-object v3, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v3}, Lorg/telegram/ui/ChannelBoostLayout;->access$000(Lorg/telegram/ui/ChannelBoostLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-object p2, p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->title:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->showDate(Z)V

    .line 250
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 251
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_e
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 15

    move-object v0, p0

    const/4 v1, -0x2

    const/16 v2, 0x8

    const/16 v3, 0x14

    const/16 v4, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch p2, :pswitch_data_0

    .line 236
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 154
    :pswitch_0
    iget-object v2, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    new-instance v3, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    iget-object v4, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v4, v4, Lorg/telegram/ui/ChannelBoostLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v5}, Lorg/telegram/ui/ChannelBoostLayout;->access$100(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v2, v3}, Lorg/telegram/ui/ChannelBoostLayout;->access$202(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    .line 155
    iget-object v2, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v2}, Lorg/telegram/ui/ChannelBoostLayout;->access$200(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v4, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v4}, Lorg/telegram/ui/ChannelBoostLayout;->access$100(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 156
    iget-object v2, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v2}, Lorg/telegram/ui/ChannelBoostLayout;->access$200(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setColors(IIII)V

    .line 157
    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$1$1;

    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v3, v3, Lorg/telegram/ui/ChannelBoostLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/ChannelBoostLayout$1$1;-><init>(Lorg/telegram/ui/ChannelBoostLayout$1;Landroid/content/Context;)V

    .line 167
    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v3}, Lorg/telegram/ui/ChannelBoostLayout;->access$200(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelBoostLayout$1$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelBoostLayout$1$2;-><init>(Lorg/telegram/ui/ChannelBoostLayout$1;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;)V

    .line 184
    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v3}, Lorg/telegram/ui/ChannelBoostLayout;->access$200(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v3

    const/16 v4, 0x30

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 150
    :pswitch_1
    new-instance v3, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-object v5, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v3, v5, v4, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 201
    :pswitch_2
    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;

    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v6, v6, v6}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;-><init>(Landroid/content/Context;IIZ)V

    goto/16 :goto_1

    .line 188
    :pswitch_3
    new-instance v2, Lorg/telegram/ui/Cells/TextCell;

    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 189
    sget v3, Lorg/telegram/messenger/R$string;->BoostingGetBoostsViaGifts:I

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "BoostingGetBoostsViaGifts"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_gift_premium:I

    invoke-virtual {v2, v3, v4, v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    const/16 v3, 0x40

    .line 190
    iput v3, v2, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 191
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v2, v3, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_1

    .line 225
    :pswitch_4
    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$1$4;

    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/ChannelBoostLayout$1$4;-><init>(Lorg/telegram/ui/ChannelBoostLayout$1;Landroid/content/Context;)V

    .line 231
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(II)V

    goto/16 :goto_1

    .line 210
    :pswitch_5
    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$1$3;

    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/ChannelBoostLayout$1$3;-><init>(Lorg/telegram/ui/ChannelBoostLayout$1;Landroid/content/Context;)V

    .line 216
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 217
    sget v4, Lorg/telegram/messenger/R$string;->NoBoostersHint:I

    const-string v6, "NoBoostersHint"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41600000    # 14.0f

    .line 218
    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 219
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    .line 220
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 221
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 207
    :pswitch_6
    new-instance v3, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;

    iget-object v4, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;-><init>(Landroid/content/Context;I)V

    :goto_0
    move-object v2, v3

    goto/16 :goto_1

    .line 132
    :pswitch_7
    new-instance v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v7}, Lorg/telegram/ui/ChannelBoostLayout;->access$100(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-direct {v2, v4, v3, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 133
    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v8, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v8}, Lorg/telegram/ui/ChannelBoostLayout;->access$100(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-static {v3, v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 134
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 135
    new-instance v7, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v7, v4, v3, v6, v6}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 136
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 137
    invoke-virtual {v2, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 204
    :pswitch_8
    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;

    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v6, v6, v6}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;-><init>(Landroid/content/Context;IIZ)V

    goto/16 :goto_1

    .line 119
    :pswitch_9
    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v4, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->filled_limit_boost:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v4, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v4}, Lorg/telegram/ui/ChannelBoostLayout;->access$100(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;-><init>(Landroid/content/Context;IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 120
    iput-boolean v5, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->isStatistic:Z

    .line 122
    iget-object v4, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v7, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v9, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v9}, Lorg/telegram/ui/ChannelBoostLayout;->access$100(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-static {v4, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 123
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 124
    new-instance v8, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v8, v7, v4, v6, v6}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 125
    invoke-virtual {v8, v5}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 127
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v6, v4, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 128
    invoke-virtual {v2, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v3, v3, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-virtual {v2, v3, v6}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBoosts(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    goto :goto_1

    .line 195
    :pswitch_a
    new-instance v2, Lorg/telegram/ui/Components/LinkActionView;

    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v9, v3, Lorg/telegram/ui/ChannelBoostLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/Components/LinkActionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZ)V

    .line 197
    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkActionView;->hideOptions()V

    const/16 v3, 0xb

    .line 198
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v5, 0x18

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 140
    :pswitch_b
    new-instance v2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xc

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    goto :goto_1

    .line 146
    :pswitch_c
    new-instance v2, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 143
    :pswitch_d
    new-instance v2, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/StatisticActivity$OverviewCell;-><init>(Landroid/content/Context;)V

    .line 238
    :goto_1
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
