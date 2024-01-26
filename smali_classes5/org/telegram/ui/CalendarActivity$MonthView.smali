.class Lorg/telegram/ui/CalendarActivity$MonthView;
.super Landroid/widget/FrameLayout;
.source "CalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthView"
.end annotation


# instance fields
.field cellCount:I

.field currentMonthInYear:I

.field currentYear:I

.field daysInMonth:I

.field gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field imagesByDays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field messagesByDays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/ui/CalendarActivity$PeriodDay;",
            ">;"
        }
    .end annotation
.end field

.field private rowAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private rowSelectionPos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/ui/CalendarActivity$RowAnimationValue;",
            ">;"
        }
    .end annotation
.end field

.field startDayOfWeek:I

.field startMonthTime:I

.field final synthetic this$0:Lorg/telegram/ui/CalendarActivity;

.field titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$SinsKIpLjv7rvEXKd-Kyy2N9aKo(Lorg/telegram/ui/CalendarActivity$MonthView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView;->lambda$new$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$u8bpCIGyJ0Dm_wrzoiZYUDZw-7Q(Lorg/telegram/ui/CalendarActivity$MonthView;Lorg/telegram/ui/CalendarActivity$RowAnimationValue;FFFFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/CalendarActivity$MonthView;->lambda$animateRow$1(Lorg/telegram/ui/CalendarActivity$RowAnimationValue;FFFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;)V
    .locals 9

    .line 720
    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    .line 721
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 713
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    .line 714
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    .line 1018
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->rowAnimators:Landroid/util/SparseArray;

    .line 1019
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->rowSelectionPos:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 722
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 723
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 724
    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$1400(Lorg/telegram/ui/CalendarActivity;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$1500(Lorg/telegram/ui/CalendarActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v2, Lorg/telegram/ui/CalendarActivity$MonthView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CalendarActivity$MonthView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 751
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v2, Lorg/telegram/ui/CalendarActivity$MonthView$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$1;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView;Lorg/telegram/ui/CalendarActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 781
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 782
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 783
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 784
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 785
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, -0x1

    const/16 v3, 0x1c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    new-instance v1, Landroidx/core/view/GestureDetectorCompat;

    new-instance v2, Lorg/telegram/ui/CalendarActivity$MonthView$2;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/CalendarActivity$MonthView$2;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView;Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;)V

    invoke-direct {v1, p2, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 985
    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$1400(Lorg/telegram/ui/CalendarActivity;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroidx/core/view/GestureDetectorCompat;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/CalendarActivity$MonthView;II)V
    .locals 0

    .line 703
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CalendarActivity$MonthView;->startSelectionAnimation(II)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/CalendarActivity$MonthView;F)V
    .locals 0

    .line 703
    invoke-direct {p0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView;->setSelectionValue(F)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/CalendarActivity$MonthView;)Landroid/util/SparseArray;
    .locals 0

    .line 703
    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->rowAnimators:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/CalendarActivity$MonthView;)Landroid/util/SparseArray;
    .locals 0

    .line 703
    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->rowSelectionPos:Landroid/util/SparseArray;

    return-object p0
.end method

.method private synthetic lambda$animateRow$1(Lorg/telegram/ui/CalendarActivity$RowAnimationValue;FFFFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1055
    invoke-virtual {p8}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ljava/lang/Float;

    invoke-virtual {p8}, Ljava/lang/Float;->floatValue()F

    move-result p8

    sub-float/2addr p3, p2

    mul-float/2addr p3, p8

    add-float/2addr p2, p3

    .line 1056
    iput p2, p1, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;->startX:F

    sub-float/2addr p5, p4

    mul-float/2addr p5, p8

    add-float/2addr p4, p5

    .line 1057
    iput p4, p1, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;->endX:F

    sub-float/2addr p7, p6

    mul-float/2addr p7, p8

    add-float/2addr p6, p7

    .line 1058
    iput p6, p1, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;->alpha:F

    .line 1059
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)Z
    .locals 6

    .line 726
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x1

    move v2, p1

    move v3, v2

    move v1, v0

    .line 731
    :goto_0
    iget v4, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->daysInMonth:I

    if-ge v1, v4, :cond_3

    .line 732
    iget-object v4, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    if-eqz v4, :cond_2

    if-ne v2, p1, :cond_1

    .line 735
    iget v2, v4, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    .line 737
    :cond_1
    iget v3, v4, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-ltz v2, :cond_4

    if-ltz v3, :cond_4

    .line 742
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/telegram/ui/CalendarActivity;->access$702(Lorg/telegram/ui/CalendarActivity;Z)Z

    .line 743
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/CalendarActivity;->access$502(Lorg/telegram/ui/CalendarActivity;I)I

    .line 744
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/CalendarActivity;->access$602(Lorg/telegram/ui/CalendarActivity;I)I

    .line 745
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$800(Lorg/telegram/ui/CalendarActivity;)V

    .line 746
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$900(Lorg/telegram/ui/CalendarActivity;)V

    :cond_4
    return v0
.end method

.method private setSelectionValue(F)V
    .locals 4

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1007
    :goto_0
    iget v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->daysInMonth:I

    if-ge v0, v1, :cond_1

    .line 1008
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    if-eqz v1, :cond_0

    .line 1010
    iget v2, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->fromSelProgress:F

    iget v3, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->toSelProgress:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->selectProgress:F

    .line 1011
    iget v2, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->fromSelSEProgress:F

    iget v3, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->toSelSEProgress:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->selectStartEndProgress:F

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private startSelectionAnimation(II)V
    .locals 6

    .line 989
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 990
    :goto_0
    iget v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->daysInMonth:I

    if-ge v0, v1, :cond_4

    .line 991
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    if-eqz v1, :cond_3

    .line 993
    iget v2, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->selectProgress:F

    iput v2, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->fromSelProgress:F

    .line 994
    iget v2, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-lt v2, p1, :cond_0

    if-gt v2, p2, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v4

    :goto_1
    iput v5, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->toSelProgress:F

    .line 996
    iget v5, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->selectStartEndProgress:F

    iput v5, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->fromSelSEProgress:F

    if-eq v2, p1, :cond_2

    if-ne v2, p2, :cond_1

    goto :goto_2

    .line 999
    :cond_1
    iput v4, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->toSelSEProgress:F

    goto :goto_3

    .line 998
    :cond_2
    :goto_2
    iput v3, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->toSelSEProgress:F

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public animateRow(IIIZZ)V
    .locals 16

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v0, p2

    .line 1028
    iget-object v1, v9, Lorg/telegram/ui/CalendarActivity$MonthView;->rowAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 1029
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1031
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    .line 1034
    iget-object v2, v9, Lorg/telegram/ui/CalendarActivity$MonthView;->rowSelectionPos:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    .line 1036
    iget v5, v2, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;->startX:F

    .line 1037
    iget v6, v2, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;->endX:F

    .line 1038
    iget v2, v2, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;->alpha:F

    move v7, v2

    goto :goto_0

    :cond_1
    int-to-float v2, v0

    mul-float/2addr v2, v1

    div-float v5, v1, v4

    add-float/2addr v2, v5

    move v5, v2

    move v6, v5

    move v7, v3

    :goto_0
    if-eqz p4, :cond_2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    div-float v2, v1, v4

    add-float/2addr v0, v2

    move v11, v0

    goto :goto_1

    :cond_2
    move v11, v5

    :goto_1
    if-eqz p4, :cond_3

    move/from16 v0, p3

    int-to-float v0, v0

    mul-float/2addr v0, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    move v12, v0

    goto :goto_2

    :cond_3
    move v12, v6

    :goto_2
    if-eqz p4, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    move v13, v0

    goto :goto_3

    :cond_4
    move v13, v3

    .line 1048
    :goto_3
    new-instance v14, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;

    invoke-direct {v14, v5, v6}, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;-><init>(FF)V

    .line 1049
    iget-object v0, v9, Lorg/telegram/ui/CalendarActivity$MonthView;->rowSelectionPos:Landroid/util/SparseArray;

    invoke-virtual {v0, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p5, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1052
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 1053
    sget-object v0, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1054
    new-instance v8, Lorg/telegram/ui/CalendarActivity$MonthView$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v14

    move v3, v5

    move v4, v11

    move v5, v6

    move v6, v12

    move-object v10, v8

    move v8, v13

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/CalendarActivity$MonthView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView;Lorg/telegram/ui/CalendarActivity$RowAnimationValue;FFFFFF)V

    invoke-virtual {v15, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1061
    new-instance v8, Lorg/telegram/ui/CalendarActivity$MonthView$3;

    move-object v0, v8

    move v3, v11

    move v4, v12

    move v5, v13

    move/from16 v6, p1

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/CalendarActivity$MonthView$3;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView;Lorg/telegram/ui/CalendarActivity$RowAnimationValue;FFFIZ)V

    invoke-virtual {v15, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1077
    invoke-virtual {v15}, Landroid/animation/ValueAnimator;->start()V

    .line 1078
    iget-object v0, v9, Lorg/telegram/ui/CalendarActivity$MonthView;->rowAnimators:Landroid/util/SparseArray;

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 1080
    :cond_5
    iput v11, v14, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;->startX:F

    .line 1081
    iput v12, v14, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;->endX:F

    .line 1082
    iput v13, v14, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;->alpha:F

    .line 1083
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dismissRowAnimations(Z)V
    .locals 8

    const/4 v0, 0x0

    .line 1022
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->rowSelectionPos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1023
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->rowSelectionPos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/CalendarActivity$MonthView;->animateRow(IIIZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1343
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1345
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1346
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1347
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1354
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1357
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1358
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1187
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1190
    iget v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->startDayOfWeek:I

    .line 1191
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v8, 0x40e00000    # 7.0f

    div-float v9, v2, v8

    const/16 v2, 0x34

    .line 1192
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v10, v2

    const/16 v11, 0x2c

    .line 1194
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    int-to-double v4, v3

    .line 1195
    iget v6, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->startDayOfWeek:I

    iget v13, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->daysInMonth:I

    add-int/2addr v6, v13

    int-to-float v6, v6

    div-float/2addr v6, v8

    float-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    cmpg-double v4, v4, v13

    const/high16 v13, 0x40000000    # 2.0f

    if-gez v4, :cond_1

    int-to-float v4, v3

    mul-float/2addr v4, v10

    div-float v5, v10, v13

    add-float/2addr v4, v5

    .line 1196
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 1197
    iget-object v5, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->rowSelectionPos:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;

    if-eqz v5, :cond_0

    .line 1199
    iget-object v6, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v6}, Lorg/telegram/ui/CalendarActivity;->access$3800(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v6

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1200
    iget-object v6, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v6}, Lorg/telegram/ui/CalendarActivity;->access$3800(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v6

    iget v14, v5, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;->alpha:F

    const v15, 0x42233333    # 40.8f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1201
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v14, v5, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;->startX:F

    int-to-float v15, v2

    div-float/2addr v15, v13

    sub-float/2addr v14, v15

    sub-float v13, v4, v15

    iget v5, v5, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;->endX:F

    add-float/2addr v5, v15

    add-float/2addr v4, v15

    invoke-virtual {v6, v14, v13, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v4, 0x20

    .line 1202
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    .line 1203
    iget-object v5, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v5}, Lorg/telegram/ui/CalendarActivity;->access$3800(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v7, v6, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v14, v1

    const/4 v6, 0x0

    const/4 v15, 0x0

    .line 1206
    :goto_1
    iget v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->daysInMonth:I

    if-ge v15, v1, :cond_14

    int-to-float v1, v14

    mul-float/2addr v1, v9

    div-float v2, v9, v13

    add-float v5, v1, v2

    int-to-float v1, v6

    mul-float/2addr v1, v10

    div-float v2, v10, v13

    add-float/2addr v1, v2

    .line 1208
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float v4, v1, v2

    .line 1209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v16, 0x3e8

    div-long v1, v1, v16

    long-to-int v1, v1

    .line 1211
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2, v15, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    .line 1212
    :cond_2
    iget v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->startMonthTime:I

    add-int/lit8 v16, v15, 0x1

    const v17, 0x15180

    mul-int v18, v16, v17

    add-int v2, v2, v18

    const/16 v18, 0x5

    if-lt v1, v2, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$3900(Lorg/telegram/ui/CalendarActivity;)I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$3900(Lorg/telegram/ui/CalendarActivity;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->startMonthTime:I

    add-int/lit8 v19, v15, 0x2

    mul-int v19, v19, v17

    add-int v2, v2, v19

    if-le v1, v2, :cond_3

    goto/16 :goto_7

    :cond_3
    const v2, 0x3c23d70a    # 0.01f

    const/high16 v17, 0x437f0000    # 255.0f

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v3, :cond_f

    .line 1217
    iget-boolean v1, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->hasImage:Z

    if-eqz v1, :cond_f

    .line 1219
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1220
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$200(Lorg/telegram/ui/CalendarActivity;)Z

    move-result v1

    const/4 v13, 0x0

    if-eqz v1, :cond_4

    iget-boolean v1, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->wasDrawn:Z

    if-nez v1, :cond_4

    .line 1221
    iput v13, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->enterAlpha:F

    .line 1222
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    add-float/2addr v1, v4

    iget-object v11, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v11, v11, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v1, v11

    const/high16 v11, 0x43160000    # 150.0f

    mul-float/2addr v1, v11

    invoke-static {v13, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->startEnterDelay:F

    .line 1224
    :cond_4
    iget v1, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->startEnterDelay:F

    cmpl-float v11, v1, v13

    if-lez v11, :cond_6

    const/high16 v11, 0x41800000    # 16.0f

    sub-float/2addr v1, v11

    .line 1225
    iput v1, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->startEnterDelay:F

    cmpg-float v1, v1, v13

    if-gez v1, :cond_5

    .line 1227
    iput v13, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->startEnterDelay:F

    goto :goto_2

    .line 1229
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1232
    :cond_6
    :goto_2
    iget v1, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->startEnterDelay:F

    cmpl-float v1, v1, v13

    if-ltz v1, :cond_8

    iget v1, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->enterAlpha:F

    cmpl-float v11, v1, v12

    if-eqz v11, :cond_8

    const v11, 0x3d94f209

    add-float/2addr v1, v11

    .line 1233
    iput v1, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->enterAlpha:F

    cmpl-float v1, v1, v12

    if-lez v1, :cond_7

    .line 1235
    iput v12, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->enterAlpha:F

    goto :goto_3

    .line 1237
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1240
    :cond_8
    :goto_3
    iget v11, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->enterAlpha:F

    cmpl-float v13, v11, v12

    if-eqz v13, :cond_9

    .line 1242
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const v1, 0x3f4ccccd    # 0.8f

    const v20, 0x3e4ccccd    # 0.2f

    mul-float v20, v20, v11

    add-float v1, v20, v1

    .line 1244
    invoke-virtual {v7, v1, v1, v5, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1246
    :cond_9
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v8, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->selectProgress:F

    mul-float/2addr v1, v8

    float-to-int v8, v1

    .line 1247
    iget v1, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->selectStartEndProgress:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_a

    .line 1248
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$3800(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1249
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$3800(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->selectStartEndProgress:F

    mul-float v2, v2, v17

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v1, 0x2c

    .line 1250
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->access$3800(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v7, v5, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1252
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$4000(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1253
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/16 v1, 0x2c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v17, 0x40000000    # 2.0f

    div-float v12, v12, v17

    sub-float v12, v5, v12

    move/from16 v21, v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v17

    sub-float v6, v4, v6

    move/from16 v22, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v9, v5

    move/from16 v23, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v1, v5

    div-float v1, v1, v17

    add-float/2addr v1, v4

    invoke-virtual {v2, v12, v6, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 1254
    iget v1, v3, Lorg/telegram/ui/CalendarActivity$PeriodDay;->selectStartEndProgress:F

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float/2addr v6, v1

    const/4 v9, 0x0

    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$4000(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v12

    move-object/from16 v1, p1

    move-object/from16 v24, v3

    move v3, v5

    move v5, v4

    move v4, v6

    move/from16 v25, v5

    move/from16 v6, v23

    move v5, v9

    move/from16 v9, v21

    move/from16 v21, v10

    move v10, v6

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_a
    move-object/from16 v24, v3

    move/from16 v25, v4

    move/from16 v22, v9

    move/from16 v21, v10

    move v10, v5

    move v9, v6

    .line 1257
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v12, v24

    iget v2, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->enterAlpha:F

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1258
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    const/16 v2, 0x2c

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v3, v8

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v5, v10, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v3, v8

    int-to-float v3, v3

    div-float/2addr v3, v4

    move/from16 v6, v25

    sub-float v4, v6, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v3, v8

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    sub-int v2, v17, v8

    int-to-float v2, v2

    invoke-virtual {v1, v5, v4, v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1259
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1261
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    iget-object v1, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    iget-object v1, v1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x2c

    .line 1262
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v2, v8

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 1263
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->access$4100(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 1264
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->access$4100(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v10, v6, v1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1266
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1267
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->access$4100(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v2, -0x1

    .line 1270
    iget-object v3, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v3}, Lorg/telegram/ui/CalendarActivity;->access$4200(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    move-result-object v3

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ea66666    # 0.325f

    mul-float/2addr v4, v5

    iget v5, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->enterAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 1271
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->access$4200(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    move-result-object v2

    sub-float v5, v10, v1

    float-to-int v3, v5

    sub-float v4, v6, v1

    float-to-int v4, v4

    add-float v5, v10, v1

    float-to-int v5, v5

    add-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v2, v3, v4, v5, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setBounds(IIII)V

    .line 1272
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$4200(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    .line 1274
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1276
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1279
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v1, v1, Lorg/telegram/ui/CalendarActivity;->blackoutPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    iget v3, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->enterAlpha:F

    const/high16 v4, 0x42a00000    # 80.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x2c

    .line 1280
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v2, v8

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity;->blackoutPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v1, 0x1

    .line 1281
    iput-boolean v1, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->wasDrawn:Z

    if-eqz v13, :cond_c

    .line 1283
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_d
    move/from16 v22, v9

    move/from16 v21, v10

    move v10, v5

    move v9, v6

    move v6, v4

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    :goto_5
    cmpl-float v2, v11, v1

    if-eqz v2, :cond_e

    .line 1287
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getAlpha()I

    move-result v2

    .line 1288
    iget-object v3, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    int-to-float v4, v2

    sub-float v12, v1, v11

    mul-float/2addr v4, v12

    float-to-int v1, v4

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1289
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float v4, v6, v3

    iget-object v3, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v10, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1290
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v1, v1, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1292
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v1, v1, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    .line 1293
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v1

    mul-float/2addr v3, v11

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1294
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float v4, v6, v3

    iget-object v3, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v10, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1295
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_6

    .line 1297
    :cond_e
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float v4, v6, v2

    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v10, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_6
    const/high16 v1, 0x40e00000    # 7.0f

    const/16 v3, 0x2c

    const/high16 v4, 0x40000000    # 2.0f

    goto/16 :goto_8

    :cond_f
    move-object v12, v3

    move/from16 v22, v9

    move/from16 v21, v10

    move v10, v5

    move v9, v6

    move v6, v4

    if-eqz v12, :cond_11

    .line 1300
    iget v1, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->selectStartEndProgress:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_11

    .line 1301
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$3800(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1302
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$3800(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->selectStartEndProgress:F

    mul-float v2, v2, v17

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v1, 0x2c

    .line 1303
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->access$3800(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v7, v10, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1305
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$4000(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v1

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1306
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/16 v1, 0x2c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v5, v10, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float v3, v6, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v4

    add-float/2addr v11, v10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v1, v13

    div-float/2addr v1, v4

    add-float v4, v6, v1

    invoke-virtual {v2, v5, v3, v11, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 1307
    iget v1, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->selectStartEndProgress:F

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v4, v1

    const/4 v5, 0x0

    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$4000(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v11

    move-object/from16 v1, p1

    move v13, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v1, 0x40e00000    # 7.0f

    .line 1309
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->selectStartEndProgress:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1310
    iget-object v3, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v3}, Lorg/telegram/ui/CalendarActivity;->access$3800(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1311
    iget-object v3, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v3}, Lorg/telegram/ui/CalendarActivity;->access$3800(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v3

    iget v4, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->selectStartEndProgress:F

    mul-float v4, v4, v17

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v3, 0x2c

    .line 1312
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget-object v5, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v5}, Lorg/telegram/ui/CalendarActivity;->access$3800(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v7, v10, v13, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1314
    iget v2, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->selectStartEndProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v5

    if-eqz v6, :cond_10

    .line 1316
    iget-object v6, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v6, v6, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getAlpha()I

    move-result v6

    .line 1317
    iget-object v8, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v8, v8, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    int-to-float v11, v6

    sub-float v12, v5, v2

    mul-float/2addr v11, v12

    float-to-int v5, v11

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1318
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v13

    iget-object v11, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v11, v11, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v5, v10, v8, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1319
    iget-object v5, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v5, v5, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1321
    iget-object v5, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v5, v5, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getAlpha()I

    move-result v5

    .line 1322
    iget-object v6, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v6, v6, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    int-to-float v8, v5

    mul-float/2addr v8, v2

    float-to-int v2, v8

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1323
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v13

    iget-object v8, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v8, v8, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v10, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1324
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_8

    .line 1326
    :cond_10
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v13

    iget-object v6, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v6, v6, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v10, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_11
    move v13, v6

    const/high16 v1, 0x40e00000    # 7.0f

    const/16 v3, 0x2c

    const/high16 v4, 0x40000000    # 2.0f

    .line 1329
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v13

    iget-object v6, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v6, v6, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v10, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_12
    :goto_7
    move v1, v8

    move/from16 v22, v9

    move/from16 v21, v10

    move v3, v11

    move v10, v5

    move v9, v6

    move/from16 v26, v13

    move v13, v4

    move/from16 v4, v26

    .line 1213
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getAlpha()I

    move-result v2

    .line 1214
    iget-object v5, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v5, v5, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    int-to-float v6, v2

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1215
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v13

    iget-object v8, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v8, v8, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v5, v10, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1216
    iget-object v5, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v5, v5, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    :goto_8
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x7

    if-lt v14, v2, :cond_13

    add-int/lit8 v6, v9, 0x1

    const/4 v14, 0x0

    goto :goto_9

    :cond_13
    move v6, v9

    :goto_9
    move v8, v1

    move v11, v3

    move v13, v4

    move/from16 v15, v16

    move/from16 v10, v21

    move/from16 v9, v22

    goto/16 :goto_1

    :cond_14
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1182
    iget p2, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->cellCount:I

    mul-int/lit8 p2, p2, 0x34

    add-int/lit8 p2, p2, 0x2c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1090
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDate(IILandroid/util/SparseArray;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/SparseArray<",
            "Lorg/telegram/ui/CalendarActivity$PeriodDay;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1094
    iget v4, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->currentYear:I

    const/4 v6, 0x0

    if-ne v1, v4, :cond_1

    iget v4, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->currentMonthInYear:I

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 1095
    :goto_1
    iput v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->currentYear:I

    .line 1096
    iput v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->currentMonthInYear:I

    .line 1097
    iput-object v3, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 1100
    iget-object v4, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    move v4, v6

    .line 1101
    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 1102
    iget-object v8, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 1103
    iget-object v8, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8, v7}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1105
    :cond_2
    iput-object v7, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    :cond_3
    if-eqz v3, :cond_18

    .line 1109
    iget-object v4, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    if-nez v4, :cond_4

    .line 1110
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    :cond_4
    move v4, v6

    .line 1113
    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_18

    .line 1114
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1115
    iget-object v9, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v9, v8, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_17

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    iget-boolean v9, v9, Lorg/telegram/ui/CalendarActivity$PeriodDay;->hasImage:Z

    if-nez v9, :cond_5

    goto/16 :goto_c

    .line 1118
    :cond_5
    new-instance v9, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v9}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    .line 1119
    invoke-virtual {v9, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 1120
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    .line 1121
    iget-object v15, v10, Lorg/telegram/ui/CalendarActivity$PeriodDay;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v15, :cond_17

    .line 1123
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v10

    .line 1124
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v11

    const/16 v12, 0x140

    const/16 v13, 0x32

    const-string v14, "5_5_b"

    const-string v16, "44_44"

    if-eqz v11, :cond_a

    .line 1125
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v11

    .line 1126
    iget-object v7, v11, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v7, v13}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    .line 1127
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v13, v12}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v12

    if-ne v7, v12, :cond_6

    const/4 v12, 0x0

    :cond_6
    if-eqz v7, :cond_16

    .line 1132
    iget-object v13, v15, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_8

    .line 1133
    invoke-static {v12, v11}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    if-eqz v10, :cond_7

    move-object v12, v14

    goto :goto_4

    :cond_7
    move-object/from16 v12, v16

    :goto_4
    iget-object v13, v15, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v10, v9

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_b

    .line 1135
    :cond_8
    invoke-static {v12, v11}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    if-eqz v10, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v14, v16

    :goto_5
    invoke-static {v7, v11}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v13

    const/4 v7, 0x0

    const/16 v17, 0x0

    const-string v16, "b"

    move-object v10, v9

    move-object v11, v12

    move-object v12, v14

    move-object/from16 v14, v16

    move-object/from16 v19, v15

    move-object v15, v7

    move-object/from16 v16, v19

    invoke-virtual/range {v10 .. v17}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_b

    :cond_a
    move-object v7, v15

    .line 1138
    iget-object v11, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v15, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v15, :cond_16

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v11, :cond_16

    iget-object v11, v7, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_16

    .line 1139
    iget-object v11, v7, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {v11, v13}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 1140
    iget-object v13, v7, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {v13, v12, v6, v11, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v12

    .line 1141
    iget-boolean v13, v7, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v13, :cond_d

    iget-object v13, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v13}, Lorg/telegram/ui/CalendarActivity;->access$3700(Lorg/telegram/ui/CalendarActivity;)I

    move-result v13

    invoke-static {v13}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v13

    invoke-virtual {v13, v7}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_6

    .line 1151
    :cond_b
    iget-object v13, v7, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_c

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v10, v9

    move-object v15, v7

    .line 1152
    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_b

    :cond_c
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1154
    iget-object v10, v7, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v11, v10}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    const-string v16, "b"

    move-object v10, v9

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v7

    invoke-virtual/range {v10 .. v17}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_b

    :cond_d
    :goto_6
    if-ne v12, v11, :cond_e

    const/4 v11, 0x0

    .line 1145
    :cond_e
    iget-object v13, v7, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v15, 0x2

    const-wide/16 v17, 0x0

    if-eqz v13, :cond_12

    .line 1146
    iget-object v11, v7, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v12, v11}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    if-eqz v10, :cond_f

    goto :goto_7

    :cond_f
    move-object/from16 v14, v16

    :goto_7
    const/4 v13, 0x0

    const/16 v16, 0x0

    iget-object v10, v7, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_10

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v5, v12

    move-wide/from16 v17, v5

    :cond_10
    const/4 v5, 0x0

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z

    move-result v6

    if-eqz v6, :cond_11

    move-object v6, v10

    move/from16 v20, v15

    goto :goto_8

    :cond_11
    move-object v6, v10

    const/16 v20, 0x1

    :goto_8
    move-object v10, v9

    move-object v12, v14

    move-object/from16 v14, v16

    move-object v15, v6

    move-wide/from16 v16, v17

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    invoke-virtual/range {v10 .. v20}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_b

    .line 1148
    :cond_12
    iget-object v5, v7, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v12, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    if-eqz v10, :cond_13

    goto :goto_9

    :cond_13
    move-object/from16 v14, v16

    :goto_9
    iget-object v6, v7, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v11, v6}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v13

    if-eqz v12, :cond_14

    iget v6, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v10, v6

    move-wide/from16 v17, v10

    :cond_14
    const/4 v6, 0x0

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z

    move-result v10

    if-eqz v10, :cond_15

    move/from16 v19, v15

    goto :goto_a

    :cond_15
    const/16 v19, 0x1

    :goto_a
    const-string v15, "b"

    move-object v10, v9

    move-object v11, v5

    move-object v12, v14

    move-object v14, v15

    move-wide/from16 v15, v17

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-virtual/range {v10 .. v19}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    :cond_16
    :goto_b
    const/16 v5, 0x16

    .line 1158
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v9, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1159
    iget-object v5, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->imagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v5, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    :goto_c
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_18
    add-int/lit8 v3, v2, 0x1

    .line 1164
    invoke-static {v1, v3}, Lj$/time/YearMonth;->of(II)Lj$/time/YearMonth;

    move-result-object v4

    .line 1165
    invoke-virtual {v4}, Lj$/time/YearMonth;->lengthOfMonth()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->daysInMonth:I

    .line 1167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x0

    .line 1168
    invoke-virtual {v4, v1, v2, v5}, Ljava/util/Calendar;->set(III)V

    const/4 v2, 0x7

    .line 1169
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    rem-int/2addr v5, v2

    iput v5, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->startDayOfWeek:I

    .line 1170
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->startMonthTime:I

    .line 1172
    iget v5, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->daysInMonth:I

    iget v6, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->startDayOfWeek:I

    add-int/2addr v5, v6

    int-to-float v6, v5

    const/high16 v9, 0x40e00000    # 7.0f

    div-float/2addr v6, v9

    float-to-int v6, v6

    .line 1173
    rem-int/2addr v5, v2

    if-nez v5, :cond_19

    const/4 v5, 0x0

    goto :goto_d

    :cond_19
    const/4 v5, 0x1

    :goto_d
    add-int/2addr v6, v5

    iput v6, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->cellCount:I

    const/4 v2, 0x0

    .line 1174
    invoke-virtual {v4, v1, v3, v2}, Ljava/util/Calendar;->set(III)V

    .line 1175
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    div-long/2addr v3, v7

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatYearMont(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1177
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/CalendarActivity;->access$1300(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/ui/CalendarActivity$MonthView;Z)V

    return-void
.end method
