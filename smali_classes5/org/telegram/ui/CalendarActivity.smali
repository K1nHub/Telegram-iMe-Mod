.class public Lorg/telegram/ui/CalendarActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "CalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/CalendarActivity$RowAnimationValue;,
        Lorg/telegram/ui/CalendarActivity$PeriodDay;,
        Lorg/telegram/ui/CalendarActivity$Callback;,
        Lorg/telegram/ui/CalendarActivity$MonthView;,
        Lorg/telegram/ui/CalendarActivity$CalendarAdapter;
    }
.end annotation


# instance fields
.field activeTextPaint:Landroid/text/TextPaint;

.field adapter:Lorg/telegram/ui/CalendarActivity$CalendarAdapter;

.field backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field blackoutPaint:Landroid/graphics/Paint;

.field private blurredView:Landroid/view/View;

.field private bottomBar:Landroid/widget/FrameLayout;

.field private calendarType:I

.field callback:Lorg/telegram/ui/CalendarActivity$Callback;

.field private canClearHistory:Z

.field private checkEnterItems:Z

.field contentView:Landroid/widget/FrameLayout;

.field private dateSelectedEnd:I

.field private dateSelectedStart:I

.field private dialogId:J

.field endReached:Z

.field private inSelectionMode:Z

.field private isOpened:Z

.field lastDaysSelected:I

.field lastId:I

.field lastInSelectionMode:Z

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loading:Z

.field private mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

.field messagesByYearMounth:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lorg/telegram/ui/CalendarActivity$PeriodDay;",
            ">;>;"
        }
    .end annotation
.end field

.field private minDate:I

.field minMontYear:I

.field monthCount:I

.field private path:Landroid/graphics/Path;

.field private photosVideosTypeFilter:I

.field removeDaysButton:Landroid/widget/TextView;

.field selectDaysButton:Landroid/widget/TextView;

.field selectDaysHint:Lorg/telegram/ui/Components/HintView;

.field private selectOutlinePaint:Landroid/graphics/Paint;

.field private selectPaint:Landroid/graphics/Paint;

.field selectedMonth:I

.field selectedYear:I

.field private selectionAnimator:Landroid/animation/ValueAnimator;

.field startFromMonth:I

.field startFromYear:I

.field startOffset:I

.field textPaint:Landroid/text/TextPaint;

.field textPaint2:Landroid/text/TextPaint;


