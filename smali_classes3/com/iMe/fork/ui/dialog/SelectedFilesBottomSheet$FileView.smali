.class final Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;
.super Landroid/widget/LinearLayout;
.source "SelectedFilesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FileView"
.end annotation


# instance fields
.field private final deleteButton$delegate:Lkotlin/Lazy;

.field private final imageView$delegate:Lkotlin/Lazy;

.field private final nameTextView$delegate:Lkotlin/Lazy;

.field private final sizeTextView$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 527
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView$imageView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView$imageView$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->imageView$delegate:Lkotlin/Lazy;

    .line 528
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView$nameTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView$nameTextView$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->nameTextView$delegate:Lkotlin/Lazy;

    .line 529
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView$sizeTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView$sizeTextView$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->sizeTextView$delegate:Lkotlin/Lazy;

    .line 530
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView$deleteButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView$deleteButton$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->deleteButton$delegate:Lkotlin/Lazy;

    const/16 p1, 0x10

    .line 533
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    const/16 v0, 0x8

    .line 534
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingVertical(Landroid/view/View;I)V

    .line 535
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 537
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, -0x2

    .line 538
    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 536
    invoke-virtual {p0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 541
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 543
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->getNameTextView()Landroid/widget/TextView;

    move-result-object p2

    const/4 v1, -0x1

    .line 544
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 542
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->getSizeTextView()Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 546
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 554
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    .line 553
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->getDeleteButton()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x20

    const/16 v1, 0x20

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    .line 560
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$initDeleteButton(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)Landroid/widget/ImageView;
    .locals 0

    .line 524
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->initDeleteButton()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initImageView(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)Landroid/widget/ImageView;
    .locals 0

    .line 524
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->initImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initNameTextView(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)Landroid/widget/TextView;
    .locals 0

    .line 524
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->initNameTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSizeTextView(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)Landroid/widget/TextView;
    .locals 0

    .line 524
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->initSizeTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getDeleteButton()Landroid/widget/ImageView;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->deleteButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->imageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getNameTextView()Landroid/widget/TextView;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->nameTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getSizeTextView()Landroid/widget/TextView;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->sizeTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initDeleteButton()Landroid/widget/ImageView;
    .locals 5

    .line 624
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    .line 625
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 626
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_replyPanelClose:I

    invoke-static {v1, v3}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;I)I

    move-result v3

    .line 627
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 625
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 629
    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v3, "Delete"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 630
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 631
    sget v2, Lorg/telegram/messenger/R$drawable;->input_clear:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 633
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1, v2}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;I)I

    move-result v1

    const/4 v2, 0x3

    .line 632
    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private final initImageView()Landroid/widget/ImageView;
    .locals 5

    .line 593
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    const/16 v2, 0x2c

    .line 595
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 596
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_round_file_s:I

    .line 594
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v2

    .line 600
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMediaIcon:I

    invoke-static {v1, v3}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;I)I

    move-result v3

    const/4 v4, 0x0

    .line 598
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 605
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIcon:I

    invoke-static {v1, v3}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;I)I

    move-result v1

    const/4 v3, 0x1

    .line 603
    invoke-static {v2, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 608
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private final initNameTextView()Landroid/widget/TextView;
    .locals 4

    .line 611
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    .line 612
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 613
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1, v2}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 614
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    .line 615
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 616
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    return-object v0
.end method

.method private final initSizeTextView()Landroid/widget/TextView;
    .locals 4

    .line 619
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    const/4 v2, 0x1

    const/high16 v3, 0x41400000    # 12.0f

    .line 620
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 621
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1, v2}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 584
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getItemWidth$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 583
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setupView(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fileItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemDeleteClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->getSizeTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;->getSize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->getDeleteButton()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v4, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView$setupView$2;

    invoke-direct {v4, p2}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView$setupView$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
