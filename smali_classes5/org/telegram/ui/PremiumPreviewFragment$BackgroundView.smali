.class Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;
.super Landroid/widget/LinearLayout;
.source "PremiumPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PremiumPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundView"
.end annotation


# instance fields
.field private final imageFrameLayout:Landroid/widget/FrameLayout;

.field private final imageView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

.field private setTierListViewVisibility:Z

.field private final subtitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/PremiumPreviewFragment;

.field private tierListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private tierListViewVisible:Z

.field titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$Zl2A5ZD79vOGB7Yc1XB4das0OdU(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iVeO4PzCiW_SZ_sUWkMYZvfRB_c(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/graphics/Path;[FLandroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->lambda$new$1(Landroid/graphics/Path;[FLandroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vruF9kDl8E0XwwktixaJ0hAdku0(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/view/View;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->lambda$updateText$2(Landroid/view/View;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V
    .locals 13

    .line 1264
    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    .line 1265
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 1266
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1267
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->imageFrameLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0xbe

    .line 1268
    invoke-static {v2, v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1269
    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$1;

    const/4 v6, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v5, p2

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$1;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/content/Context;ILorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->imageView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v3, -0x1

    .line 1291
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1293
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    const/high16 v2, 0x41b00000    # 22.0f

    .line 1294
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1295
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1296
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1297
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x10

    const/16 v7, 0x14

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1299
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->subtitleView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    .line 1300
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, 0x2

    .line 1301
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1302
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x7

    const/16 v11, 0x10

    const/4 v12, 0x0

    .line 1303
    invoke-static/range {v5 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1305
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$2;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/content/Context;Lorg/telegram/ui/PremiumPreviewFragment;)V

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1326
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 1327
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1328
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$3;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1368
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1421
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    const/16 p2, 0x8

    new-array p2, p2, [F

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/graphics/Path;[F)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorTransformer(Landroidx/core/util/Consumer;)V

    .line 1440
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0xc

    const/16 v3, 0x10

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1442
    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->updatePremiumTiers()V

    .line 1443
    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->updateText()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;
    .locals 0

    .line 1255
    iget-object p0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->imageView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 1255
    iget-object p0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/TextView;
    .locals 0

    .line 1255
    iget-object p0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->subtitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1255
    iget-object p0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->imageFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;II)V
    .locals 0

    .line 1255
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->measureGradient(II)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 5

    .line 1369
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 1372
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    if-eqz p2, :cond_b

    .line 1373
    check-cast p1, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    .line 1374
    iget-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, p2, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p2, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    .line 1375
    iget-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->access$2600(Lorg/telegram/ui/PremiumPreviewFragment;Z)V

    .line 1376
    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->setChecked(ZZ)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 1378
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1379
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1380
    instance-of v3, v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    if-eqz v3, :cond_1

    .line 1381
    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    .line 1382
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 1383
    invoke-virtual {v2, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->setChecked(ZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1388
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1389
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1390
    instance-of v3, v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    if-eqz v3, :cond_3

    .line 1391
    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    .line 1392
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 1393
    invoke-virtual {v2, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->setChecked(ZZ)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 1398
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1399
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1400
    instance-of v3, v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    if-eqz v3, :cond_5

    .line 1401
    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    .line 1402
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v4

    if-eq v3, v4, :cond_5

    .line 1403
    invoke-virtual {v2, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->setChecked(ZZ)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 1408
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 1409
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1410
    instance-of v3, v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    if-eqz v3, :cond_7

    .line 1411
    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    .line 1412
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 1413
    invoke-virtual {v2, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->setChecked(ZZ)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1418
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$300(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v2, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    iget v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-virtual {v2}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$2700(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_4
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/graphics/Path;[FLandroid/graphics/Canvas;)V
    .locals 6

    .line 1424
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getPressedChildView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1425
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1427
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 1428
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getSelectorRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1429
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v1, 0x0

    .line 1430
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([FF)V

    const/16 v1, 0xc

    const/4 v3, 0x4

    if-nez v0, :cond_1

    const/4 v4, 0x0

    .line 1432
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {p2, v4, v3, v5}, Ljava/util/Arrays;->fill([FIIF)V

    .line 1434
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    const/16 v0, 0x8

    .line 1435
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p2, v3, v0, v1}, Ljava/util/Arrays;->fill([FIIF)V

    .line 1437
    :cond_2
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v2, p2, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1438
    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method private synthetic lambda$updateText$2(Landroid/view/View;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1551
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 1552
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 1553
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 1554
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 1556
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    const/4 p3, 0x0

    .line 1557
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 1558
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1559
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 1561
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->imageFrameLayout:Landroid/widget/FrameLayout;

    if-ne v0, v2, :cond_0

    const/16 v2, 0xf

    .line 1562
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    sub-float/2addr v1, v2

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    .line 1564
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    .line 1566
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private measureGradient(II)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1448
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1449
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v4, v3, Lorg/telegram/ui/PremiumPreviewFragment;->dummyTierCell:Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-virtual {v4, v3, v0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->bind(Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Z)V

    .line 1450
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->dummyTierCell:Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->measure(II)V

    .line 1451
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    iput v2, v3, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->yOffset:I

    .line 1452
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->dummyTierCell:Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1455
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput v2, p1, Lorg/telegram/ui/PremiumPreviewFragment;->totalTiersGradientHeight:I

    return-void
.end method


# virtual methods
.method public updatePremiumTiers()V
    .locals 12

    .line 1460
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, -0x1

    iput v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    const/4 v2, 0x0

    .line 1462
    iput-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 1464
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object v0

    const-wide/16 v3, 0x0

    const/16 v5, 0xc

    if-eqz v0, :cond_4

    .line 1465
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->period_options:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v6, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    .line 1466
    iget-object v9, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->can_purchase_upgrade:Z

    if-nez v9, :cond_1

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->current:Z

    if-nez v9, :cond_1

    goto :goto_0

    .line 1470
    :cond_1
    new-instance v9, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-direct {v9, v8}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;-><init>(Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;)V

    .line 1471
    iget-object v10, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v10, v10, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1472
    iget-object v10, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v10}, Lorg/telegram/ui/PremiumPreviewFragment;->access$2500(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1473
    iget v10, v8, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->months:I

    if-ne v10, v5, :cond_2

    .line 1474
    iget-object v10, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v11, v10, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    .line 1477
    :cond_2
    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->current:Z

    if-eqz v8, :cond_3

    .line 1478
    iget-object v8, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput-object v9, v8, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 1480
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1481
    invoke-virtual {v9}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPricePerYear()J

    move-result-wide v10

    cmp-long v8, v10, v6

    if-lez v8, :cond_0

    .line 1482
    invoke-virtual {v9}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPricePerYear()J

    move-result-wide v6

    goto :goto_0

    :cond_4
    move-wide v6, v3

    .line 1487
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1488
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1489
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    goto :goto_2

    .line 1490
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    if-eqz v0, :cond_8

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/BillingController;->getLastPremiumTransaction()Ljava/lang/String;

    move-result-object v0

    .line 1491
    iget-object v8, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v8, v8, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    iget-object v8, v8, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    if-eqz v8, :cond_7

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->transaction:Ljava/lang/String;

    if-eqz v8, :cond_7

    const-string v9, "^(.*?)(?:\\.\\.\\d*|)$"

    const-string v10, "$1"

    .line 1492
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_7
    move-object v8, v2

    .line 1490
    :goto_1
    invoke-static {v0, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    if-eqz v0, :cond_a

    .line 1493
    invoke-virtual {v0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v0

    if-ne v0, v5, :cond_a

    .line 1494
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1495
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 1498
    :cond_a
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1499
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 1500
    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->setPricePerYearRegular(J)V

    goto :goto_3

    .line 1502
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails;

    if-eqz v0, :cond_e

    .line 1505
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 1506
    sget-object v6, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->setGooglePlayProductDetails(Lcom/android/billingclient/api/ProductDetails;)V

    .line 1508
    invoke-virtual {v2}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPricePerYear()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-lez v8, :cond_c

    .line 1509
    invoke-virtual {v2}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPricePerYear()J

    move-result-wide v2

    move-wide v3, v2

    goto :goto_4

    .line 1513
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 1514
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->setPricePerYearRegular(J)V

    goto :goto_5

    .line 1518
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    .line 1519
    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_10

    .line 1520
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 1521
    invoke-virtual {v3}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v3

    if-ne v3, v5, :cond_f

    .line 1522
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput v0, v3, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    goto :goto_7

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1526
    :cond_10
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    if-ne v3, v1, :cond_11

    .line 1527
    iput v2, v0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    .line 1530
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v0, v2}, Lorg/telegram/ui/PremiumPreviewFragment;->access$2600(Lorg/telegram/ui/PremiumPreviewFragment;Z)V

    .line 1531
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateText()V
    .locals 6

    .line 1538
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->access$400(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v2, "Settings"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1541
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$2700(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->TelegramPremiumSubscribedTitle:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1542
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->subtitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$2700(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->TelegramPremiumSubtitle:I

    goto :goto_3

    :cond_3
    :goto_2
    sget v1, Lorg/telegram/messenger/R$string;->TelegramPremiumSubscribedSubtitle:I

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1543
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->access$2700(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->IS_BILLING_UNAVAILABLE:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    .line 1544
    :goto_5
    iget-boolean v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->setTierListViewVisibility:Z

    if-eqz v3, :cond_7

    if-nez v0, :cond_6

    goto :goto_6

    .line 1547
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListViewVisible:Z

    if-ne v1, v0, :cond_9

    .line 1548
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 1549
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 1550
    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1570
    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$4;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$4;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1583
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1584
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_7

    .line 1545
    :cond_7
    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    :cond_8
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1546
    iput-boolean v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->setTierListViewVisibility:Z

    :cond_9
    :goto_7
    xor-int/2addr v0, v2

    .line 1586
    iput-boolean v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListViewVisible:Z

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
