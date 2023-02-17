.class public final Lcom/smedialink/ui/forward/CustomForwardSwitchArchiveImageView;
.super Landroid/widget/ImageView;
.source "CustomForwardSwitchArchiveImageView.kt"


# instance fields
.field private isArchive:Z

.field private final switchAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/forward/CustomForwardSwitchArchiveImageView;->switchAnimator:Landroid/animation/AnimatorSet;

    .line 28
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 29
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    const-string v0, "actionBarDefaultTitle"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const-string p1, "actionBarActionModeDefaultSelector"

    .line 30
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    sget p1, Lorg/telegram/messenger/R$drawable;->fork_custom_forward_switch_archive:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public final getThemeDescriptions()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 37
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "actionBarDefaultTitle"

    move-object v1, v9

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 38
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v12, v2, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "actionBarActionModeDefaultSelector"

    move-object v10, v1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 36
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 67
    iget-object v0, p0, Lcom/smedialink/ui/forward/CustomForwardSwitchArchiveImageView;->switchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/high16 p1, 0x42100000    # 36.0f

    .line 62
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p2, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public final toggleArchive()Z
    .locals 10

    .line 42
    iget-boolean v0, p0, Lcom/smedialink/ui/forward/CustomForwardSwitchArchiveImageView;->isArchive:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/smedialink/ui/forward/CustomForwardSwitchArchiveImageView;->isArchive:Z

    const/4 v0, 0x2

    new-array v2, v0, [Landroid/animation/PropertyValuesHolder;

    .line 43
    sget-object v3, Landroid/widget/ImageView;->SCALE_X:Landroid/util/Property;

    new-array v4, v1, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Landroid/widget/ImageView;->SCALE_Y:Landroid/util/Property;

    new-array v4, v1, [F

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v3, "ofPropertyValuesHolder(t\u2026fFloat(SCALE_Y, SCALE_0))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    .line 44
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v6, v0, [Landroid/animation/PropertyValuesHolder;

    .line 45
    sget-object v7, Landroid/widget/ImageView;->SCALE_X:Landroid/util/Property;

    new-array v8, v1, [F

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v8, v5

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v5

    sget-object v7, Landroid/widget/ImageView;->SCALE_Y:Landroid/util/Property;

    new-array v8, v1, [F

    aput v9, v8, v5

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {p0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-string v7, "ofPropertyValuesHolder(t\u2026fFloat(SCALE_Y, SCALE_1))"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v6, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 47
    iget-boolean v3, p0, Lcom/smedialink/ui/forward/CustomForwardSwitchArchiveImageView;->isArchive:Z

    if-eqz v3, :cond_0

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_custom_forward_switch_main:I

    goto :goto_0

    :cond_0
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_custom_forward_switch_archive:I

    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v0, [Landroid/animation/Animator;

    aput-object v2, v4, v5

    aput-object v6, v4, v1

    .line 49
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 50
    sget-object v2, Landroid/widget/ImageView;->ROTATION:Landroid/util/Property;

    new-array v4, v1, [F

    iget-boolean v6, p0, Lcom/smedialink/ui/forward/CustomForwardSwitchArchiveImageView;->isArchive:Z

    if-eqz v6, :cond_1

    const/high16 v6, 0x43b40000    # 360.0f

    goto :goto_1

    :cond_1
    const/high16 v6, -0x3c4c0000    # -360.0f

    :goto_1
    aput v6, v4, v5

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x1c2

    .line 51
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 52
    iget-object v4, p0, Lcom/smedialink/ui/forward/CustomForwardSwitchArchiveImageView;->switchAnimator:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v2, v0, v5

    aput-object v3, v0, v1

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 53
    iget-object v0, p0, Lcom/smedialink/ui/forward/CustomForwardSwitchArchiveImageView;->switchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 54
    iget-boolean v0, p0, Lcom/smedialink/ui/forward/CustomForwardSwitchArchiveImageView;->isArchive:Z

    return v0
.end method
