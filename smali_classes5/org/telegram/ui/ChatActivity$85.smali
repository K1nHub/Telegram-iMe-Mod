.class Lorg/telegram/ui/ChatActivity$85;
.super Lorg/telegram/ui/Components/TextSelectionHint;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->showTextSelectionHint(Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 13126
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$85;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/TextSelectionHint;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 13136
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/TextSelectionHint;->onDraw(Landroid/graphics/Canvas;)V

    .line 13137
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$85;->updatePosition()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 13130
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/TextSelectionHint;->onMeasure(II)V

    .line 13131
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$85;->updatePosition()V

    return-void
.end method

.method public updatePosition()V
    .locals 4

    .line 13141
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    neg-int v0, v0

    .line 13142
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$85;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$85;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    .line 13143
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextSelectionHint;->getPrepareProgress()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    mul-float/2addr v0, v3

    sub-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
