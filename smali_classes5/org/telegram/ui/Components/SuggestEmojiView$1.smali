.class Lorg/telegram/ui/Components/SuggestEmojiView$1;
.super Landroid/widget/FrameLayout;
.source "SuggestEmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SuggestEmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SuggestEmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SuggestEmojiView;Landroid/content/Context;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$1;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$1;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$000(Lorg/telegram/ui/Components/SuggestEmojiView;Landroid/graphics/Canvas;)V

    .line 61
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$1;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->drawContainerEnd(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/16 v0, 0xa

    .line 67
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const v3, 0x40d51eb8    # 6.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 77
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$1;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$100(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_3

    if-eqz v1, :cond_2

    .line 79
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$1;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$100(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->attach()V

    goto :goto_2

    .line 81
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$1;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$100(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->detach()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
