.class Lorg/telegram/ui/Components/StickerTabView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StickerTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerTabView;->animateIfPositionChanged(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickerTabView;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerTabView;Landroid/view/ViewGroup;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerTabView$3;->this$0:Lorg/telegram/ui/Components/StickerTabView;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickerTabView$3;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView$3;->this$0:Lorg/telegram/ui/Components/StickerTabView;

    const/4 v0, 0x0

    iput v0, p1, Lorg/telegram/ui/Components/StickerTabView;->dragOffset:F

    .line 188
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 189
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView$3;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
