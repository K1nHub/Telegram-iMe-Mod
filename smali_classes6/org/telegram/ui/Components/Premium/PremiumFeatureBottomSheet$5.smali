.class Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;
.super Ljava/lang/Object;
.source "PremiumFeatureBottomSheet.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field progress:F

.field selectedPosition:I

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

.field toPosition:I

.field final synthetic val$bottomPages:Lorg/telegram/ui/Components/BottomPagesView;


# direct methods
.method public static synthetic $r8$lambda$FhKpKMgjB9Zi8MxERpGm_-xdDn0(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->lambda$checkPage$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Lorg/telegram/ui/Components/BottomPagesView;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->val$bottomPages:Lorg/telegram/ui/Components/BottomPagesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkPage()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 262
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5

    .line 263
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;

    .line 265
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->enterAnimationIsRunning:Z

    if-eqz v4, :cond_0

    iget-object v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    instance-of v4, v4, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    if-nez v4, :cond_3

    .line 266
    :cond_0
    iget v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->position:I

    iget v5, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->selectedPosition:I

    if-ne v4, v5, :cond_1

    .line 267
    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topHeader:Lorg/telegram/ui/Components/Premium/PagerHeaderView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->progress:F

    mul-float/2addr v4, v5

    invoke-interface {v3, v4}, Lorg/telegram/ui/Components/Premium/PagerHeaderView;->setOffset(F)V

    :goto_1
    move v3, v4

    goto :goto_2

    .line 268
    :cond_1
    iget v5, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->toPosition:I

    if-ne v4, v5, :cond_2

    .line 269
    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topHeader:Lorg/telegram/ui/Components/Premium/PagerHeaderView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->progress:F

    mul-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-interface {v3, v4}, Lorg/telegram/ui/Components/Premium/PagerHeaderView;->setOffset(F)V

    goto :goto_1

    .line 271
    :cond_2
    iget-object v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topHeader:Lorg/telegram/ui/Components/Premium/PagerHeaderView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-interface {v4, v5}, Lorg/telegram/ui/Components/Premium/PagerHeaderView;->setOffset(F)V

    .line 275
    :cond_3
    :goto_2
    iget-object v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    instance-of v4, v4, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    if-eqz v4, :cond_4

    neg-float v4, v3

    .line 276
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 277
    iget-object v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 278
    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->progress:F

    iput v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->containerViewsProgress:F

    .line 282
    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->toPosition:I

    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->selectedPosition:I

    if-le v2, v4, :cond_6

    const/4 v0, 0x1

    :cond_6
    iput-boolean v0, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->containerViewsForward:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-ltz v4, :cond_7

    .line 283
    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->selectedPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v1, v1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    if-nez v1, :cond_7

    .line 284
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->progress:F

    sub-float v2, v0, v2

    iput v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    goto :goto_3

    .line 285
    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->toPosition:I

    if-ltz v1, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->toPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v1, v1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    if-nez v1, :cond_8

    .line 286
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->progress:F

    iput v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    goto :goto_3

    .line 288
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iput v3, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    :goto_3
    const/high16 v1, 0x437f0000    # 255.0f

    .line 290
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v3, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    sub-float/2addr v0, v3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 291
    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$100(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 292
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$102(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;I)I

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 294
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$checkPage$0()V
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->checkTopOffset()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->val$bottomPages:Lorg/telegram/ui/Components/BottomPagesView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/BottomPagesView;->setPageOffset(IF)V

    .line 250
    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->selectedPosition:I

    if-lez p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 251
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->toPosition:I

    .line 252
    iput p2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->progress:F

    .line 253
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->checkPage()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 258
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->checkPage()V

    return-void
.end method
