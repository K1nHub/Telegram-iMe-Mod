.class public Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
.super Landroid/widget/FrameLayout;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BottomSheetCell"
.end annotation


# instance fields
.field currentType:I

.field private imageView:Landroid/widget/ImageView;

.field public isSelected:Z

.field private needDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 872
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 876
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 976
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->isSelected:Z

    .line 877
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 879
    iput p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->currentType:I

    .line 880
    invoke-static {v0, p3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 883
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    .line 884
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 885
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 886
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    or-int/lit8 v1, v1, 0x10

    const/16 v4, 0x38

    const/16 v5, 0x30

    invoke-static {v4, v5, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 889
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 890
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 891
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 892
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-nez p2, :cond_2

    .line 894
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 895
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    const/high16 p3, 0x41800000    # 16.0f

    invoke-virtual {p2, p1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 896
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    or-int/lit8 p2, v2, 0x10

    const/4 p3, -0x2

    invoke-static {p3, p3, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_2
    const-string p3, "fonts/rmedium.ttf"

    const/high16 v1, 0x41600000    # 14.0f

    const/16 v2, 0x11

    if-ne p2, p1, :cond_3

    .line 898
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 899
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 900
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 901
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 902
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    const/4 p2, -0x1

    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    .line 904
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 905
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 906
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 907
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 908
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getThemedColor(I)I

    move-result p3

    new-array p1, p1, [F

    const/high16 v1, 0x40c00000    # 6.0f

    aput v1, p1, v0

    invoke-static {p3, p1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 909
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x10

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;)Landroid/widget/TextView;
    .locals 0

    .line 837
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;)Landroid/widget/ImageView;
    .locals 0

    .line 837
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 965
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 857
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 858
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 980
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 981
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->isSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 982
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 915
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->currentType:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/16 v0, 0x50

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    if-nez p2, :cond_1

    .line 917
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 919
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 931
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setIconColor(I)V
    .locals 3

    .line 927
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 0

    .line 847
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->needDivider:Z

    xor-int/lit8 p1, p1, 0x1

    .line 848
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndIcon(Ljava/lang/CharSequence;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 935
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)V
    .locals 2

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x15

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-nez p2, :cond_3

    if-eqz p3, :cond_0

    goto :goto_2

    .line 959
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 960
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    if-eqz p4, :cond_1

    move p3, p1

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p2, p3, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_7

    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    .line 946
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 948
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 950
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 p2, 0x48

    if-eqz p4, :cond_9

    .line 952
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget-boolean p4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p4, :cond_5

    move p4, p1

    goto :goto_4

    :cond_5
    move p4, p2

    :goto_4
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_6

    move p1, p2

    :cond_6
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p3, p4, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 953
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 p3, 0x5

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_5

    :cond_7
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    :goto_5
    sget-boolean p4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p4, :cond_8

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    :cond_8
    invoke-virtual {p1, p2, v1, p3, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_7

    .line 955
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_a

    move p3, v0

    goto :goto_6

    :cond_a
    move p3, p2

    :goto_6
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    sget-boolean p4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p4, :cond_b

    move v0, p2

    :cond_b
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p3, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 956
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    :goto_7
    return-void
.end method

.method public setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 939
    invoke-virtual {p0, p1, v0, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
