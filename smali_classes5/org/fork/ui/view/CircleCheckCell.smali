.class public abstract Lorg/fork/ui/view/CircleCheckCell;
.super Landroid/widget/FrameLayout;
.source "CircleCheckCell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/view/CircleCheckCell$Companion;
    }
.end annotation


# instance fields
.field private final checkBox$delegate:Lkotlin/Lazy;

.field private final circleView$delegate:Lkotlin/Lazy;

.field private final iconScaleType:Landroid/widget/ImageView$ScaleType;

.field private final iconSize:I

.field private final iconView$delegate:Lkotlin/Lazy;

.field private final nameTextView$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$zCiYGDrzFrGEa916ImIZDEgx4tU(Lorg/telegram/ui/Components/CheckBox2;Lorg/fork/ui/view/CircleCheckCell;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/view/CircleCheckCell;->initCheckBox$lambda-4$lambda-3(Lorg/telegram/ui/Components/CheckBox2;Lorg/fork/ui/view/CircleCheckCell;F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/ui/view/CircleCheckCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/ui/view/CircleCheckCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/ImageView$ScaleType;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconScaleType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput p2, p0, Lorg/fork/ui/view/CircleCheckCell;->iconSize:I

    .line 22
    iput-object p3, p0, Lorg/fork/ui/view/CircleCheckCell;->iconScaleType:Landroid/widget/ImageView$ScaleType;

    .line 33
    new-instance p1, Lorg/fork/ui/view/CircleCheckCell$circleView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/CircleCheckCell$circleView$2;-><init>(Lorg/fork/ui/view/CircleCheckCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/CircleCheckCell;->circleView$delegate:Lkotlin/Lazy;

    .line 34
    new-instance p1, Lorg/fork/ui/view/CircleCheckCell$iconView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/CircleCheckCell$iconView$2;-><init>(Lorg/fork/ui/view/CircleCheckCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/CircleCheckCell;->iconView$delegate:Lkotlin/Lazy;

    .line 35
    new-instance p1, Lorg/fork/ui/view/CircleCheckCell$nameTextView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/CircleCheckCell$nameTextView$2;-><init>(Lorg/fork/ui/view/CircleCheckCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/CircleCheckCell;->nameTextView$delegate:Lkotlin/Lazy;

    .line 36
    new-instance p1, Lorg/fork/ui/view/CircleCheckCell$checkBox$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/CircleCheckCell$checkBox$2;-><init>(Lorg/fork/ui/view/CircleCheckCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/CircleCheckCell;->checkBox$delegate:Lkotlin/Lazy;

    .line 39
    invoke-direct {p0}, Lorg/fork/ui/view/CircleCheckCell;->init()V

    return-void
.end method

.method public static final synthetic access$initCheckBox(Lorg/fork/ui/view/CircleCheckCell;)Lorg/telegram/ui/Components/CheckBox2;
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/fork/ui/view/CircleCheckCell;->initCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initCircleView(Lorg/fork/ui/view/CircleCheckCell;)Landroid/view/View;
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/fork/ui/view/CircleCheckCell;->initCircleView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initIconView(Lorg/fork/ui/view/CircleCheckCell;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/fork/ui/view/CircleCheckCell;->initIconView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initNameTextView(Lorg/fork/ui/view/CircleCheckCell;)Landroid/widget/TextView;
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/fork/ui/view/CircleCheckCell;->initNameTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getCheckBox()Lorg/telegram/ui/Components/CheckBox2;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/fork/ui/view/CircleCheckCell;->checkBox$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/CheckBox2;

    return-object v0
.end method

.method private final getCircleView()Landroid/view/View;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/fork/ui/view/CircleCheckCell;->circleView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/fork/ui/view/CircleCheckCell;->iconView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getNameTextView()Landroid/widget/TextView;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/fork/ui/view/CircleCheckCell;->nameTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final init()V
    .locals 8

    .line 58
    invoke-direct {p0}, Lorg/fork/ui/view/CircleCheckCell;->getCircleView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x3e

    const/16 v2, 0x3e

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-direct {p0}, Lorg/fork/ui/view/CircleCheckCell;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    iget v2, p0, Lorg/fork/ui/view/CircleCheckCell;->iconSize:I

    rsub-int/lit8 v1, v2, 0x3e

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v5, v1, 0x7

    move v1, v2

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-direct {p0}, Lorg/fork/ui/view/CircleCheckCell;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/16 v5, 0x48

    const/4 v6, 0x6

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-direct {p0}, Lorg/fork/ui/view/CircleCheckCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    const/16 v1, 0x18

    const/16 v2, 0x18

    const/4 v3, 0x1

    const/16 v4, 0x13

    const/16 v5, 0x30

    const/4 v6, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final initCheckBox()Lorg/telegram/ui/Components/CheckBox2;
    .locals 4

    .line 80
    new-instance v0, Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const-string v2, "dialogBackground"

    const-string v3, "dialogRoundCheckBoxCheck"

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/CheckBox2;->setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    const/4 v1, 0x4

    .line 83
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 84
    new-instance v1, Lorg/fork/ui/view/CircleCheckCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lorg/fork/ui/view/CircleCheckCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/CheckBox2;Lorg/fork/ui/view/CircleCheckCell;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setProgressDelegate(Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;)V

    return-object v0
.end method

.method private static final initCheckBox$lambda-4$lambda-3(Lorg/telegram/ui/Components/CheckBox2;Lorg/fork/ui/view/CircleCheckCell;F)V
    .locals 0

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result p0

    const p2, 0x3e126e98    # 0.143f

    mul-float p0, p0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p0

    .line 86
    invoke-direct {p1}, Lorg/fork/ui/view/CircleCheckCell;->getCircleView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 87
    invoke-direct {p1}, Lorg/fork/ui/view/CircleCheckCell;->getCircleView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final initCircleView()Landroid/view/View;
    .locals 2

    .line 64
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final initIconView()Landroid/widget/ImageView;
    .locals 2

    .line 66
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Lorg/fork/ui/view/CircleCheckCell;->getIconScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private final initNameTextView()Landroid/widget/TextView;
    .locals 4

    .line 70
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/4 v2, 0x2

    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 74
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const-string v3, "dialogTextBlack"

    .line 75
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41300000    # 11.0f

    .line 76
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    return-object v0
.end method


# virtual methods
.method public final getIconScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/fork/ui/view/CircleCheckCell;->iconScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final getIconSize()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/fork/ui/view/CircleCheckCell;->iconSize:I

    return v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/fork/ui/view/CircleCheckCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final setChecked(Z)V
    .locals 2

    .line 29
    invoke-direct {p0}, Lorg/fork/ui/view/CircleCheckCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public final setData(IILjava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lorg/fork/ui/view/CircleCheckCell;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-direct {p0}, Lorg/fork/ui/view/CircleCheckCell;->getIconView()Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/view/CircleCheckCell;->getCircleView()Landroid/view/View;

    move-result-object p2

    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 49
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 50
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 47
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
