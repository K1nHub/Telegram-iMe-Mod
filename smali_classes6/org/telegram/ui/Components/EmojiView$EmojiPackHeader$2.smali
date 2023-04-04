.class Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;I)V
    .locals 0

    .line 4856
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    iput p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;->val$state:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 4866
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;->val$state:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4867
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;->val$state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4868
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;->val$state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 4859
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4860
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4861
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
