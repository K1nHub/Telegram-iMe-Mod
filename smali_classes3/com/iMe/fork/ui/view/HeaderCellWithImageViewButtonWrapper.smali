.class public final Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;
.super Landroid/widget/FrameLayout;
.source "HeaderCellWithImageViewButtonWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeaderCellWithImageViewButtonWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeaderCellWithImageViewButtonWrapper.kt\ncom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,66:1\n359#2:67\n359#2:68\n177#2,2:69\n*S KotlinDebug\n*F\n+ 1 HeaderCellWithImageViewButtonWrapper.kt\ncom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper\n*L\n31#1:67\n35#1:68\n60#1:69,2\n*E\n"
.end annotation


# instance fields
.field private final headerCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private final imageView$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/HeaderCell;)V
    .locals 10

    const-string v0, "headerCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 23
    new-instance v0, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper$imageView$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper$imageView$2;-><init>(Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->imageView$delegate:Lkotlin/Lazy;

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 28
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    .line 30
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v5, v2, 0x50

    const/4 v2, 0x0

    const-string v3, "headerCell.textView"

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 31
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    int-to-float v1, v1

    .line 31
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->px(F)I

    move-result v1

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    const/4 v7, 0x0

    .line 34
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_4

    move v8, v4

    goto :goto_4

    .line 35
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_5

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_5
    if-eqz v2, :cond_6

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_6
    int-to-float p1, v4

    .line 35
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->px(F)I

    move-result p1

    move v8, p1

    :goto_4
    const/4 v9, 0x0

    const/16 v3, 0x18

    const/16 v4, 0x18

    .line 28
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    .line 27
    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->setupColors()V

    return-void
.end method

.method public static final synthetic access$initImageView(Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->initImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    return-object p0
.end method

.method private final initImageView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 4

    .line 59
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 60
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 177
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final getHeaderCell()Lorg/telegram/ui/Cells/HeaderCell;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    return-object v0
.end method

.method public final getImageView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->imageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method public final setupColors()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 46
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 49
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    .line 50
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 51
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setBoundedCircleRippleBackground(Landroid/view/View;)V

    return-void
.end method
