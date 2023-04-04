.class public final Lcom/iMe/ui/contacts/view/TextCellWithRightImage;
.super Lorg/telegram/ui/Cells/TextCell;
.source "TextCellWithRightImage.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextCellWithRightImage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextCellWithRightImage.kt\ncom/iMe/ui/contacts/view/TextCellWithRightImage\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,71:1\n262#2,2:72\n*S KotlinDebug\n*F\n+ 1 TextCellWithRightImage.kt\ncom/iMe/ui/contacts/view/TextCellWithRightImage\n*L\n38#1:72,2\n*E\n"
.end annotation


# instance fields
.field private final rightImage$delegate:Lkotlin/Lazy;

.field private final rightImageHeight:I

.field private final rightImageOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZ)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 22
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->rightImageOffset:I

    const/high16 p1, 0x42400000    # 48.0f

    .line 23
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->rightImageHeight:I

    .line 24
    new-instance p1, Lcom/iMe/ui/contacts/view/TextCellWithRightImage$rightImage$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage$rightImage$2;-><init>(Lcom/iMe/ui/contacts/view/TextCellWithRightImage;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->rightImage$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$initRightImageView(Lcom/iMe/ui/contacts/view/TextCellWithRightImage;)Landroid/widget/ImageView;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->initRightImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private final getRightImage()Landroid/widget/ImageView;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->rightImage$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final initRightImageView()Landroid/widget/ImageView;
    .locals 2

    .line 64
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 66
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 53
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/TextCell;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 55
    invoke-direct {p0}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->getRightImage()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    .line 56
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->rightImageOffset:I

    add-int/2addr p2, p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->getRightImage()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    iget p1, p0, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->rightImageOffset:I

    sub-int p2, p4, p1

    .line 57
    :goto_0
    invoke-direct {p0}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->getRightImage()Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->getRightImage()Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    invoke-direct {p0}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->getRightImage()Landroid/widget/ImageView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p1, p2, p5, p3, p4}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 46
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Cells/TextCell;->onMeasure(II)V

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 48
    iget p2, p0, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->rightImageHeight:I

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->getRightImage()Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageView;->measure(II)V

    return-void
.end method

.method public final setRightActionClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->getRightImage()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setRightIcon(II)V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->getRightImage()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    invoke-direct {p0}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->getRightImage()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final setRightIconVisible(Z)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->getRightImage()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 262
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
