.class Lorg/telegram/ui/DataUsage2Activity$SubtitleCell;
.super Landroid/widget/FrameLayout;
.source "DataUsage2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DataUsage2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubtitleCell"
.end annotation


# instance fields
.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DataUsage2Activity;Landroid/content/Context;)V
    .locals 7

    .line 881
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 883
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$SubtitleCell;->textView:Landroid/widget/TextView;

    const/16 p2, 0x11

    .line 884
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 885
    iget-object p2, p0, Lorg/telegram/ui/DataUsage2Activity$SubtitleCell;->textView:Landroid/widget/TextView;

    const/4 v0, 0x1

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 886
    iget-object p2, p0, Lorg/telegram/ui/DataUsage2Activity$SubtitleCell;->textView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 888
    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$SubtitleCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0x77

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/16 v5, 0x18

    const/16 v6, 0xe

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 897
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$SubtitleCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
