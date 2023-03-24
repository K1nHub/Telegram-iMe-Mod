.class Lorg/telegram/ui/Components/FiltersListBottomSheet$1;
.super Landroid/widget/FrameLayout;
.source "FiltersListBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FiltersListBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private fullHeight:Z

.field private rect:Landroid/graphics/RectF;

.field private statusBarOpen:Ljava/lang/Boolean;

.field final synthetic this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FiltersListBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method private updateLightStatusBar(Z)V
    .locals 6

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->statusBarOpen:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    const-string v1, "dialogBackground"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$2300(Lorg/telegram/ui/Components/FiltersListBottomSheet;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 187
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    const-string v5, "actionBarDefault"

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$2400(Lorg/telegram/ui/Components/FiltersListBottomSheet;Ljava/lang/String;)I

    move-result v4

    const/high16 v5, 0x33000000

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v4

    cmpl-float v1, v4, v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 188
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->statusBarOpen:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    .line 189
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$000(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$900(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    const/16 v2, 0x24

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1000(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v2

    add-int/2addr v1, v2

    .line 148
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x15

    if-lt v2, v5, :cond_2

    .line 149
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v2

    sub-int/2addr v1, v2

    .line 152
    iget-boolean v2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->fullHeight:Z

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1100(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v2

    add-int/2addr v2, v0

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v6, v5, 0x2

    if-ge v2, v6, :cond_0

    mul-int/lit8 v2, v5, 0x2

    sub-int/2addr v2, v0

    .line 154
    iget-object v6, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1200(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v6

    sub-int/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v1, v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 157
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v4, v2

    goto :goto_0

    :cond_0
    move v2, v4

    .line 159
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1300(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v5

    add-int/2addr v5, v0

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v5, v6, :cond_1

    sub-int v5, v6, v0

    .line 160
    iget-object v7, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1400(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v3

    move v2, v4

    .line 165
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1500(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v3, v0, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    iget-object v1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1600(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpl-float v1, v2, v4

    const-string v4, "dialogBackground"

    if-eqz v1, :cond_3

    .line 169
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->rect:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1700(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1800(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v7

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1900(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$2000(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v9

    add-int/2addr v9, v0

    const/16 v0, 0x18

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v9, v0

    int-to-float v0, v9

    invoke-virtual {v1, v6, v7, v8, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->rect:Landroid/graphics/RectF;

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    if-lez v5, :cond_4

    .line 175
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$2100(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v0

    int-to-float v7, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v5

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$2200(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v9, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v10, v0

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 178
    :cond_4
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/lit8 p1, p1, 0x2

    if-le v5, p1, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->updateLightStatusBar(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$000(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$000(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 95
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 130
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 131
    iget-object p1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$800(Lorg/telegram/ui/Components/FiltersListBottomSheet;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 105
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$102(Lorg/telegram/ui/Components/FiltersListBottomSheet;Z)Z

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$200(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v4, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$300(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v4

    invoke-virtual {p0, v0, v3, v4, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$102(Lorg/telegram/ui/Components/FiltersListBottomSheet;Z)Z

    :cond_0
    const/16 v0, 0x30

    .line 111
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$400(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->getItemCount()I

    move-result v4

    mul-int/2addr v0, v4

    add-int/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$500(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v0

    add-int/2addr v3, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v0

    int-to-double v4, v3

    .line 112
    div-int/lit8 v0, p2, 0x5

    int-to-double v6, v0

    const-wide v8, 0x400999999999999aL    # 3.2

    mul-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    if-eqz v0, :cond_2

    if-ge v3, p2, :cond_2

    sub-int v4, p2, v3

    sub-int/2addr v0, v4

    :cond_2
    if-nez v0, :cond_3

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$600(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v0

    .line 119
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$700(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    if-eq v4, v0, :cond_4

    .line 120
    iget-object v4, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$102(Lorg/telegram/ui/Components/FiltersListBottomSheet;Z)Z

    .line 121
    iget-object v4, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$700(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v6, v0, v5, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$102(Lorg/telegram/ui/Components/FiltersListBottomSheet;Z)Z

    :cond_4
    if-lt v3, p2, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    .line 124
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->fullHeight:Z

    .line 125
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$100(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
