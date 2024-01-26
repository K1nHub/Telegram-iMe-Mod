.class public final Lcom/iMe/fork/ui/view/SortingFilterCell;
.super Landroid/widget/LinearLayout;
.source "SortingFilterCell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/view/SortingFilterCell$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSortingFilterCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SortingFilterCell.kt\ncom/iMe/fork/ui/view/SortingFilterCell\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,189:1\n262#2,2:190\n262#2,2:192\n260#2:194\n*S KotlinDebug\n*F\n+ 1 SortingFilterCell.kt\ncom/iMe/fork/ui/view/SortingFilterCell\n*L\n69#1:190,2\n70#1:192,2\n74#1:194\n*E\n"
.end annotation


# instance fields
.field private final checkBox$delegate:Lkotlin/Lazy;

.field private final checkBoxLayout$delegate:Lkotlin/Lazy;

.field private final fabsLayout$delegate:Lkotlin/Lazy;

.field private final fabsView$delegate:Lkotlin/Lazy;

.field private final iconView$delegate:Lkotlin/Lazy;

.field private needDivider:Z

.field private onFabsClick:Ljava/lang/Runnable;

.field private final textView$delegate:Lkotlin/Lazy;

.field private final verticalDivider$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$LNvTbCU2VsgLPNt-R34GvLV_7LI(Lcom/iMe/fork/ui/view/SortingFilterCell;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/view/SortingFilterCell;->initFabsLayout$lambda$5$lambda$4(Lcom/iMe/fork/ui/view/SortingFilterCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bpPFshFXpElkJHKrA85Do-C1fS8()V
    .locals 0

    invoke-static {}, Lcom/iMe/fork/ui/view/SortingFilterCell;->onFabsClick$lambda$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/view/SortingFilterCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/SortingFilterCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    sget-object p1, Lcom/iMe/fork/ui/view/SortingFilterCell$$ExternalSyntheticLambda1;->INSTANCE:Lcom/iMe/fork/ui/view/SortingFilterCell$$ExternalSyntheticLambda1;

    iput-object p1, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->onFabsClick:Ljava/lang/Runnable;

    .line 40
    new-instance p1, Lcom/iMe/fork/ui/view/SortingFilterCell$checkBox$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/SortingFilterCell$checkBox$2;-><init>(Lcom/iMe/fork/ui/view/SortingFilterCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->checkBox$delegate:Lkotlin/Lazy;

    .line 41
    new-instance p1, Lcom/iMe/fork/ui/view/SortingFilterCell$iconView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/SortingFilterCell$iconView$2;-><init>(Lcom/iMe/fork/ui/view/SortingFilterCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->iconView$delegate:Lkotlin/Lazy;

    .line 42
    new-instance p1, Lcom/iMe/fork/ui/view/SortingFilterCell$textView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/SortingFilterCell$textView$2;-><init>(Lcom/iMe/fork/ui/view/SortingFilterCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->textView$delegate:Lkotlin/Lazy;

    .line 43
    new-instance p1, Lcom/iMe/fork/ui/view/SortingFilterCell$checkBoxLayout$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/SortingFilterCell$checkBoxLayout$2;-><init>(Lcom/iMe/fork/ui/view/SortingFilterCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->checkBoxLayout$delegate:Lkotlin/Lazy;

    .line 44
    new-instance p1, Lcom/iMe/fork/ui/view/SortingFilterCell$verticalDivider$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/SortingFilterCell$verticalDivider$2;-><init>(Lcom/iMe/fork/ui/view/SortingFilterCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->verticalDivider$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p1, Lcom/iMe/fork/ui/view/SortingFilterCell$fabsLayout$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/SortingFilterCell$fabsLayout$2;-><init>(Lcom/iMe/fork/ui/view/SortingFilterCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->fabsLayout$delegate:Lkotlin/Lazy;

    .line 46
    new-instance p1, Lcom/iMe/fork/ui/view/SortingFilterCell$fabsView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/SortingFilterCell$fabsView$2;-><init>(Lcom/iMe/fork/ui/view/SortingFilterCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->fabsView$delegate:Lkotlin/Lazy;

    const/16 p1, 0x10

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 51
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getCheckBoxLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getVerticalDivider()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v2, 0x18

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getFabsLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, -0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$initCheckBox(Lcom/iMe/fork/ui/view/SortingFilterCell;)Lorg/telegram/ui/Components/CheckBoxSquare;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->initCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initCheckBoxLayout(Lcom/iMe/fork/ui/view/SortingFilterCell;)Landroid/widget/LinearLayout;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->initCheckBoxLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initFabsLayout(Lcom/iMe/fork/ui/view/SortingFilterCell;)Landroid/widget/FrameLayout;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->initFabsLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initFabsView(Lcom/iMe/fork/ui/view/SortingFilterCell;)Lcom/iMe/fork/ui/view/FabsView;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->initFabsView()Lcom/iMe/fork/ui/view/FabsView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initIconView(Lcom/iMe/fork/ui/view/SortingFilterCell;)Landroid/widget/ImageView;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->initIconView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTextView(Lcom/iMe/fork/ui/view/SortingFilterCell;)Landroid/widget/TextView;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->initTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initVerticalDivider(Lcom/iMe/fork/ui/view/SortingFilterCell;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->initVerticalDivider()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final getCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->checkBox$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    return-object v0
.end method

.method private final getCheckBoxLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->checkBoxLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getFabsLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->fabsLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getFabsView()Lcom/iMe/fork/ui/view/FabsView;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->fabsView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/view/FabsView;

    return-object v0
.end method

.method private final getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->iconView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getTextView()Landroid/widget/TextView;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->textView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getVerticalDivider()Landroid/view/View;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->verticalDivider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final initCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;
    .locals 3

    .line 118
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private final initCheckBoxLayout()Landroid/widget/LinearLayout;
    .locals 9

    .line 131
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v1

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x10

    const/16 v5, 0x15

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 134
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x22

    const/16 v3, 0x22

    const/16 v5, 0x17

    const/16 v7, 0x11

    .line 146
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x10

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final initFabsLayout()Landroid/widget/FrameLayout;
    .locals 9

    .line 161
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getFabsView()Lcom/iMe/fork/ui/view/FabsView;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x11

    const/16 v5, 0x15

    const/4 v6, 0x0

    const/16 v7, 0x15

    const/4 v8, 0x0

    .line 164
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v1, Lcom/iMe/fork/ui/view/SortingFilterCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/view/SortingFilterCell$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/view/SortingFilterCell;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initFabsLayout$lambda$5$lambda$4(Lcom/iMe/fork/ui/view/SortingFilterCell;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object p0, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->onFabsClick:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final initFabsView()Lcom/iMe/fork/ui/view/FabsView;
    .locals 3

    .line 177
    new-instance v0, Lcom/iMe/fork/ui/view/FabsView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/FabsView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final initIconView()Landroid/widget/ImageView;
    .locals 2

    .line 120
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 121
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private final initTextView()Landroid/widget/TextView;
    .locals 3

    .line 124
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    const/16 v1, 0x10

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 127
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initVerticalDivider()Landroid/view/View;
    .locals 2

    .line 159
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static final onFabsClick$lambda$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final checkFabTouch(F)Z
    .locals 3

    .line 74
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getCheckBoxLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getCheckBoxLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public final getOnFabsClick()Ljava/lang/Runnable;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->onFabsClick:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v6, v0, v1

    const/4 v3, 0x0

    .line 110
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x30

    .line 103
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 101
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    return-void
.end method

.method public final setFabsVisible(Z)V
    .locals 4

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getVerticalDivider()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 262
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getFabsLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 262
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getFabsLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method public final setOnFabsClick(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->onFabsClick:Ljava/lang/Runnable;

    return-void
.end method

.method public final setState(Lcom/iMe/fork/models/SortingTabState;Z)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/fork/models/SortingTabState;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    .line 60
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/fork/models/SortingTabState;->getType()Lcom/iMe/fork/enums/SortingFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/enums/SortingFilter;->getDefaultIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/fork/models/SortingTabState;->getType()Lcom/iMe/fork/enums/SortingFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/enums/SortingFilter;->getTitleResId()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getFabsView()Lcom/iMe/fork/ui/view/FabsView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/fork/models/SortingTabState;->getFabs()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/fork/ui/view/FabsView;->setFabs(Ljava/util/Set;)V

    .line 63
    iput-boolean p2, p0, Lcom/iMe/fork/ui/view/SortingFilterCell;->needDivider:Z

    xor-int/lit8 p1, p2, 0x1

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->updateColors()V

    return-void
.end method

.method public final updateColors()V
    .locals 4

    .line 77
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 78
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getCheckBoxLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 79
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x2

    .line 78
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getFabsLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 83
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 82
    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 87
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 88
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 89
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 87
    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 91
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getFabsView()Lcom/iMe/fork/ui/view/FabsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/FabsView;->updateColors()V

    .line 93
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->getVerticalDivider()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
