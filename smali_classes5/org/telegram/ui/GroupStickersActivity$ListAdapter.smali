.class Lorg/telegram/ui/GroupStickersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "GroupStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupStickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/GroupStickersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/GroupStickersActivity;Landroid/content/Context;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 610
    iput-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1600(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1000(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$2000(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    return v1

    .line 704
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$2100(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x4

    return p1

    .line 706
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1800(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 673
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 620
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    goto/16 :goto_3

    .line 665
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    sget p2, Lorg/telegram/messenger/R$string;->ChooseStickerSetHeader:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 639
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1800(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 640
    sget p2, Lorg/telegram/messenger/R$string;->ChooseStickerSetMy:I

    const-string v0, "ChooseStickerSetMy"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "@stickers"

    .line 642
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 645
    :try_start_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 646
    new-instance v3, Lorg/telegram/ui/GroupStickersActivity$ListAdapter$1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/GroupStickersActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/GroupStickersActivity$ListAdapter;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x9

    const/16 v4, 0x12

    .line 652
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 653
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 655
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 656
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 659
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 622
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1700(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 623
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupStickersActivity;->access$1000(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v3

    sub-int/2addr p2, v3

    .line 624
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetCell;

    .line 625
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 626
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-eq p2, v0, :cond_4

    move p2, v1

    goto :goto_0

    :cond_4
    move p2, v2

    :goto_0
    invoke-virtual {p1, v4, p2}, Lorg/telegram/ui/Cells/StickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    .line 628
    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 629
    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    goto :goto_1

    .line 630
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupStickersActivity;->access$1400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupStickersActivity;->access$1400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p2, :cond_6

    .line 631
    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupStickersActivity;->access$1400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    goto :goto_1

    :cond_6
    const-wide/16 v4, 0x0

    .line 635
    :goto_1
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long p2, v6, v4

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/StickerSetCell;->setChecked(ZZ)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p1, "windowBackgroundWhite"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 692
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 693
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 687
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 688
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 683
    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/StickerSetCell;

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/StickerSetCell;-><init>(Landroid/content/Context;I)V

    .line 684
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 696
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
