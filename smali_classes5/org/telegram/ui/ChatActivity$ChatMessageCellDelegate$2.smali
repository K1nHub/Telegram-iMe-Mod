.class Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;
.super Landroid/widget/FrameLayout;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field path:Landroid/graphics/Path;

.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Landroid/content/Context;)V
    .locals 0

    .line 33152
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33170
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 33173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 33174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 33175
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 33176
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->path:Landroid/graphics/Path;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v5, v0

    int-to-float v5, v5

    const/4 v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 33177
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 33178
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 33179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 33181
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 33155
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 33156
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->closeMenu()V

    .line 33158
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 33163
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/16 v0, 0x12c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-nez p2, :cond_0

    .line 33165
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    :cond_0
    const/high16 v0, -0x80000000

    .line 33167
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
