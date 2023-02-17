.class Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;
.super Lorg/telegram/ui/Components/TextViewSwitcher;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptionTextViewSwitcher"
.end annotation


# instance fields
.field private alpha:F

.field private inScrollView:Z

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 0

    .line 3072
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 3073
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/TextViewSwitcher;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3069
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->inScrollView:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3070
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->alpha:F

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 3100
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->inScrollView:Z

    if-eqz v0, :cond_0

    .line 3101
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->alpha:F

    return v0

    .line 3103
    :cond_0
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->getAlpha()F

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 3117
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onAttachedToWindow()V

    .line 3118
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$11500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3119
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->inScrollView:Z

    .line 3120
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3121
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->alpha:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3122
    invoke-super {p0, v0}, Landroid/widget/ViewSwitcher;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 3128
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onDetachedFromWindow()V

    .line 3129
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->inScrollView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3130
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->inScrollView:Z

    .line 3131
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3132
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->alpha:F

    invoke-super {p0, v0}, Landroid/widget/ViewSwitcher;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 3090
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->alpha:F

    .line 3091
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->inScrollView:Z

    if-eqz v0, :cond_0

    .line 3092
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 3094
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 3109
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->setTranslationY(F)V

    .line 3110
    iget-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->inScrollView:Z

    if-eqz p1, :cond_0

    .line 3111
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    const/4 v0, 0x1

    .line 3078
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setVisibility(IZ)V

    return-void
.end method

.method public setVisibility(IZ)V
    .locals 1

    .line 3082
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 3083
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->inScrollView:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3084
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
