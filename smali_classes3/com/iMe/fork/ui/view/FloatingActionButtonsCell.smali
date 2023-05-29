.class public final Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;
.super Landroid/widget/LinearLayout;
.source "FloatingActionButtonsCell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/view/FloatingActionButtonsCell$Companion;
    }
.end annotation


# instance fields
.field private final fabsView$delegate:Lkotlin/Lazy;

.field private final textView$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell$textView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell$textView$2;-><init>(Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->textView$delegate:Lkotlin/Lazy;

    .line 19
    new-instance p1, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell$fabsView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell$fabsView$2;-><init>(Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->fabsView$delegate:Lkotlin/Lazy;

    const/16 p1, 0x11

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 p1, 0x17

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 24
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->getFabsView()Lcom/iMe/fork/ui/view/FabsView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$initFabsView(Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;)Lcom/iMe/fork/ui/view/FabsView;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->initFabsView()Lcom/iMe/fork/ui/view/FabsView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTextView(Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->initTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p0

    return-object p0
.end method

.method private final getFabsView()Lcom/iMe/fork/ui/view/FabsView;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->fabsView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/view/FabsView;

    return-object v0
.end method

.method private final getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->textView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method private final initFabsView()Lcom/iMe/fork/ui/view/FabsView;
    .locals 3

    .line 57
    new-instance v0, Lcom/iMe/fork/ui/view/FabsView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/FabsView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final initTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 2

    .line 52
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    .line 53
    sget v1, Lorg/telegram/messenger/R$string;->create_folder_change_fab_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x10

    .line 54
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setFabs(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fabs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->getFabsView()Lcom/iMe/fork/ui/view/FabsView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/ui/view/FabsView;->setFabs(Ljava/util/Set;)V

    .line 32
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->updateColors()V

    return-void
.end method

.method public final updateColors()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->getFabsView()Lcom/iMe/fork/ui/view/FabsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/FabsView;->updateColors()V

    .line 37
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method
