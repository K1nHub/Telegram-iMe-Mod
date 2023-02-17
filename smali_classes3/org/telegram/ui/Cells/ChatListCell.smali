.class public Lorg/telegram/ui/Cells/ChatListCell;
.super Landroid/widget/LinearLayout;
.source "ChatListCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ChatListCell$ListView;
    }
.end annotation


# instance fields
.field private listView:[Lorg/telegram/ui/Cells/ChatListCell$ListView;


# direct methods
.method public static synthetic $r8$lambda$rpSeg0ECJWQ7S172rA2W1r-knsA(Lorg/telegram/ui/Cells/ChatListCell;ZZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatListCell;->lambda$new$0(ZZLandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 156
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/Cells/ChatListCell$ListView;

    .line 28
    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatListCell;->listView:[Lorg/telegram/ui/Cells/ChatListCell$ListView;

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x15

    .line 158
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v1, 0x0

    .line 160
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatListCell;->listView:[Lorg/telegram/ui/Cells/ChatListCell$ListView;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 169
    :goto_2
    new-instance v6, Lorg/telegram/ui/Cells/ChatListCell$ListView;

    invoke-direct {v6, p0, p1, v3, v4}, Lorg/telegram/ui/Cells/ChatListCell$ListView;-><init>(Lorg/telegram/ui/Cells/ChatListCell;Landroid/content/Context;ZZ)V

    aput-object v6, v2, v1

    .line 170
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatListCell;->listView:[Lorg/telegram/ui/Cells/ChatListCell$ListView;

    aget-object v2, v2, v1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x5

    if-nez v1, :cond_2

    const/4 v10, 0x0

    goto :goto_3

    :cond_2
    const/4 v10, 0x5

    :goto_3
    const/4 v11, 0x0

    if-ne v1, v5, :cond_3

    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    const/4 v5, 0x5

    :goto_4
    const/4 v12, 0x0

    move v9, v10

    move v10, v11

    move v11, v5

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatListCell;->listView:[Lorg/telegram/ui/Cells/ChatListCell$ListView;

    aget-object v2, v2, v1

    new-instance v5, Lorg/telegram/ui/Cells/ChatListCell$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3, v4}, Lorg/telegram/ui/Cells/ChatListCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ChatListCell;ZZ)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$0(ZZLandroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 173
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatListCell;->listView:[Lorg/telegram/ui/Cells/ChatListCell$ListView;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 174
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatListCell$ListView;->access$000(Lorg/telegram/ui/Cells/ChatListCell$ListView;)Lorg/telegram/ui/Components/RadioButton;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatListCell;->listView:[Lorg/telegram/ui/Cells/ChatListCell$ListView;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    if-ne v3, p3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatListCell;->didSelectChatType(ZZ)V

    return-void
.end method


# virtual methods
.method protected didSelectChatType(ZZ)V
    .locals 0

    return-void
.end method

.method public invalidate()V
    .locals 3

    .line 187
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 v0, 0x0

    .line 188
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatListCell;->listView:[Lorg/telegram/ui/Cells/ChatListCell$ListView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 189
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 195
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x9b

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
