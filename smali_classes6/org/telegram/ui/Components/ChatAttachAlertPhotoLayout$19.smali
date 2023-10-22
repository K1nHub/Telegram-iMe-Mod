.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;
.super Landroid/view/ViewOutlineProvider;
.source "ChatAttachAlertPhotoLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 2246
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 9

    .line 2249
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentTextViewTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->clipBottom()F

    move-result v1

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 2250
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2251
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    .line 2252
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2253
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    .line 2255
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2256
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipLeft:F

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipTop:F

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v1, v4

    add-float/2addr v3, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget v4, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipRight:F

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipBottom:F

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2257
    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, v1, v2, v3, p1}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_2

    .line 2258
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-nez v1, :cond_4

    const/high16 v1, 0x41000000    # 8.0f

    .line 2259
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    mul-float/2addr v2, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 2260
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F

    move-result v2

    float-to-int v4, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F

    move-result v2

    float-to-int v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v6, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int v7, p1, v1

    int-to-float v8, v1

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_2

    .line 2262
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v1, p1}, Landroid/graphics/Outline;->setRect(IIII)V

    :goto_2
    return-void
.end method
