.class final Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;
.super Landroid/widget/LinearLayout;
.source "HorizontalActionButtonsView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/custom/HorizontalActionButtonsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Button"
.end annotation


# instance fields
.field private final imageView$delegate:Lkotlin/Lazy;

.field private final textView$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button$imageView$2;

    invoke-direct {v0, p1}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button$imageView$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->imageView$delegate:Lkotlin/Lazy;

    .line 64
    new-instance p1, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button$textView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button$textView$2;-><init>(Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->textView$delegate:Lkotlin/Lazy;

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->initView()V

    .line 68
    invoke-direct {p0, p2}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->setupData(Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;)V

    return-void
.end method

.method public static final synthetic access$initTextView(Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;)Landroid/widget/TextView;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->initTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getImageView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->imageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getTextView()Landroid/widget/TextView;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->textView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initTextView()Landroid/widget/TextView;
    .locals 3

    .line 93
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    .line 96
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 99
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$dimen;->text_size_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initView()V
    .locals 7

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$dimen;->margin_half_small:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {p0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 80
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$dimen;->margin_normal_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {p0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingVertical(Landroid/view/View;I)V

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 84
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final setupData(Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;)V
    .locals 7

    .line 104
    invoke-direct {p0}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;->isEnabled()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setEnabledWithAlpha(Landroid/view/View;Z)V

    .line 107
    new-instance v4, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button$setupData$1;

    invoke-direct {v4, p1}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button$setupData$1;-><init>(Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final setupColors()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-static {p0, v0, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 74
    invoke-direct {p0}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
