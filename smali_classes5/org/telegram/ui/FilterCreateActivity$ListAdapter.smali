.class Lorg/telegram/ui/FilterCreateActivity$ListAdapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "FilterCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FilterCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/FilterCreateActivity;


# direct methods
.method public static synthetic $r8$lambda$CQ2duj6N3_z4M4VX3EJKNz3aeXc(Lorg/telegram/ui/FilterCreateActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->lambda$onCreateViewHolder$0(Lorg/telegram/ui/FilterCreateActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vcOjoG4XqOQAUzdCcLTSAo9VcmY(Lorg/telegram/ui/FilterCreateActivity$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->lambda$onCreateViewHolder$1(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/Context;)V
    .locals 0

    .line 1489
    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    .line 1490
    iput-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static synthetic lambda$onCreateViewHolder$0(Lorg/telegram/ui/FilterCreateActivity;)V
    .locals 0

    .line 1533
    invoke-static {p0}, Lorg/telegram/ui/FilterCreateActivity;->access$2500(Lorg/telegram/ui/FilterCreateActivity;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/view/View;Z)V
    .locals 0

    .line 1564
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    if-nez p3, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$600(Lorg/telegram/ui/FilterCreateActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0xc

    if-le p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1506
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$300(Lorg/telegram/ui/FilterCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1745
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$300(Lorg/telegram/ui/FilterCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    if-nez p1, :cond_0

    const/4 p1, 0x3

    return p1

    .line 1749
    :cond_0
    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1495
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 1646
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$300(Lorg/telegram/ui/FilterCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 1650
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/FilterCreateActivity;->access$300(Lorg/telegram/ui/FilterCreateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/FilterCreateActivity;->access$300(Lorg/telegram/ui/FilterCreateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    invoke-virtual {p2}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->isShadow()Z

    move-result p2

    if-nez p2, :cond_1

    move v9, v1

    goto :goto_0

    :cond_1
    move v9, v3

    .line 1652
    :goto_0
    iget p2, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->FLOATING_ACTION_BUTTON:I

    if-ne p2, v2, :cond_2

    .line 1653
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;

    .line 1654
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$1300(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getFabs()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->setFabs(Ljava/util/Set;)V

    goto/16 :goto_7

    .line 1656
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    if-eqz p2, :cond_14

    if-eq p2, v1, :cond_a

    const/4 v1, 0x3

    if-eq p2, v1, :cond_8

    const/4 v1, 0x4

    if-eq p2, v1, :cond_7

    const/4 v1, 0x6

    if-eq p2, v1, :cond_5

    const/4 v1, 0x7

    if-eq p2, v1, :cond_4

    const/16 v0, 0x8

    if-eq p2, v0, :cond_3

    goto/16 :goto_7

    .line 1736
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/FilterCreateActivity$CreateLinkCell;

    invoke-static {p2, p1}, Lorg/telegram/ui/FilterCreateActivity;->access$2402(Lorg/telegram/ui/FilterCreateActivity;Lorg/telegram/ui/FilterCreateActivity$CreateLinkCell;)Lorg/telegram/ui/FilterCreateActivity$CreateLinkCell;

    .line 1737
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$2400(Lorg/telegram/ui/FilterCreateActivity;)Lorg/telegram/ui/FilterCreateActivity$CreateLinkCell;

    move-result-object p1

    invoke-virtual {p1, v9}, Lorg/telegram/ui/FilterCreateActivity$CreateLinkCell;->setDivider(Z)V

    goto/16 :goto_7

    .line 1731
    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/FilterCreateActivity$LinkCell;

    .line 1732
    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$2300(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;

    move-result-object p2

    invoke-virtual {p1, p2, v9}, Lorg/telegram/ui/FilterCreateActivity$LinkCell;->setInvite(Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;Z)V

    goto/16 :goto_7

    .line 1725
    :cond_5
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1726
    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$1900(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1727
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_6

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    goto :goto_1

    :cond_6
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    :goto_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 1719
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/FilterCreateActivity$ButtonCell;

    .line 1720
    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$400(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/FilterCreateActivity$ButtonCell;->setRed(Z)V

    .line 1721
    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$2200(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)I

    move-result p2

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$1900(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v9}, Lorg/telegram/ui/FilterCreateActivity$ButtonCell;->set(ILjava/lang/CharSequence;Z)V

    goto/16 :goto_7

    .line 1715
    :cond_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_9

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    goto :goto_2

    :cond_9
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    :goto_2
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 1667
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, p1

    check-cast v4, Lorg/telegram/ui/Cells/UserCell;

    .line 1668
    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$2000(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1669
    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$2000(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$1900(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    return-void

    .line 1672
    :cond_b
    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$2100(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    .line 1674
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 1677
    iget-boolean p1, v5, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p1, :cond_c

    .line 1678
    sget p1, Lorg/telegram/messenger/R$string;->Bot:I

    const-string p2, "Bot"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v7, p1

    goto :goto_4

    .line 1679
    :cond_c
    iget-boolean p1, v5, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz p1, :cond_d

    .line 1680
    sget p1, Lorg/telegram/messenger/R$string;->FilterContact:I

    const-string p2, "FilterContact"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 1682
    :cond_d
    sget p1, Lorg/telegram/messenger/R$string;->FilterNonContact:I

    const-string p2, "FilterNonContact"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :goto_4
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1684
    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_7

    .line 1687
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 1690
    iget p1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz p1, :cond_10

    .line 1691
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1692
    iget p1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    const-string p2, "Subscribers"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 1694
    :cond_f
    iget p1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    const-string p2, "Members"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_5
    move-object v7, p1

    goto :goto_6

    .line 1696
    :cond_10
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1697
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-boolean p1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_11

    .line 1698
    sget p1, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string p2, "ChannelPrivate"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 1700
    :cond_11
    sget p1, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string p2, "MegaPrivate"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 1703
    :cond_12
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-boolean p1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_13

    .line 1704
    sget p1, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string p2, "ChannelPublic"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 1706
    :cond_13
    sget p1, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string p2, "MegaPublic"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :goto_6
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1709
    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_7

    .line 1658
    :cond_14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1659
    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$1800(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 1660
    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$1900(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {v3, p2, v3}, Lorg/telegram/ui/FilterCreateActivity;->withNew(ILjava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1662
    :cond_15
    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$1900(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .line 1513
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->FLOATING_ACTION_BUTTON:I

    if-ne p2, p1, :cond_0

    .line 1514
    new-instance p1, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;-><init>(Landroid/content/Context;)V

    .line 1515
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 1612
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1607
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity$CreateLinkCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/FilterCreateActivity$CreateLinkCell;-><init>(Landroid/content/Context;)V

    .line 1608
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1594
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$2;

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/FilterCreateActivity;->access$1500(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v4

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$1600(Lorg/telegram/ui/FilterCreateActivity;)Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object p2

    iget v5, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/FilterCreateActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;II)V

    goto/16 :goto_1

    .line 1591
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;-><init>(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1587
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity$ButtonCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/FilterCreateActivity$ButtonCell;-><init>(Landroid/content/Context;)V

    .line 1588
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1584
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1530
    :pswitch_6
    new-instance p2, Lorg/telegram/ui/Cells/PollEditTextCell;

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/PollEditTextCell;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 1531
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->createErrorTextView()V

    .line 1532
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    new-instance v2, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/FilterCreateActivity;->access$000(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    new-instance v5, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-direct {v2, p2, v3, v5}, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;-><init>(Lorg/telegram/ui/Cells/PollEditTextCell;Lcom/iMe/fork/enums/FilterActivityType;Ljava/lang/Runnable;)V

    invoke-static {v0, v2}, Lorg/telegram/ui/FilterCreateActivity;->access$502(Lorg/telegram/ui/FilterCreateActivity;Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;)Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    .line 1534
    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/FilterCreateActivity$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    .line 1562
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 1563
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->setShowNextButton(Z)V

    .line 1564
    new-instance v2, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FilterCreateActivity$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v2, 0x10000006

    .line 1565
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1568
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1569
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1570
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1200(Lorg/telegram/ui/FilterCreateActivity;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1300(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1300(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/iMe/storage/domain/model/filters/FilterIcon;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1400(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1571
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1300(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1300(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/iMe/storage/domain/model/filters/FilterIcon;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1572
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$500(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$1300(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/iMe/storage/domain/model/filters/FilterIcon;

    move-result-object p2

    invoke-static {p2}, Lcom/iMe/utils/extentions/model/filter/FilterIconExtKt;->iconInfo(Lcom/iMe/storage/domain/model/filters/FilterIcon;)Lcom/iMe/ui/folder/FilterIconInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/folder/FilterIconInfo;->getOutlinedIcon()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;->setIcon(I)V

    goto :goto_0

    .line 1574
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$500(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$1400(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object p2

    invoke-static {p2}, Lcom/iMe/utils/extentions/model/topic/TopicExtKt;->info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/topics/TopicInfo;->getIconResId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;->setIcon(I)V

    goto :goto_0

    .line 1577
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$500(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;->setIcon(I)V

    .line 1579
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$500(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    move-result-object p1

    goto :goto_1

    .line 1523
    :pswitch_7
    new-instance p2, Lorg/telegram/ui/Cells/UserCell;

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2, v2}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 1524
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/UserCell;->setSelfAsSavedMessages(Z)V

    .line 1525
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    move-object p1, p2

    goto :goto_1

    .line 1519
    :pswitch_8
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v0, 0x16

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    .line 1520
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1615
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1620
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1622
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1000(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;)V

    .line 1624
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$500(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;->getPollEditTextCell()Lorg/telegram/ui/Cells/PollEditTextCell;

    move-result-object p1

    const/4 v0, 0x1

    .line 1625
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1626
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$600(Lorg/telegram/ui/FilterCreateActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$600(Lorg/telegram/ui/FilterCreateActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/FilterCreateActivity;->access$000(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v1

    sget-object v2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v1, v2, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->topic_name_hint:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->FilterNameHint:I

    const-string v2, "FilterNameHint"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Cells/PollEditTextCell;->setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 1627
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1633
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1635
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$500(Lorg/telegram/ui/FilterCreateActivity;)Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/PollEditTextCellWrapper;->getPollEditTextCell()Lorg/telegram/ui/Cells/PollEditTextCell;

    move-result-object p1

    .line 1636
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    .line 1637
    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 1639
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
