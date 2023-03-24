.class Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;
.super Ljava/lang/Object;
.source "StickerMasksAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;


# direct methods
.method public static synthetic $r8$lambda$CGFCI0mzPD1qQ8Wsn-8OTNv6a_0(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;ILjava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->lambda$run$0(ILjava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wd12TsFIjKxnNmlQ3bYGL_o9hUY(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->lambda$run$1(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cwpchkeR_7Y3NsOXzwzO_RjnpXY(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/util/ArrayList;Landroid/util/LongSparseArray;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->lambda$run$2(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/util/ArrayList;Landroid/util/LongSparseArray;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)V
    .locals 0

    .line 1694
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clear()V
    .locals 2

    .line 1697
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cleared:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1700
    iput-boolean v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cleared:Z

    .line 1701
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5000(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1702
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5100(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1703
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5200(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1704
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5300(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1705
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5400(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private synthetic lambda$run$0(ILjava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4

    .line 1752
    iget-object p4, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {p4}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5600(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)I

    move-result p4

    if-eq p1, p4, :cond_0

    return-void

    .line 1756
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p4, 0x0

    move v0, p4

    :goto_0
    if-ge p4, p1, :cond_3

    .line 1757
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 1758
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 1759
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1760
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->clear()V

    .line 1761
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5000(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1762
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5000(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5100(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 1769
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 1770
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5900(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)I

    move-result p1

    if-nez p1, :cond_5

    .line 1771
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->clear()V

    .line 1772
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->notifyDataSetChanged()V

    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic lambda$run$1(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V
    .locals 5

    .line 1818
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->emoticon:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1819
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3400(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->access$5800(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;)Lorg/telegram/ui/Components/CloseProgressDrawable2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->stopAnimation()V

    .line 1820
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5902(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;I)I

    .line 1821
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    if-nez p1, :cond_0

    return-void

    .line 1824
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    .line 1825
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1826
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1827
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1828
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {p4, v3, v4}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_1

    goto :goto_1

    .line 1831
    :cond_1
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1833
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_4

    .line 1835
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5000(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;

    move-result-object p2

    iget-object p4, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {p4}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 1837
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5100(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1839
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->notifyDataSetChanged()V

    .line 1841
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$400(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    move-result-object p2

    if-eq p1, p2, :cond_5

    .line 1842
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$400(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$run$2(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/util/ArrayList;Landroid/util/LongSparseArray;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1817
    new-instance p5, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1$$ExternalSyntheticLambda0;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1710
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1713
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cleared:Z

    .line 1714
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5604(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)I

    move-result v0

    .line 1716
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1717
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 1718
    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4900(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object v4

    .line 1719
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xe

    const/4 v7, 0x1

    if-gt v5, v6, :cond_8

    .line 1720
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 1721
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v8, v1

    :goto_0
    if-ge v8, v6, :cond_5

    add-int/lit8 v9, v6, -0x1

    const/4 v10, 0x2

    if-ge v8, v9, :cond_3

    .line 1723
    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const v11, 0xd83c

    if-ne v9, v11, :cond_1

    add-int/lit8 v9, v8, 0x1

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const v12, 0xdffb

    if-lt v11, v12, :cond_1

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const v11, 0xdfff

    if-le v9, v11, :cond_2

    :cond_1
    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v11, 0x200d

    if-ne v9, v11, :cond_3

    add-int/lit8 v9, v8, 0x1

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x2640

    if-eq v11, v12, :cond_2

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v11, 0x2642

    if-ne v9, v11, :cond_3

    :cond_2
    new-array v9, v10, [Ljava/lang/CharSequence;

    .line 1724
    invoke-interface {v5, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v1

    add-int/lit8 v10, v8, 0x2

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {v5, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v9, v7

    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, v6, -0x2

    goto :goto_1

    .line 1727
    :cond_3
    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const v11, 0xfe0f

    if-ne v9, v11, :cond_4

    new-array v9, v10, [Ljava/lang/CharSequence;

    .line 1728
    invoke-interface {v5, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v1

    add-int/lit8 v10, v8, 0x1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {v5, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v9, v7

    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, v6, -0x1

    :goto_1
    add-int/lit8 v8, v8, -0x1

    :cond_4
    add-int/2addr v8, v7

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    .line 1733
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_8

    .line 1734
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1735
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->clear()V

    .line 1736
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1737
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v1

    :goto_3
    if-ge v8, v6, :cond_7

    .line 1738
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1739
    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v3, v10, v11, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1741
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5000(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5100(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v4, :cond_a

    .line 1745
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_a

    .line 1746
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v5

    .line 1747
    iget-object v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$5700(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1748
    iget-object v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4900(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 1750
    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$5702(Lorg/telegram/ui/Components/StickerMasksAlert;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1751
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4900(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$5700(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0, v0, v4}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;ILjava/util/HashMap;)V

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Z)V

    .line 1776
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4900(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1778
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_4
    const/16 v6, 0x20

    if-ge v5, v4, :cond_f

    .line 1779
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1780
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v9}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_c

    if-eqz v8, :cond_b

    .line 1781
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_e

    .line 1782
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->clear()V

    .line 1783
    iget-object v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5200(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    iget-object v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5400(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1786
    :cond_c
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    if-eqz v8, :cond_e

    iget-object v9, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v9}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_e

    if-eqz v8, :cond_d

    .line 1787
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_e

    .line 1788
    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->clear()V

    .line 1789
    iget-object v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5200(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1790
    iget-object v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5300(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;

    move-result-object v6

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1794
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4900(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1795
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_6
    if-ge v1, v4, :cond_14

    .line 1796
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1797
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v8}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_11

    if-eqz v7, :cond_10

    .line 1798
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_13

    .line 1799
    :cond_10
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->clear()V

    .line 1800
    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v8}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5200(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1801
    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v8}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5400(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1803
    :cond_11
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    if-eqz v7, :cond_13

    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v8}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_13

    if-eqz v7, :cond_12

    .line 1804
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_13

    .line 1805
    :cond_12
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->clear()V

    .line 1806
    iget-object v7, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5200(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    iget-object v7, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5300(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1812
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->isValidEmoji(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1813
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3400(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->access$5800(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;)Lorg/telegram/ui/Components/CloseProgressDrawable2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->startAnimation()V

    .line 1814
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;-><init>()V

    .line 1815
    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->emoticon:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 1816
    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->hash:J

    .line 1817
    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v5, v4, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4900(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v1, v2, v3}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V

    invoke-virtual {v5, v1, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5902(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;I)I

    :cond_15
    if-eqz v0, :cond_16

    .line 1847
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5200(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->access$5000(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$400(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_17

    .line 1848
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$400(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1850
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
