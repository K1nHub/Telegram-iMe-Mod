.class public Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;
.super Landroid/widget/FrameLayout;
.source "ReportAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ReportAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BottomSheetCell"
.end annotation


# instance fields
.field private background:Landroid/view/View;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->background:Landroid/view/View;

    .line 86
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    aput v5, v3, v4

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->background:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    .line 90
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 91
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 94
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    const/4 p2, -0x2

    invoke-static {p2, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->background:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getBackgroundPublic()Landroid/view/View;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->background:Landroid/view/View;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x50

    .line 103
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
