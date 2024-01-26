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
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

.field final synthetic val$bottomPages:Lorg/telegram/ui/Components/BottomPagesView;


# direct methods
.method public static synthetic $r8$lambda$FhKpKMgjB9Zi8MxERpGm_-xdDn0(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->lambda$checkPage$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Lorg/telegram/ui/Components/BottomPagesView;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->val$bottomPages:Lorg/telegram/ui/Components/BottomPagesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkPage()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 269
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5

    .line 270
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;

    .line 272
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-boolean v5, v4, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->enterAnimationIsRunning:Z

    if-eqz v5, :cond_0

    iget-object v5, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    instance-of v5, v5, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    if-nez v5, :cond_3

    .line 273
    :cond_0
    iget v5, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->position:I

    iget v6, v4, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    if-ne v5, v6, :cond_1

    .line 274
    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topHeader:Lorg/telegram/ui/Components/Premium/PagerHeaderView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v5, v5, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    mul-float/2addr v4, v5

    invoke-interface {v3, v4}, Lorg/telegram/ui/Components/Premium/PagerHeaderView;->setOffset(F)V

    :goto_1
    move v3, v4

    goto :goto_2

    .line 275
    :cond_1
    iget v4, v4, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->toPosition:I

    if-ne v5, v4, :cond_2

    .line 276
    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topHeader:Lorg/telegram/ui/Components/Premium/PagerHeaderView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v5, v5, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    mul-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-interface {v3, v4}, Lorg/telegram/ui/Components/Premium/PagerHeaderView;->setOffset(F)V

    goto :goto_1

    .line 278
    :cond_2
    iget-object v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topHeader:Lorg/telegram/ui/Components/Premium/PagerHeaderView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-interface {v4, v5}, Lorg/telegram/ui/Components/Premium/PagerHeaderView;->setOffset(F)V

    .line 282
    :cond_3
    :goto_2
    iget-object v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    instance-of v4, v4, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    if-eqz v4, :cond_4

    neg-float v4, v3

    .line 283
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 284
    iget-object v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 285
    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    iput v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->containerViewsProgress:F

    .line 289
    iget v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->toPosition:I

    iget v4, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    const/4 v5, 0x1

    if-le v2, v4, :cond_6

    move v2, v5

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    iput-boolean v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->containerViewsForward:Z

    if-ltz v4, :cond_7

    .line 290
    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    iget v4, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v2, v2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$200(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;I)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v5

    goto :goto_4

    :cond_7
    move v1, v0

    .line 291
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->toPosition:I

    if-ltz v4, :cond_8

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    iget v6, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->toPosition:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v4, v4, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$200(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;I)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    goto :goto_5

    :cond_8
    move v2, v0

    :goto_5
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iput v4, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToGradient:F

    .line 294
    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    cmpl-float v2, v1, v3

    if-nez v2, :cond_9

    move v1, v4

    :cond_9
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    .line 295
    iput-boolean v5, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->fullscreenNext:Z

    goto :goto_6

    :cond_a
    if-eqz v1, :cond_b

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    sub-float v1, v4, v1

    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToGradient:F

    .line 298
    iput-boolean v5, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->fullscreenNext:Z

    goto :goto_6

    :cond_b
    if-eqz v2, :cond_c

    .line 300
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    iput v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    iput v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToGradient:F

    .line 301
    iput-boolean v0, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->fullscreenNext:Z

    goto :goto_6

    .line 303
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iput v3, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    iput v3, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToGradient:F

    .line 304
    iput-boolean v5, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->fullscreenNext:Z

    :goto_6
    const/high16 v0, 0x437f0000    # 255.0f

    .line 307
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    sub-float/2addr v4, v2

    mul-float/2addr v4, v0

    float-to-int v0, v4

    .line 308
    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$100(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v1

    if-eq v0, v1, :cond_d

    .line 309
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$102(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;I)I

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 311
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$checkPage$0()V
    .locals 1

    .line 312
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
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iput p1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    if-lez p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 251
    :goto_0
    iput p1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->toPosition:I

    .line 252
    iput p2, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    .line 253
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->checkPage()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v0, v0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    if-nez v0, :cond_0

    .line 259
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->DoubledLimits:I

    const-string v1, "DoubledLimits"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget p1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 262
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->UpgradedStories:I

    const-string v1, "UpgradedStories"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    .line 265
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->checkPage()V

    return-void
.end method
