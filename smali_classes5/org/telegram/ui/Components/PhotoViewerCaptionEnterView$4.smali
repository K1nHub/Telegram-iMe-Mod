.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewerCaptionEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 842
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$2002(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;I)I

    .line 843
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 844
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 845
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$2100(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    .line 846
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$2202(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z

    .line 847
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$600(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;->onEmojiViewCloseEnd()V

    .line 848
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$2100(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 849
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$2100(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
