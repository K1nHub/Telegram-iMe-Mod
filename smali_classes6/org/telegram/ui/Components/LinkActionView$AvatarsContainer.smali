.class Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;
.super Landroid/widget/FrameLayout;
.source "LinkActionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/LinkActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvatarsContainer"
.end annotation


# instance fields
.field avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

.field countTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/Components/LinkActionView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;)V
    .locals 5

    .line 854
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->this$0:Lorg/telegram/ui/Components/LinkActionView;

    .line 855
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 856
    new-instance v0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1, p1}, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer$1;-><init>(Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;Landroid/content/Context;ZLorg/telegram/ui/Components/LinkActionView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    .line 865
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 866
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 868
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->countTextView:Landroid/widget/TextView;

    const/high16 p2, 0x41600000    # 14.0f

    .line 871
    invoke-virtual {v4, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 872
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->countTextView:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 874
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->countTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x8

    .line 877
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, v1, p2, v1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 878
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    return-void
.end method
