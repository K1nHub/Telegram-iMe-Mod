.class Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PremiumPreviewBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$1;)V
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->paddingRow:I

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 572
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresStartRow:I

    if-lt p1, v1, :cond_1

    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresEndRow:I

    if-ge p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 574
    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->sectionRow:I

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    return p1

    .line 576
    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonRow:I

    if-ne p1, v1, :cond_3

    const/4 p1, 0x3

    return p1

    .line 578
    :cond_3
    iget v0, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->helpUsRow:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 581
    :cond_4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 586
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 558
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresStartRow:I

    if-lt p2, v1, :cond_1

    iget v2, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresEndRow:I

    if-ge p2, v2, :cond_1

    .line 559
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/PremiumFeatureCell;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresEndRow:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/PremiumFeatureCell;->setData(Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Z)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 386
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    const/4 v5, 0x4

    if-eq v1, v5, :cond_0

    .line 527
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$6;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$6;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;)V

    goto/16 :goto_3

    .line 549
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/Premium/AboutPremiumView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/Premium/AboutPremiumView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 541
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$7;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$7;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;)V

    goto/16 :goto_3

    .line 538
    :cond_2
    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/16 v5, 0xc

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$1200(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v2, v5, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    goto/16 :goto_3

    .line 389
    :cond_3
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$1;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;)V

    .line 398
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iput-object v1, v6, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconContainer:Landroid/view/ViewGroup;

    const/4 v6, 0x1

    .line 399
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 400
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v8, v7, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    if-nez v8, :cond_4

    .line 401
    new-instance v8, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$2;

    invoke-direct {v8, v0, v2, v6}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;I)V

    iput-object v8, v7, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    .line 414
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v8, 0x32

    invoke-static {v8, v8, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 415
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 416
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    const-string v10, "premiumGradient2"

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$100(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I

    move-result v9

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    const-string v12, "dialogBackground"

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$200(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-static {v9, v11, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 417
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 418
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v7, v7, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v7, v7, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iput-object v10, v7, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey1:Ljava/lang/String;

    const-string v8, "premiumGradient1"

    .line 419
    iput-object v8, v7, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey2:Ljava/lang/String;

    .line 420
    invoke-virtual {v7}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    .line 421
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v7, v7, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/16 v8, 0xa0

    invoke-static {v8, v8, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 423
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 424
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v7, v7, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 426
    :cond_5
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v7, v7, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    const/16 v8, 0x8c

    const/16 v9, 0x8c

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v11, 0x11

    const/16 v12, 0xa

    const/16 v13, 0xa

    const/16 v14, 0xa

    const/16 v15, 0xa

    invoke-static/range {v8 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v7

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    const-string/jumbo v9, "windowBackgroundWhiteLinkText"

    const/4 v10, 0x0

    if-nez v7, :cond_7

    .line 430
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v11}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$302(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 431
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 433
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v11, v9}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0xb2

    invoke-static {v11, v12}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 434
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    new-array v12, v5, [Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$502(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;)[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v5, :cond_7

    .line 436
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$3;

    iget-object v14, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$600(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v14

    invoke-direct {v13, v0, v2, v14, v7}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$3;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/graphics/ColorFilter;)V

    aput-object v13, v12, v11

    .line 461
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v12

    aget-object v12, v12, v11

    if-nez v11, :cond_6

    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    const/16 v13, 0x8

    :goto_2
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v12

    aget-object v12, v12, v11

    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v12, v6, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 463
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v12

    aget-object v12, v12, v11

    const-string v13, "fonts/rmedium.ttf"

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 464
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 465
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v12

    aget-object v12, v12, v11

    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v13, v8}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$700(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 466
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v12

    aget-object v12, v12, v11

    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v13, v9}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$800(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 467
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v13}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v13

    aget-object v13, v13, v11

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 470
    :cond_7
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 471
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 473
    :cond_8
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v5

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x28

    const/16 v16, 0x0

    const/16 v17, 0x28

    const/16 v18, 0x0

    invoke-static/range {v11 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/TextView;

    move-result-object v5

    if-nez v5, :cond_9

    .line 476
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$902(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 477
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/TextView;

    move-result-object v5

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 478
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 479
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$1000(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 480
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v7, v9}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$1100(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 482
    :cond_9
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 483
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 485
    :cond_a
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x10

    const/16 v16, 0x9

    const/16 v17, 0x10

    const/16 v18, 0x14

    invoke-static/range {v11 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->setTitle(Z)V

    .line 489
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    new-instance v7, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$4;

    invoke-direct {v7, v0, v2}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$4;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;)V

    iput-object v7, v5, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    .line 497
    new-instance v5, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$5;

    invoke-direct {v5, v0, v2}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$5;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;)V

    .line 510
    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 511
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 512
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 514
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iput-boolean v6, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useGradient:Z

    .line 515
    iput-boolean v10, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    .line 516
    iput-boolean v6, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->forceMaxAlpha:Z

    .line 517
    iput-boolean v6, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    .line 518
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    .line 519
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v2, v1, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v2, :cond_b

    .line 520
    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    :cond_b
    move-object v1, v5

    .line 552
    :goto_3
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v2
.end method
