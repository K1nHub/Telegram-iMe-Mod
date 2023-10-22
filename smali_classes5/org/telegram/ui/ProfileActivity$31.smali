.class Lorg/telegram/ui/ProfileActivity$31;
.super Lorg/telegram/ui/PinchToZoomHelper;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .line 5121
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/PinchToZoomHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected drawOverlays(Landroid/graphics/Canvas;FFFFF)V
    .locals 4

    const/4 p3, 0x0

    cmpl-float p4, p2, p3

    if-lez p4, :cond_5

    .line 5145
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    iget-object p6, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p6}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p6

    invoke-virtual {p6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p6

    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p6, v0

    int-to-float p6, p6

    invoke-virtual {p4, p3, p3, p5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p5, 0x437f0000    # 255.0f

    mul-float/2addr p5, p2

    float-to-int p5, p5

    const/16 p6, 0x1f

    .line 5146
    invoke-virtual {p1, p4, p5, p6}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 5148
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$13400(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5150
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$18300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    .line 5157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5158
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$18900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getX()F

    move-result p4

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$19000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getY()F

    move-result p5

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5159
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$19100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p4, 0x0

    :goto_0
    const/4 p5, 0x2

    if-ge p4, p5, :cond_4

    .line 5163
    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$13600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$13600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageView;->getVisibility()I

    move-result p5

    if-nez p5, :cond_0

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$13600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageView;->getAlpha()F

    move-result p5

    cmpl-float p5, p5, p3

    if-lez p5, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 p5, 0x1

    if-ne p4, p5, :cond_3

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$13700(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object p5

    if-eqz p5, :cond_3

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$13700(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageView;->getVisibility()I

    move-result p5

    if-nez p5, :cond_3

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$13700(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageView;->getAlpha()F

    move-result p5

    cmpl-float p5, p5, p3

    if-lez p5, :cond_3

    .line 5164
    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    if-nez p4, :cond_2

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$13600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p5

    goto :goto_1

    :cond_2
    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$13700(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object p5

    .line 5165
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 p6, 0x3f000000    # 0.5f

    mul-float v0, p2, p6

    add-float/2addr v0, p6

    .line 5167
    invoke-virtual {p5}, Landroid/view/View;->getX()F

    move-result p6

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p6, v1

    invoke-virtual {p5}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    invoke-virtual {p1, v0, v0, p6, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 5168
    invoke-virtual {p5}, Landroid/view/View;->getX()F

    move-result p6

    invoke-virtual {p5}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1, p6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5169
    invoke-virtual {p5, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    .line 5173
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method protected invalidateViews()V
    .locals 2

    .line 5127
    invoke-super {p0}, Lorg/telegram/ui/PinchToZoomHelper;->invalidateViews()V

    .line 5128
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$18200(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    .line 5129
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5130
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5132
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5133
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 5136
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13700(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5137
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13700(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method protected zoomEnabled(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;)Z
    .locals 1

    .line 5179
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/PinchToZoomHelper;->zoomEnabled(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 5182
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    move p2, v0

    :cond_1
    return p2
.end method
