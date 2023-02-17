.class Lorg/telegram/ui/Components/EmojiView$7;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
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

    .line 2080
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2083
    instance-of v2, v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 2084
    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 2086
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$5900(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 2087
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2088
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getRecentEmoji()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 2089
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onClearEmojiRecent()V

    .line 2091
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->clearTouchesFor(Landroid/view/View;)V

    return v5

    .line 2093
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v4

    if-nez v4, :cond_14

    .line 2094
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    return v3

    :cond_2
    const/4 v6, 0x0

    const-string/jumbo v7, "\ud83c\udffb"

    const-string v8, ""

    .line 2101
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    if-eq v9, v4, :cond_3

    move-object v6, v7

    :cond_3
    const-string/jumbo v10, "\ud83c\udffc"

    if-nez v6, :cond_4

    .line 2106
    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    if-eq v9, v4, :cond_4

    move-object v6, v10

    :cond_4
    const-string/jumbo v11, "\ud83c\udffd"

    if-nez v6, :cond_5

    .line 2112
    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    if-eq v9, v4, :cond_5

    move-object v6, v11

    :cond_5
    const-string/jumbo v12, "\ud83c\udffe"

    if-nez v6, :cond_6

    .line 2118
    invoke-virtual {v4, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    if-eq v9, v4, :cond_6

    move-object v6, v12

    :cond_6
    const-string/jumbo v13, "\ud83c\udfff"

    if-nez v6, :cond_7

    .line 2124
    invoke-virtual {v4, v13, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    if-eq v9, v4, :cond_7

    move-object v6, v13

    .line 2129
    :cond_7
    sget-object v4, Lorg/telegram/messenger/EmojiData;->emojiColoredMap:Ljava/util/HashSet;

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2130
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/EmojiView;->access$6502(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 2131
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$6700(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v8

    invoke-static {v4, v8}, Lorg/telegram/ui/Components/EmojiView;->access$6602(Lorg/telegram/ui/Components/EmojiView;F)F

    .line 2132
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v8

    invoke-static {v4, v8}, Lorg/telegram/ui/Components/EmojiView;->access$6802(Lorg/telegram/ui/Components/EmojiView;F)F

    if-nez v6, :cond_8

    .line 2134
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$5900(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2135
    sget-object v4, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    :cond_8
    const/4 v4, 0x4

    const/4 v8, 0x2

    const/4 v14, 0x5

    if-eqz v6, :cond_e

    .line 2139
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/4 v15, 0x3

    packed-switch v16, :pswitch_data_0

    :goto_0
    const/4 v6, -0x1

    goto :goto_1

    :pswitch_0
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_0

    :cond_9
    const/4 v6, 0x4

    goto :goto_1

    :pswitch_1
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_0

    :cond_a
    const/4 v6, 0x3

    goto :goto_1

    :pswitch_2
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_0

    :cond_b
    const/4 v6, 0x2

    goto :goto_1

    :pswitch_3
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_0

    :cond_c
    const/4 v6, 0x1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_0

    :cond_d
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_1

    goto :goto_2

    .line 2153
    :pswitch_5
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v6

    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto :goto_2

    .line 2150
    :pswitch_6
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto :goto_2

    .line 2147
    :pswitch_7
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v6

    invoke-virtual {v6, v15}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto :goto_2

    .line 2144
    :pswitch_8
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v6

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto :goto_2

    .line 2141
    :pswitch_9
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto :goto_2

    .line 2157
    :cond_e
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    .line 2159
    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$7100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 2160
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getSelection()I

    move-result v7

    mul-int v6, v6, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getSelection()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x5

    goto :goto_3

    :cond_f
    const/4 v4, 0x1

    :goto_3
    sub-int/2addr v7, v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v6, v4

    .line 2161
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$7100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v4

    aget v4, v4, v3

    sub-int/2addr v4, v6

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    if-ge v4, v7, :cond_10

    .line 2162
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$7100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v4

    aget v4, v4, v3

    sub-int/2addr v4, v6

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    :goto_4
    sub-int/2addr v4, v7

    add-int/2addr v6, v4

    goto :goto_5

    .line 2163
    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$7100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v4

    aget v4, v4, v3

    sub-int/2addr v4, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$7200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v7

    add-int/2addr v4, v7

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v7, v10

    if-le v4, v7, :cond_11

    .line 2164
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$7100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v4

    aget v4, v4, v3

    sub-int/2addr v4, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$7200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v7

    add-int/2addr v4, v7

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v7, v10

    goto :goto_4

    :cond_11
    :goto_5
    neg-int v4, v6

    .line 2167
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    if-gez v6, :cond_12

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    .line 2169
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_13

    const/16 v6, 0x1e

    goto :goto_6

    :cond_13
    const/16 v6, 0x16

    :goto_6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v6, v4

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v9, v6}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setEmoji(Ljava/lang/String;I)V

    .line 2171
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$7300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2172
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$7300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$7400(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v9, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v9

    sub-int/2addr v7, v9

    div-int/2addr v7, v8

    add-int/2addr v6, v7

    sub-int/2addr v6, v3

    invoke-virtual {v2, v1, v4, v6}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 2173
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2174
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    .line 2175
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->clearTouchesFor(Landroid/view/View;)V

    return v5

    :cond_14
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1b0f3f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
