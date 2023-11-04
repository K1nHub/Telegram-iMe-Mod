.class Lorg/telegram/ui/Components/EmojiView$8;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 1920
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 9

    .line 1923
    instance-of p2, p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    .line 1924
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 1926
    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$6000(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1927
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1928
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getRecentEmoji()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 1929
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onClearEmojiRecent()V

    .line 1931
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->clearTouchesFor(Landroid/view/View;)V

    return v2

    .line 1933
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v1

    if-nez v1, :cond_c

    .line 1934
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    return v0

    :cond_2
    const-string v3, "\ud83c\udffb"

    const-string v4, ""

    .line 1938
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udffc"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udffd"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udffe"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udfff"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 1941
    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$6000(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1942
    sget-object v3, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1946
    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/CompoundEmoji;->isCompound(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_0

    :cond_4
    sget-object v4, Lorg/telegram/messenger/EmojiData;->emojiColoredMap:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v0

    .line 1947
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5, p2}, Lorg/telegram/ui/Components/EmojiView;->access$6302(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 1948
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6500(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/EmojiView;->access$6402(Lorg/telegram/ui/Components/EmojiView;F)F

    .line 1949
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6700(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/EmojiView;->access$6602(Lorg/telegram/ui/Components/EmojiView;F)F

    if-eqz v4, :cond_5

    .line 1952
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1954
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v4

    sget-object v5, Lorg/telegram/messenger/CompoundEmoji;->skinTones:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->setSelection(I)V

    .line 1956
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->setEmoji(Ljava/lang/String;)V

    .line 1958
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->getPopupWidth()I

    move-result v1

    .line 1959
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->getPopupHeight()I

    move-result v3

    .line 1961
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1963
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->isCompound()Z

    move-result v4

    const/4 v5, 0x5

    if-nez v4, :cond_7

    .line 1964
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->getSelection()I

    move-result v6

    mul-int/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->getSelection()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v5

    goto :goto_2

    :cond_6
    move v7, v2

    :goto_2
    sub-int/2addr v6, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_3

    :cond_7
    move v4, v0

    .line 1966
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v6

    aget v6, v6, v0

    sub-int/2addr v6, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 1967
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v1

    aget v1, v1, v0

    sub-int/2addr v1, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v1, v5

    add-int/2addr v4, v1

    goto :goto_4

    .line 1968
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v6

    aget v6, v6, v0

    sub-int/2addr v6, v4

    add-int/2addr v6, v1

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_9

    .line 1969
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v6

    aget v6, v6, v0

    sub-int/2addr v6, v4

    add-int/2addr v6, v1

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v1, v5

    sub-int/2addr v6, v1

    add-int/2addr v4, v6

    :cond_9
    :goto_4
    neg-int v1, v4

    .line 1972
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    if-gez v4, :cond_a

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    .line 1974
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object p2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0x1e

    goto :goto_5

    :cond_b
    const/16 v4, 0x16

    :goto_5
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->setupArrow(I)V

    .line 1975
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1976
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    sub-int/2addr v4, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    sub-int/2addr v4, v0

    invoke-virtual {p2, p1, v1, v4}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1977
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$5600(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1978
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    .line 1979
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->clearTouchesFor(Landroid/view/View;)V

    return v2

    :cond_c
    return v0
.end method
