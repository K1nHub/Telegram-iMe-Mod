.class Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->setPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)V
    .locals 0

    .line 1638
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1641
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1642
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji$1;->this$1:Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
