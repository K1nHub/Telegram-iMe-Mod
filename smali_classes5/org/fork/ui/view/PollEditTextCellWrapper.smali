.class public final Lorg/fork/ui/view/PollEditTextCellWrapper;
.super Landroid/widget/LinearLayout;
.source "PollEditTextCellWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/view/PollEditTextCellWrapper$Companion;
    }
.end annotation


# instance fields
.field private final arrowImageView$delegate:Lkotlin/Lazy;

.field private final iconLayout$delegate:Lkotlin/Lazy;

.field private final iconView$delegate:Lkotlin/Lazy;

.field private final noIconTextView$delegate:Lkotlin/Lazy;

.field private final onSelectIconClick:Ljava/lang/Runnable;

.field private final pollEditTextCell:Lorg/telegram/ui/Cells/PollEditTextCell;

.field private final type:Lorg/fork/enums/FilterActivityType;


# direct methods
.method public static synthetic $r8$lambda$su_SeBS1RRQZMzXgMlJjEmVV2L0(Lorg/fork/ui/view/PollEditTextCellWrapper;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/view/PollEditTextCellWrapper;->initIconLayout$lambda-2$lambda-1(Lorg/fork/ui/view/PollEditTextCellWrapper;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/ui/view/PollEditTextCellWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/ui/view/PollEditTextCellWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/PollEditTextCell;Lorg/fork/enums/FilterActivityType;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "pollEditTextCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSelectIconClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->pollEditTextCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 26
    iput-object p2, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->type:Lorg/fork/enums/FilterActivityType;

    .line 27
    iput-object p3, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->onSelectIconClick:Ljava/lang/Runnable;

    .line 31
    new-instance p2, Lorg/fork/ui/view/PollEditTextCellWrapper$iconLayout$2;

    invoke-direct {p2, p0}, Lorg/fork/ui/view/PollEditTextCellWrapper$iconLayout$2;-><init>(Lorg/fork/ui/view/PollEditTextCellWrapper;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->iconLayout$delegate:Lkotlin/Lazy;

    .line 32
    new-instance p2, Lorg/fork/ui/view/PollEditTextCellWrapper$iconView$2;

    invoke-direct {p2, p0}, Lorg/fork/ui/view/PollEditTextCellWrapper$iconView$2;-><init>(Lorg/fork/ui/view/PollEditTextCellWrapper;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->iconView$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p2, Lorg/fork/ui/view/PollEditTextCellWrapper$noIconTextView$2;

    invoke-direct {p2, p0}, Lorg/fork/ui/view/PollEditTextCellWrapper$noIconTextView$2;-><init>(Lorg/fork/ui/view/PollEditTextCellWrapper;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->noIconTextView$delegate:Lkotlin/Lazy;

    .line 34
    new-instance p2, Lorg/fork/ui/view/PollEditTextCellWrapper$arrowImageView$2;

    invoke-direct {p2, p0}, Lorg/fork/ui/view/PollEditTextCellWrapper$arrowImageView$2;-><init>(Lorg/fork/ui/view/PollEditTextCellWrapper;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->arrowImageView$delegate:Lkotlin/Lazy;

    const/4 p2, 0x0

    const/4 p3, -0x2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    invoke-static {p2, p3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getIconLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, -0x1

    const/16 v0, 0x30

    invoke-static {p3, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->setupPollEditTextCell()V

    .line 40
    invoke-virtual {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->updateColors()V

    return-void
.end method

.method public static final synthetic access$initArrowImageView(Lorg/fork/ui/view/PollEditTextCellWrapper;)Landroid/widget/ImageView;
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->initArrowImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initIconLayout(Lorg/fork/ui/view/PollEditTextCellWrapper;)Landroid/widget/LinearLayout;
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->initIconLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initIconView(Lorg/fork/ui/view/PollEditTextCellWrapper;)Landroid/widget/ImageView;
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->initIconView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initNoIconTextView(Lorg/fork/ui/view/PollEditTextCellWrapper;)Landroid/widget/TextView;
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->initNoIconTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getArrowImageView()Landroid/widget/ImageView;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->arrowImageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getIconLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->iconLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->iconView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getNoIconTextView()Landroid/widget/TextView;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->noIconTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initArrowImageView()Landroid/widget/ImageView;
    .locals 2

    .line 96
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 97
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 98
    sget v1, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initIconLayout()Landroid/widget/LinearLayout;
    .locals 9

    .line 78
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x6

    .line 79
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    const/16 v1, 0x11

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 81
    new-instance v1, Lorg/fork/ui/view/PollEditTextCellWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fork/ui/view/PollEditTextCellWrapper$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/view/PollEditTextCellWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getType()Lorg/fork/enums/FilterActivityType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/enums/FilterActivityType;->getIconSize()I

    move-result v2

    invoke-virtual {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getType()Lorg/fork/enums/FilterActivityType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fork/enums/FilterActivityType;->getIconSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getNoIconTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getArrowImageView()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x11

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static final initIconLayout$lambda-2$lambda-1(Lorg/fork/ui/view/PollEditTextCellWrapper;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getOnSelectIconClick()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final initIconView()Landroid/widget/ImageView;
    .locals 2

    .line 87
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 88
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private final initNoIconTextView()Landroid/widget/TextView;
    .locals 3

    .line 91
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 92
    sget v1, Lorg/telegram/messenger/R$string;->no_icon:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final setupPollEditTextCell()V
    .locals 3

    .line 72
    iget-object v0, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->pollEditTextCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 73
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    const-string/jumbo v2, "textView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->needVerticalDivider:Z

    return-void
.end method


# virtual methods
.method public final checkEditTextTouch(F)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->pollEditTextCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->pollEditTextCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getOnSelectIconClick()Ljava/lang/Runnable;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->onSelectIconClick:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getPollEditTextCell()Lorg/telegram/ui/Cells/PollEditTextCell;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->pollEditTextCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    return-object v0
.end method

.method public final getType()Lorg/fork/enums/FilterActivityType;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->type:Lorg/fork/enums/FilterActivityType;

    return-object v0
.end method

.method public final setIcon(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 48
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getNoIconTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getNoIconTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 51
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 52
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public final updateColors()V
    .locals 4

    .line 57
    iget-object v0, p0, Lorg/fork/ui/view/PollEditTextCellWrapper;->pollEditTextCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 58
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getIconLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 59
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getIconLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "listSelectorSDK21"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chats_actionBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 61
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getNoIconTextView()Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "windowBackgroundWhiteGrayIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-direct {p0}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getArrowImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
