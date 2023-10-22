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
.field final synthetic this$0:Lorg/telegram/ui/ChannelBoostLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelBoostLayout;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v0, v0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v0, v0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v0, v0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->selectable:Z

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 164
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 167
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v0, v0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-object p2, p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->showDate(Z)V

    goto/16 :goto_1

    .line 170
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 171
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    .line 173
    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object p2, p2, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;->level:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->BoostsLevel2:I

    const-string v4, "BoostsLevel2"

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, p2, v3, v0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object p2, p2, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;->premium_audience:Lorg/telegram/tgnet/TLRPC$TL_statsPercentValue;

    const-string v0, "PremiumSubscribers"

    if-eqz p2, :cond_2

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$TL_statsPercentValue;->total:D

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_2

    .line 175
    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$TL_statsPercentValue;->part:D

    double-to-float p2, v6

    double-to-float v4, v4

    div-float/2addr p2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr p2, v4

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v5, v5, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;->premium_audience:Lorg/telegram/tgnet/TLRPC$TL_statsPercentValue;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_statsPercentValue;->part:D

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v7, v2

    const-string p2, "%.1f"

    invoke-static {v6, p2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget v2, Lorg/telegram/messenger/R$string;->PremiumSubscribers:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v4, p2, v0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->PremiumSubscribers:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "~0"

    const-string v2, "0%"

    invoke-virtual {p1, v1, v0, v2, p2}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p2, 0x2

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v0, v0, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;->boosts:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BoostsExisting:I

    const-string v2, "BoostsExisting"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v3, v1}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x3

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v0, v0, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;->next_level_boosts:I

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;->boosts:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BoostsToLevel:I

    const-string v2, "BoostsToLevel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v3, v1}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 182
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_4

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v0, v0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-object p2, p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->booster:Lorg/telegram/tgnet/TLRPC$TL_booster;

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget v0, v0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$TL_booster;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 185
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/UserCell;

    .line 186
    sget v3, Lorg/telegram/messenger/R$string;->BoostExpireOn:I

    new-array v1, v1, [Ljava/lang/Object;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_booster;->expires:I

    int-to-long v4, p2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatDate(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "BoostExpireOn"

    invoke-static {p2, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 187
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, v2}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 188
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 189
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v0, v0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-object p2, p2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 191
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_6

    .line 192
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    .line 193
    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget p2, p2, Lorg/telegram/ui/ChannelBoostLayout;->nextRemaining:I

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "ShowVotes"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {p1, p2, v3, v0, v2}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 11

    const/16 v0, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 156
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 150
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ManageChatTextCell;-><init>(Landroid/content/Context;)V

    .line 151
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(II)V

    goto/16 :goto_1

    .line 135
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/ChannelBoostLayout$1$1;

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ChannelBoostLayout$1$1;-><init>(Lorg/telegram/ui/ChannelBoostLayout$1;Landroid/content/Context;)V

    .line 141
    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 142
    sget v0, Lorg/telegram/messenger/R$string;->NoBoostersHint:I

    const-string v2, "NoBoostersHint"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 143
    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 144
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    .line 145
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 146
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 132
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x8

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 104
    :pswitch_3
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v3}, Lorg/telegram/ui/ChannelBoostLayout;->access$000(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p2, p1, v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 105
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v4, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v4}, Lorg/telegram/ui/ChannelBoostLayout;->access$000(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {p1, v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 106
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 107
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v3, v0, p1, v2, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 108
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 109
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 129
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/Cells/UserCell;

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v2, v2, v2}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    goto/16 :goto_1

    .line 91
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->filled_limit_boost:I

    const/16 v6, 0xa

    const/4 v7, 0x0

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p2}, Lorg/telegram/ui/ChannelBoostLayout;->access$000(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;-><init>(Landroid/content/Context;IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 92
    iput-boolean v1, p1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->isStatistic:Z

    .line 94
    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v4, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {v4}, Lorg/telegram/ui/ChannelBoostLayout;->access$000(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {p2, v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 95
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 96
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v3, v0, p2, v2, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 97
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    const/16 p2, 0x14

    .line 99
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, v2, v0, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 100
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object p2, p2, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBoosts(Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;Z)V

    goto/16 :goto_1

    .line 122
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Components/LinkActionView;

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v5, p2, Lorg/telegram/ui/ChannelBoostLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/LinkActionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZ)V

    .line 124
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->hideOptions()V

    .line 125
    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget v0, p2, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/ChannelBoostLayout;->access$100(Lorg/telegram/ui/ChannelBoostLayout;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Stories/ChannelBoostUtilities;->createLink(IJ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setLink(Ljava/lang/String;)V

    const/16 p2, 0xb

    .line 126
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 112
    :pswitch_7
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-direct {p2, p1, v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 118
    :pswitch_8
    new-instance p1, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 115
    :pswitch_9
    new-instance p1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$1;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/StatisticActivity$OverviewCell;-><init>(Landroid/content/Context;)V

    .line 158
    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