# direct methods
.method public static synthetic $r8$lambda$RwiGWcvzn4GC8ZQAA9UathEr0lo(Lorg/telegram/ui/CalendarActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CalendarActivity;->lambda$animateSelection$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cBaviuZ58QksNkA_Vm9xvEPwrxI(Lorg/telegram/ui/CalendarActivity;Ljava/util/Calendar;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CalendarActivity;->lambda$loadNext$3(Ljava/util/Calendar;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m_215EBo_xi3LqW4ee-yPjGPRpo(Lorg/telegram/ui/CalendarActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CalendarActivity;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qSCNgcvbtNJssx6sOgH6qwWcWr4(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CalendarActivity;->lambda$loadNext$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/Calendar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qj_8X9huYZpYg2GFVAYuyBvY4fE(Lorg/telegram/ui/CalendarActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CalendarActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;II)V
    .locals 5

    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 78
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    .line 79
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    .line 80
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->textPaint2:Landroid/text/TextPaint;

    .line 85
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectOutlinePaint:Landroid/graphics/Paint;

    .line 86
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectPaint:Landroid/graphics/Paint;

    .line 89
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->blackoutPaint:Landroid/graphics/Paint;

    .line 112
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 114
    iput p1, p0, Lorg/telegram/ui/CalendarActivity;->startOffset:I

    .line 127
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->path:Landroid/graphics/Path;

    .line 128
    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 132
    iput p2, p0, Lorg/telegram/ui/CalendarActivity;->photosVideosTypeFilter:I

    const/4 p1, 0x2

    if-eqz p3, :cond_0

    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    int-to-long v1, p3

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 136
    invoke-virtual {p2, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 137
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/CalendarActivity;->selectedYear:I

    .line 138
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/CalendarActivity;->selectedMonth:I

    .line 141
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/CalendarActivity;->selectOutlinePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget-object p2, p0, Lorg/telegram/ui/CalendarActivity;->selectOutlinePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 143
    iget-object p2, p0, Lorg/telegram/ui/CalendarActivity;->selectOutlinePaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/CalendarActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lorg/telegram/ui/CalendarActivity;->checkEnterItems:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/CalendarActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/CalendarActivity;->checkEnterItems:Z

    return p1
.end method

.method static synthetic access$1000(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/ui/CalendarActivity$MonthView;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CalendarActivity;->updateRowSelections(Lorg/telegram/ui/CalendarActivity$MonthView;Z)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/CalendarActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/CalendarActivity;->calendarType:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/CalendarActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lorg/telegram/ui/CalendarActivity;->canClearHistory:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/CalendarActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->selectionAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/CalendarActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/CalendarActivity;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Lorg/telegram/ui/CalendarActivity;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/CalendarActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->checkLoadNext()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/CalendarActivity;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/CalendarActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/CalendarActivity;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/CalendarActivity;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/CalendarActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->prepareBlurBitmap()V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/CalendarActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/CalendarActivity;I)I
    .locals 0

    .line 69
    iput p1, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/CalendarActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->selectPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/CalendarActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/CalendarActivity;->minDate:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->selectOutlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Path;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/CalendarActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/CalendarActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->updateColors()V

    return-void
.end method

.method static synthetic access$402(Lorg/telegram/ui/CalendarActivity;I)I
    .locals 0

    .line 69
    iput p1, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/CalendarActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/CalendarActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/CalendarActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->updateTitle()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/CalendarActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->animateSelection()V

    return-void
.end method

.method private animateSelection()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1318
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1319
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1320
    new-instance v1, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1327
    new-instance v1, Lorg/telegram/ui/CalendarActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CalendarActivity$9;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1336
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1337
    iput-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectionAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1341
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1342
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CalendarActivity$MonthView;

    const/4 v3, 0x1

    .line 1343
    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/CalendarActivity;->updateRowSelections(Lorg/telegram/ui/CalendarActivity$MonthView;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1346
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v1, v2, :cond_1

    .line 1347
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CalendarActivity$MonthView;

    .line 1348
    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/CalendarActivity;->updateRowSelections(Lorg/telegram/ui/CalendarActivity$MonthView;Z)V

    .line 1349
    iget v4, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    iget v5, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/CalendarActivity$MonthView;->access$800(Lorg/telegram/ui/CalendarActivity$MonthView;II)V

    .line 1350
    invoke-static {v2, v3}, Lorg/telegram/ui/CalendarActivity$MonthView;->access$900(Lorg/telegram/ui/CalendarActivity$MonthView;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1352
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1353
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CalendarActivity$MonthView;

    .line 1354
    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/CalendarActivity;->updateRowSelections(Lorg/telegram/ui/CalendarActivity$MonthView;Z)V

    .line 1355
    iget v4, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    iget v5, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/CalendarActivity$MonthView;->access$800(Lorg/telegram/ui/CalendarActivity$MonthView;II)V

    .line 1356
    invoke-static {v2, v3}, Lorg/telegram/ui/CalendarActivity$MonthView;->access$900(Lorg/telegram/ui/CalendarActivity$MonthView;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 1358
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1359
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CalendarActivity$MonthView;

    .line 1360
    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/CalendarActivity;->updateRowSelections(Lorg/telegram/ui/CalendarActivity$MonthView;Z)V

    .line 1361
    iget v4, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    iget v5, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/CalendarActivity$MonthView;->access$800(Lorg/telegram/ui/CalendarActivity$MonthView;II)V

    .line 1362
    invoke-static {v2, v3}, Lorg/telegram/ui/CalendarActivity$MonthView;->access$900(Lorg/telegram/ui/CalendarActivity$MonthView;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkLoadNext()V
    .locals 4

    .line 456
    iget-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->loading:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->endReached:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 460
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 461
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 462
    instance-of v3, v2, Lorg/telegram/ui/CalendarActivity$MonthView;

    if-eqz v3, :cond_1

    .line 463
    check-cast v2, Lorg/telegram/ui/CalendarActivity$MonthView;

    iget v3, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->currentYear:I

    mul-int/lit8 v3, v3, 0x64

    iget v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->currentMonthInYear:I

    add-int/2addr v3, v2

    if-ge v3, v0, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    :cond_2
    iget v1, p0, Lorg/telegram/ui/CalendarActivity;->minMontYear:I

    div-int/lit8 v2, v1, 0x64

    mul-int/lit8 v2, v2, 0xc

    rem-int/lit8 v1, v1, 0x64

    add-int/2addr v2, v1

    .line 470
    div-int/lit8 v1, v0, 0x64

    mul-int/lit8 v1, v1, 0xc

    rem-int/lit8 v0, v0, 0x64

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x3

    if-lt v2, v1, :cond_3

    .line 472
    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->loadNext()V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$animateSelection$4(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1321
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    .line 1322
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1323
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CalendarActivity$MonthView;

    .line 1324
    invoke-static {v1, p1}, Lorg/telegram/ui/CalendarActivity$MonthView;->access$900(Lorg/telegram/ui/CalendarActivity$MonthView;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 296
    iput-boolean p1, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    .line 297
    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->updateTitle()V

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 8

    .line 308
    iget v1, p0, Lorg/telegram/ui/CalendarActivity;->lastDaysSelected:I

    if-nez v1, :cond_1

    .line 309
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysHint:Lorg/telegram/ui/Components/HintView;

    if-nez p1, :cond_0

    .line 310
    new-instance p1, Lorg/telegram/ui/Components/HintView;

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysHint:Lorg/telegram/ui/Components/HintView;

    const/16 v0, 0x18

    .line 311
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    .line 312
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysHint:Lorg/telegram/ui/Components/HintView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x33

    const/16 v4, 0x13

    const/4 v5, 0x0

    const/16 v6, 0x13

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysHint:Lorg/telegram/ui/Components/HintView;

    sget v0, Lorg/telegram/messenger/R$string;->SelectDaysTooltip:I

    const-string v1, "SelectDaysTooltip"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysHint:Lorg/telegram/ui/Components/HintView;

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->bottomBar:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    return-void

    .line 318
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, p0, Lorg/telegram/ui/CalendarActivity;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lorg/telegram/ui/CalendarActivity$7;

    invoke-direct {v5, p0}, Lorg/telegram/ui/CalendarActivity$7;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/AlertsCreator;->createClearDaysDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$loadNext$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/Calendar;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez p1, :cond_c

    .line 379
    move-object/from16 v2, p2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 381
    :goto_0
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->periods:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v9, 0x3e8

    const/4 v11, 0x1

    if-ge v4, v5, :cond_5

    .line 382
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->periods:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_searchResultsCalendarPeriod;

    .line 383
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_searchResultsCalendarPeriod;->date:I

    int-to-long v12, v5

    mul-long v12, v12, v9

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 384
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v5, v7

    .line 385
    iget-object v7, v0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    if-nez v7, :cond_0

    .line 387
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 388
    iget-object v12, v0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    invoke-virtual {v12, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 390
    :cond_0
    new-instance v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    invoke-direct {v12, v0, v8}, Lorg/telegram/ui/CalendarActivity$PeriodDay;-><init>(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/ui/CalendarActivity$1;)V

    .line 391
    new-instance v13, Lorg/telegram/messenger/MessageObject;

    iget v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v15, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->messages:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v13, v14, v15, v3, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 392
    iput-object v13, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 393
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    div-long/2addr v13, v9

    long-to-int v9, v13

    iput v9, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    .line 394
    iget v9, v0, Lorg/telegram/ui/CalendarActivity;->startOffset:I

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->periods:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_searchResultsCalendarPeriod;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$TL_searchResultsCalendarPeriod;->count:I

    add-int/2addr v9, v10

    iput v9, v0, Lorg/telegram/ui/CalendarActivity;->startOffset:I

    .line 395
    iput v9, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->startOffset:I

    .line 396
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v6, v11

    .line 397
    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    iget-boolean v8, v8, Lorg/telegram/ui/CalendarActivity$PeriodDay;->hasImage:Z

    if-nez v8, :cond_2

    .line 398
    :cond_1
    invoke-virtual {v7, v6, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    :cond_2
    iget v6, v0, Lorg/telegram/ui/CalendarActivity;->minMontYear:I

    if-lt v5, v6, :cond_3

    if-nez v6, :cond_4

    .line 401
    :cond_3
    iput v5, v0, Lorg/telegram/ui/CalendarActivity;->minMontYear:I

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 405
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v9

    long-to-int v5, v4

    .line 406
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->min_date:I

    iput v4, v0, Lorg/telegram/ui/CalendarActivity;->minDate:I

    :goto_1
    if-ge v4, v5, :cond_8

    int-to-long v12, v4

    mul-long v12, v12, v9

    .line 409
    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v12, 0xb

    .line 410
    invoke-virtual {v1, v12, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xc

    .line 411
    invoke-virtual {v1, v12, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xd

    .line 412
    invoke-virtual {v1, v12, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xe

    .line 413
    invoke-virtual {v1, v12, v3}, Ljava/util/Calendar;->set(II)V

    .line 415
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x64

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v12, v13

    .line 416
    iget-object v13, v0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    if-nez v13, :cond_6

    .line 418
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 419
    iget-object v14, v0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    invoke-virtual {v14, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    :cond_6
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v12

    sub-int/2addr v12, v11

    .line 422
    invoke-virtual {v13, v12, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_7

    .line 423
    new-instance v14, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    invoke-direct {v14, v0, v8}, Lorg/telegram/ui/CalendarActivity$PeriodDay;-><init>(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/ui/CalendarActivity$1;)V

    .line 424
    iput-boolean v3, v14, Lorg/telegram/ui/CalendarActivity$PeriodDay;->hasImage:Z

    .line 425
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    div-long v6, v15, v9

    long-to-int v7, v6

    iput v7, v14, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    .line 426
    invoke-virtual {v13, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    const v6, 0x15180

    add-int/2addr v4, v6

    const/4 v6, 0x5

    const/4 v7, 0x2

    goto :goto_1

    .line 430
    :cond_8
    iput-boolean v3, v0, Lorg/telegram/ui/CalendarActivity;->loading:Z

    .line 431
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 432
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v11

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v4, v0, Lorg/telegram/ui/CalendarActivity;->lastId:I

    .line 433
    iput-boolean v3, v0, Lorg/telegram/ui/CalendarActivity;->endReached:Z

    .line 434
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CalendarActivity;->checkLoadNext()V

    goto :goto_2

    .line 436
    :cond_9
    iput-boolean v11, v0, Lorg/telegram/ui/CalendarActivity;->endReached:Z

    .line 438
    :goto_2
    iget-boolean v4, v0, Lorg/telegram/ui/CalendarActivity;->isOpened:Z

    if-eqz v4, :cond_a

    .line 439
    iput-boolean v11, v0, Lorg/telegram/ui/CalendarActivity;->checkEnterItems:Z

    .line 441
    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 442
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    div-long/2addr v4, v9

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->min_date:I

    int-to-long v1, v1

    sub-long/2addr v4, v1

    const-wide/32 v1, 0x2820a8

    div-long/2addr v4, v1

    long-to-int v1, v4

    add-int/2addr v1, v11

    .line 443
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->adapter:Lorg/telegram/ui/CalendarActivity$CalendarAdapter;

    iget v4, v0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 444
    iget v2, v0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    if-le v1, v2, :cond_b

    .line 445
    iget-object v3, v0, Lorg/telegram/ui/CalendarActivity;->adapter:Lorg/telegram/ui/CalendarActivity$CalendarAdapter;

    add-int/2addr v2, v11

    invoke-virtual {v3, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 446
    iput v1, v0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    .line 448
    :cond_b
    iget-boolean v1, v0, Lorg/telegram/ui/CalendarActivity;->endReached:Z

    if-eqz v1, :cond_c

    .line 449
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    :cond_c
    return-void
.end method

.method private synthetic lambda$loadNext$3(Ljava/util/Calendar;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 377
    new-instance v0, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/Calendar;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadNext()V
    .locals 4

    .line 359
    iget-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->loading:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->endReached:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->loading:Z

    .line 363
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;-><init>()V

    .line 364
    iget v2, p0, Lorg/telegram/ui/CalendarActivity;->photosVideosTypeFilter:I

    if-ne v2, v0, :cond_1

    .line 365
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v2, v0, :cond_2

    .line 367
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_0

    .line 369
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 372
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/CalendarActivity;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 373
    iget v0, p0, Lorg/telegram/ui/CalendarActivity;->lastId:I

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->offset_id:I

    .line 375
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 376
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 377
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/CalendarActivity;Ljava/util/Calendar;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private prepareBlurBitmap()V
    .locals 5

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1424
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1425
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 1426
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1427
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v4, 0x3e2aaaab

    .line 1428
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1429
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v3, 0x7

    .line 1430
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit16 v0, v0, 0xb4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 1431
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1432
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1433
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateColors()V
    .locals 3

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->textPaint2:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "listSelectorSDK21"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    return-void
.end method

.method private updateRowSelections(Lorg/telegram/ui/CalendarActivity$MonthView;Z)V
    .locals 13

    .line 1367
    iget v0, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1370
    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 1374
    invoke-virtual {p1, v0}, Lorg/telegram/ui/CalendarActivity$MonthView;->dismissRowAnimations(Z)V

    .line 1378
    :cond_2
    iget v1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->startDayOfWeek:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 1380
    :goto_0
    iget v4, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->daysInMonth:I

    if-ge v3, v4, :cond_7

    .line 1381
    iget-object v4, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    const/4 v8, 0x0

    invoke-virtual {v4, v3, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    if-eqz v4, :cond_4

    .line 1383
    iget v4, v4, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    iget v8, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    if-lt v4, v8, :cond_4

    iget v8, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    if-gt v4, v8, :cond_4

    if-ne v6, v2, :cond_3

    move v6, v1

    :cond_3
    move v10, v1

    move v9, v6

    goto :goto_1

    :cond_4
    move v9, v6

    move v10, v7

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x7

    if-lt v1, v4, :cond_6

    if-eq v9, v2, :cond_5

    if-eq v10, v2, :cond_5

    const/4 v11, 0x1

    move-object v7, p1

    move v8, v5

    move v12, p2

    .line 1394
    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/CalendarActivity$MonthView;->animateRow(IIIZZ)V

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    move v8, v5

    move v12, p2

    .line 1395
    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/CalendarActivity$MonthView;->animateRow(IIIZZ)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    goto :goto_3

    :cond_6
    move v6, v9

    move v7, v10

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    if-eq v6, v2, :cond_8

    if-eq v7, v2, :cond_8

    const/4 v8, 0x1

    move-object v4, p1

    move v9, p2

    .line 1403
    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/CalendarActivity$MonthView;->animateRow(IIIZZ)V

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    move v8, v5

    move v12, p2

    .line 1405
    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/CalendarActivity$MonthView;->animateRow(IIIZZ)V

    goto :goto_5

    .line 1368
    :cond_9
    :goto_4
    invoke-virtual {p1, p2}, Lorg/telegram/ui/CalendarActivity$MonthView;->dismissRowAnimations(Z)V

    :goto_5
    return-void
.end method

.method private updateTitle()V
    .locals 11

    .line 1175
    iget-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->canClearHistory:Z

    const-string v1, "Calendar"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 1176
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->Calendar:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1177
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    return-void

    .line 1181
    :cond_0
    iget v0, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    iget v4, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    const/4 v5, 0x0

    if-ne v0, v4, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v4

    .line 1184
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v4, 0x15180

    div-int/2addr v0, v4

    add-int/2addr v0, v3

    .line 1186
    :goto_0
    iget-boolean v4, p0, Lorg/telegram/ui/CalendarActivity;->lastInSelectionMode:Z

    .line 1187
    iget v6, p0, Lorg/telegram/ui/CalendarActivity;->lastDaysSelected:I

    if-ne v0, v6, :cond_2

    iget-boolean v7, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    if-eq v4, v7, :cond_10

    :cond_2
    if-le v6, v0, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 1189
    :goto_1
    iput v0, p0, Lorg/telegram/ui/CalendarActivity;->lastDaysSelected:I

    .line 1190
    iget-boolean v6, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    iput-boolean v6, p0, Lorg/telegram/ui/CalendarActivity;->lastInSelectionMode:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v0, :cond_4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "Days"

    .line 1193
    invoke-static {v6, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1194
    iget-object v6, p0, Lorg/telegram/ui/CalendarActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v6, v7, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    .line 1196
    sget v1, Lorg/telegram/messenger/R$string;->SelectDays:I

    const-string v6, "SelectDays"

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1197
    iget-object v6, p0, Lorg/telegram/ui/CalendarActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v6, v7, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    goto :goto_2

    .line 1199
    :cond_5
    sget v6, Lorg/telegram/messenger/R$string;->Calendar:I

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1200
    iget-object v6, p0, Lorg/telegram/ui/CalendarActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v6, v2, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    :goto_2
    if-le v0, v3, :cond_6

    .line 1203
    iget-object v6, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    sget v8, Lorg/telegram/messenger/R$string;->ClearHistoryForTheseDays:I

    new-array v9, v5, [Ljava/lang/Object;

    const-string v10, "ClearHistoryForTheseDays"

    invoke-static {v10, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    if-gtz v0, :cond_7

    .line 1204
    iget-boolean v6, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    if-eqz v6, :cond_8

    .line 1205
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    sget v8, Lorg/telegram/messenger/R$string;->ClearHistoryForThisDay:I

    new-array v9, v5, [Ljava/lang/Object;

    const-string v10, "ClearHistoryForThisDay"

    invoke-static {v10, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    :cond_8
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v1, v4, v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleAnimated(Ljava/lang/CharSequence;ZJ)V

    .line 1210
    iget-boolean v1, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    if-eqz v1, :cond_9

    if-lez v0, :cond_a

    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysHint:Lorg/telegram/ui/Components/HintView;

    if-eqz v1, :cond_a

    .line 1211
    invoke-virtual {v1}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_a
    const/16 v1, 0x8

    const/16 v4, 0x14

    const/4 v6, 0x0

    if-gtz v0, :cond_d

    .line 1213
    iget-boolean v10, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    if-eqz v10, :cond_b

    goto :goto_4

    .line 1226
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_c

    .line 1227
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1228
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1230
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1231
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1232
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1233
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1236
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_5

    .line 1214
    :cond_d
    :goto_4
    iget-object v10, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-ne v10, v1, :cond_e

    .line 1215
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1216
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1218
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1219
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1220
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1221
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    iget-object v6, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-direct {v4, v6}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1222
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-nez v0, :cond_f

    const/high16 v7, 0x3f000000    # 0.5f

    :cond_f
    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1223
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_10
    :goto_5
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 162
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 163
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 165
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->textPaint2:Landroid/text/TextPaint;

    const/16 v4, 0xb

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 166
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->textPaint2:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 167
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->textPaint2:Landroid/text/TextPaint;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 169
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 170
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 171
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 173
    new-instance v2, Lorg/telegram/ui/CalendarActivity$1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/CalendarActivity$1;-><init>(Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    .line 186
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    .line 187
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->Calendar:I

    const-string v5, "Calendar"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 191
    new-instance v2, Lorg/telegram/ui/CalendarActivity$2;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/CalendarActivity$2;-><init>(Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 198
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/CalendarActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 199
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 200
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/CalendarActivity$CalendarAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lorg/telegram/ui/CalendarActivity$CalendarAdapter;-><init>(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/ui/CalendarActivity$1;)V

    iput-object v6, v0, Lorg/telegram/ui/CalendarActivity;->adapter:Lorg/telegram/ui/CalendarActivity$CalendarAdapter;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 201
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/CalendarActivity$3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/CalendarActivity$3;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 209
    iget v2, v0, Lorg/telegram/ui/CalendarActivity;->calendarType:I

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lorg/telegram/ui/CalendarActivity;->canClearHistory:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 210
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x24

    const/4 v13, 0x0

    if-eqz v2, :cond_1

    const/16 v14, 0x30

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    .line 212
    sget v7, Lorg/telegram/messenger/R$string;->CalendarWeekNameShortMonday:I

    const-string v8, "CalendarWeekNameShortMonday"

    .line 213
    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    sget v7, Lorg/telegram/messenger/R$string;->CalendarWeekNameShortTuesday:I

    const-string v8, "CalendarWeekNameShortTuesday"

    .line 214
    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    sget v7, Lorg/telegram/messenger/R$string;->CalendarWeekNameShortWednesday:I

    const-string v8, "CalendarWeekNameShortWednesday"

    .line 215
    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget v7, Lorg/telegram/messenger/R$string;->CalendarWeekNameShortThursday:I

    const-string v9, "CalendarWeekNameShortThursday"

    .line 216
    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    aput-object v7, v6, v9

    const/4 v7, 0x4

    sget v10, Lorg/telegram/messenger/R$string;->CalendarWeekNameShortFriday:I

    const-string v11, "CalendarWeekNameShortFriday"

    .line 217
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x5

    sget v10, Lorg/telegram/messenger/R$string;->CalendarWeekNameShortSaturday:I

    const-string v11, "CalendarWeekNameShortSaturday"

    .line 218
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x6

    sget v10, Lorg/telegram/messenger/R$string;->CalendarWeekNameShortSunday:I

    const-string v11, "CalendarWeekNameShortSunday"

    .line 219
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    .line 223
    sget v7, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-static {v1, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 225
    new-instance v10, Lorg/telegram/ui/CalendarActivity$4;

    invoke-direct {v10, v0, v1, v6, v7}, Lorg/telegram/ui/CalendarActivity$4;-><init>(Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v6, v0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    const/4 v11, -0x1

    const/16 v12, 0x26

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v7, Lorg/telegram/ui/CalendarActivity$5;

    invoke-direct {v7, v0}, Lorg/telegram/ui/CalendarActivity$5;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 259
    iget-object v6, v0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    iput-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 261
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 262
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/CalendarActivity;->startFromYear:I

    .line 263
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/CalendarActivity;->startFromMonth:I

    .line 265
    iget v7, v0, Lorg/telegram/ui/CalendarActivity;->selectedYear:I

    if-eqz v7, :cond_2

    .line 266
    iget v10, v0, Lorg/telegram/ui/CalendarActivity;->startFromYear:I

    sub-int/2addr v10, v7

    mul-int/lit8 v10, v10, 0xc

    add-int/2addr v10, v6

    iget v6, v0, Lorg/telegram/ui/CalendarActivity;->selectedMonth:I

    sub-int/2addr v10, v6

    add-int/2addr v10, v5

    iput v10, v0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    .line 267
    iget-object v6, v0, Lorg/telegram/ui/CalendarActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    sub-int/2addr v10, v5

    const/16 v7, 0x78

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v10, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 269
    :cond_2
    iget v6, v0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    if-ge v6, v9, :cond_3

    .line 270
    iput v9, v0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    .line 273
    :cond_3
    new-instance v6, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v6, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v6, v0, Lorg/telegram/ui/CalendarActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    .line 274
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    iget-object v6, v0, Lorg/telegram/ui/CalendarActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 277
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CalendarActivity;->loadNext()V

    .line 278
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CalendarActivity;->updateColors()V

    .line 279
    iget-object v6, v0, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz v2, :cond_4

    .line 282
    new-instance v2, Lorg/telegram/ui/CalendarActivity$6;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/CalendarActivity$6;-><init>(Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/CalendarActivity;->bottomBar:Landroid/widget/FrameLayout;

    .line 288
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 289
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->bottomBar:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v6

    invoke-virtual {v2, v3, v6, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 290
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->bottomBar:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 291
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    const/16 v3, 0x11

    .line 292
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 293
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v2, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 294
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 295
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    new-instance v7, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->SelectDays:I

    const-string v9, "SelectDays"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 301
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->bottomBar:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    .line 304
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 305
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 306
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 307
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 333
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity;->bottomBar:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    const/4 v9, -0x1

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->bottomBar:Landroid/widget/FrameLayout;

    const/16 v10, 0x30

    const/16 v11, 0x50

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    const-string v2, "chat_fieldOverlayText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x33

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-static {v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    const-string v3, "dialogTextRed"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v4, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 1271
    new-instance v8, Lorg/telegram/ui/CalendarActivity$8;

    invoke-direct {v8, p0}, Lorg/telegram/ui/CalendarActivity$8;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    .line 1277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1278
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "windowBackgroundWhite"

    move-object v6, v8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    .line 1279
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    .line 1280
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    .line 1283
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 6

    const-string v0, "windowBackgroundWhite"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1450
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;[ZZ)I

    move-result v0

    .line 1451
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v3, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public needDelayOpenAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1438
    iget-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1439
    iput-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    .line 1440
    iput v0, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    iput v0, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    .line 1441
    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->updateTitle()V

    .line 1442
    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->animateSelection()V

    return v0

    .line 1445
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 5

    .line 148
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/CalendarActivity;->dialogId:J

    .line 149
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "topic_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/CalendarActivity;->calendarType:I

    .line 152
    iget-wide v0, p0, Lorg/telegram/ui/CalendarActivity;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->canClearHistory:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->canClearHistory:Z

    .line 157
    :goto_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1311
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 1312
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1313
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 1

    .line 1299
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    .line 1300
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1302
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1304
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    .line 1293
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    const/4 p1, 0x1

    .line 1294
    iput-boolean p1, p0, Lorg/telegram/ui/CalendarActivity;->isOpened:Z

    return-void
.end method

.method public setCallback(Lorg/telegram/ui/CalendarActivity$Callback;)V
    .locals 0

    .line 1243
    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->callback:Lorg/telegram/ui/CalendarActivity$Callback;

    return-void
.end method
