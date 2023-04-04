.class public final Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;
.super Landroid/widget/FrameLayout;
.source "TextNetworkSwitcherCell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell$Companion;
    }
.end annotation


# instance fields
.field private final dialog:Z

.field private final networkTypeView$delegate:Lkotlin/Lazy;

.field private final textView$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean p2, p0, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->dialog:Z

    .line 29
    new-instance p1, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell$textView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell$textView$2;-><init>(Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->textView$delegate:Lkotlin/Lazy;

    .line 30
    new-instance p1, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell$networkTypeView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell$networkTypeView$2;-><init>(Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->networkTypeView$delegate:Lkotlin/Lazy;

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v0, 0x5

    const/4 v1, 0x3

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    or-int/lit8 v5, v2, 0x30

    const/high16 v2, 0x42840000    # 66.0f

    const/high16 v3, 0x41a80000    # 21.0f

    if-eqz p2, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    const/4 v7, 0x0

    if-eqz p2, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move v8, v2

    :goto_2
    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object p1

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    or-int/lit8 v4, v0, 0x10

    const/high16 v5, 0x41a80000    # 21.0f

    const/4 v6, 0x0

    const/high16 v7, 0x41a80000    # 21.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 23
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final synthetic access$initNetworkTypeView(Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;)Lcom/iMe/ui/custom/NetworkTypeView;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->initNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTextView(Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;)Landroid/widget/TextView;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->initTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->networkTypeView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/NetworkTypeView;

    return-object v0
.end method

.method private final getTextView()Landroid/widget/TextView;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->textView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;
    .locals 7

    .line 72
    new-instance v6, Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/custom/NetworkTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method private final initTextView()Landroid/widget/TextView;
    .locals 3

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    iget-boolean v1, p0, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->dialog:Z

    if-eqz v1, :cond_0

    const-string v1, "dialogTextBlack"

    goto :goto_0

    :cond_0
    const-string v1, "windowBackgroundWhiteBlackText"

    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x1

    .line 76
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 80
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    :goto_1
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 81
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-object v0
.end method


# virtual methods
.method public final getDialog()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->dialog:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 61
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 65
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public final setNetworkTypeClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
