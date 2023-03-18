.class final Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;
.super Landroid/widget/LinearLayout;
.source "SelectedFilesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/dialog/SelectedFilesBottomSheet;
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

.field final synthetic this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method public constructor <init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Landroid/content/Context;)V
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

    .line 406
    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 409
    new-instance p1, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView$imageView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView$imageView$2;-><init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->imageView$delegate:Lkotlin/Lazy;

    .line 410
    new-instance p1, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView$nameTextView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView$nameTextView$2;-><init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->nameTextView$delegate:Lkotlin/Lazy;

    .line 411
    new-instance p1, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView$sizeTextView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView$sizeTextView$2;-><init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->sizeTextView$delegate:Lkotlin/Lazy;

    .line 412
    new-instance p1, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView$deleteButton$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView$deleteButton$2;-><init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->deleteButton$delegate:Lkotlin/Lazy;

    const/16 p1, 0x10

    .line 415
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    const/16 v0, 0x8

    .line 416
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingVertical(Landroid/view/View;I)V

    .line 417
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 418
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, -0x2

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 420
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 421
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->getNameTextView()Landroid/widget/TextView;

    move-result-object p2

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->getSizeTextView()Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 427
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->getDeleteButton()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x20

    const/16 v1, 0x20

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$initDeleteButton(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)Landroid/widget/ImageView;
    .locals 0

    .line 406
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->initDeleteButton()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initImageView(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)Landroid/widget/ImageView;
    .locals 0

    .line 406
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->initImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initNameTextView(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)Landroid/widget/TextView;
    .locals 0

    .line 406
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->initNameTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSizeTextView(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;)Landroid/widget/TextView;
    .locals 0

    .line 406
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->initSizeTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getDeleteButton()Landroid/widget/ImageView;
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->deleteButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 409
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->imageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getNameTextView()Landroid/widget/TextView;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->nameTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getSizeTextView()Landroid/widget/TextView;
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->sizeTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initDeleteButton()Landroid/widget/ImageView;
    .locals 5

    .line 486
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    .line 487
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "chat_replyPanelClose"

    invoke-static {v1, v3}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 488
    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v3, "Delete"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 489
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 490
    sget v2, Lorg/telegram/messenger/R$drawable;->input_clear:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v2, "listSelectorSDK21"

    .line 492
    invoke-static {v1, v2}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    .line 491
    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private final initImageView()Landroid/widget/ImageView;
    .locals 5

    .line 463
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    const/16 v2, 0x2c

    .line 465
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 466
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_round_file_s:I

    .line 464
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v2

    const-string v3, "chat_outMediaIcon"

    .line 468
    invoke-static {v1, v3}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    const-string v3, "chat_inMediaIcon"

    .line 469
    invoke-static {v1, v3}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 470
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private final initNameTextView()Landroid/widget/TextView;
    .locals 4

    .line 473
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    .line 474
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string/jumbo v2, "windowBackgroundWhiteBlackText"

    .line 475
    invoke-static {v1, v2}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    .line 477
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 478
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    return-object v0
.end method

.method private final initSizeTextView()Landroid/widget/TextView;
    .locals 4

    .line 481
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    const/4 v2, 0x1

    const/high16 v3, 0x41400000    # 12.0f

    .line 482
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string/jumbo v2, "windowBackgroundWhiteGrayText"

    .line 483
    invoke-static {v1, v2}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 454
    iget-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {p1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getItemWidth$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 453
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setupView(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fileItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemDeleteClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->getSizeTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;->getSize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->getDeleteButton()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v4, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView$setupView$2;

    invoke-direct {v4, p2}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView$setupView$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
