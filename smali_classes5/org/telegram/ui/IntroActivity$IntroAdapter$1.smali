.class Lorg/telegram/ui/IntroActivity$IntroAdapter$1;
.super Landroid/widget/FrameLayout;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity$IntroAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$headerTextView:Landroid/widget/TextView;

.field final synthetic val$messageTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity$IntroAdapter;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 556
    iput-object p3, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->val$headerTextView:Landroid/widget/TextView;

    iput-object p4, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->val$messageTextView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p5, p3

    .line 559
    div-int/lit8 p5, p5, 0x4

    mul-int/lit8 p5, p5, 0x3

    const/16 p1, 0x113

    .line 560
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    const/16 p1, 0x96

    .line 561
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int/2addr p5, p1

    const/16 p1, 0x10

    .line 562
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr p5, p2

    const/16 p2, 0x12

    .line 563
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 564
    iget-object p3, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->val$headerTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->val$headerTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p3, p2, p5, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    int-to-float p2, p5

    .line 566
    iget-object p3, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->val$headerTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSize()F

    move-result p3

    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 567
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    add-int/2addr p2, p3

    .line 568
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 569
    iget-object p3, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->val$messageTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter$1;->val$messageTextView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method
