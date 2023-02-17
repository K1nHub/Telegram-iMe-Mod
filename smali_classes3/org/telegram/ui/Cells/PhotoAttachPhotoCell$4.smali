.class Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoAttachPhotoCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Z)V
    .locals 0

    .line 411
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$4;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$4;->val$checked:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$4;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$1100(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$4;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$1100(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 425
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$4;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$1102(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$4;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$1100(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$4;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$1100(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 415
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$4;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->access$1102(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 416
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$4;->val$checked:Z

    if-nez p1, :cond_0

    .line 417
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$4;->this$0:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
