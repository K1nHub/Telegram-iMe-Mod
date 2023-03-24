.class public Lme/zhanghai/android/materialratingbar/MaterialRatingBar;
.super Landroid/widget/RatingBar;
.source "MaterialRatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;,
        Lme/zhanghai/android/materialratingbar/MaterialRatingBar$OnRatingChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDrawable:Lme/zhanghai/android/materialratingbar/MaterialRatingDrawable;

.field private mLastKnownRating:F

.field private mOnRatingChangeListener:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$OnRatingChangeListener;

.field private mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p1, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;-><init>(Lme/zhanghai/android/materialratingbar/MaterialRatingBar$1;)V

    iput-object p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    const/4 p1, 0x0

    .line 46
    invoke-direct {p0, p2, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private applyIndeterminateTint()V
    .locals 6

    .line 524
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-boolean v2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasIndeterminateTintList:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v0, :cond_2

    .line 530
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 531
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-object v2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    iget-boolean v3, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasIndeterminateTintList:Z

    iget-object v4, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v5, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasIndeterminateTintMode:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applyTintForDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;Z)V

    :cond_2
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .locals 8

    .line 461
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-boolean v1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressTintList:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressTintMode:Z

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x102000d

    const/4 v1, 0x1

    .line 465
    invoke-direct {p0, v0, v1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getTintTargetFromProgressDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 467
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-object v4, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    iget-boolean v5, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressTintList:Z

    iget-object v6, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v7, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressTintMode:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applyTintForDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;Z)V

    :cond_2
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .locals 8

    .line 492
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-boolean v1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressBackgroundTintList:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v0, :cond_2

    :cond_1
    const/high16 v0, 0x1020000

    const/4 v1, 0x0

    .line 497
    invoke-direct {p0, v0, v1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getTintTargetFromProgressDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 499
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-object v4, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    iget-boolean v5, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressBackgroundTintList:Z

    iget-object v6, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v7, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressBackgroundTintMode:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applyTintForDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;Z)V

    :cond_2
    return-void
.end method

.method private applyProgressTints()V
    .locals 1

    .line 452
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applyPrimaryProgressTint()V

    .line 456
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applyProgressBackgroundTint()V

    .line 457
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applySecondaryProgressTint()V

    return-void
.end method

.method private applySecondaryProgressTint()V
    .locals 8

    .line 475
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-boolean v1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasSecondaryProgressTintList:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x102000f

    const/4 v1, 0x0

    .line 480
    invoke-direct {p0, v0, v1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getTintTargetFromProgressDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 483
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-object v4, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    iget-boolean v5, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasSecondaryProgressTintList:Z

    iget-object v6, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v7, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasSecondaryProgressTintMode:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applyTintForDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;Z)V

    :cond_2
    return-void
.end method

.method private applyTintForDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;Z)V
    .locals 1

    if-nez p3, :cond_0

    if-eqz p5, :cond_5

    :cond_0
    const/16 v0, 0x15

    if-eqz p3, :cond_2

    .line 548
    instance-of p3, p1, Lme/zhanghai/android/materialratingbar/TintableDrawable;

    if-eqz p3, :cond_1

    .line 550
    move-object p3, p1

    check-cast p3, Lme/zhanghai/android/materialratingbar/TintableDrawable;

    invoke-interface {p3, p2}, Lme/zhanghai/android/materialratingbar/TintableDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 552
    :cond_1
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logDrawableTintWarning()V

    .line 553
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v0, :cond_2

    .line 554
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    if-eqz p5, :cond_4

    .line 560
    instance-of p2, p1, Lme/zhanghai/android/materialratingbar/TintableDrawable;

    if-eqz p2, :cond_3

    .line 562
    move-object p2, p1

    check-cast p2, Lme/zhanghai/android/materialratingbar/TintableDrawable;

    invoke-interface {p2, p4}, Lme/zhanghai/android/materialratingbar/TintableDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 564
    :cond_3
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logDrawableTintWarning()V

    .line 565
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v0, :cond_4

    .line 566
    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 573
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 574
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getDrawableState()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    return-void
.end method

.method private getTintTargetFromProgressDrawable(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 508
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 512
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 514
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_1

    .line 515
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 4

    .line 58
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    sget-object v1, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    .line 61
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_progressTint:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 64
    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressTintList:Z

    .line 66
    :cond_0
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_progressTintMode:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    invoke-virtual {p1, p2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v2}, Lme/zhanghai/android/materialratingbar/internal/DrawableCompat;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 69
    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressTintMode:Z

    .line 71
    :cond_1
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_secondaryProgressTint:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 74
    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasSecondaryProgressTintList:Z

    .line 76
    :cond_2
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_secondaryProgressTintMode:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    invoke-virtual {p1, p2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v2}, Lme/zhanghai/android/materialratingbar/internal/DrawableCompat;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 79
    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasSecondaryProgressTintMode:Z

    .line 81
    :cond_3
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_progressBackgroundTint:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 84
    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressBackgroundTintList:Z

    .line 86
    :cond_4
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_progressBackgroundTintMode:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    invoke-virtual {p1, p2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v2}, Lme/zhanghai/android/materialratingbar/internal/DrawableCompat;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 89
    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressBackgroundTintMode:Z

    .line 91
    :cond_5
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_indeterminateTint:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 94
    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasIndeterminateTintList:Z

    .line 96
    :cond_6
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_indeterminateTintMode:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 97
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    invoke-virtual {p1, p2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v2}, Lme/zhanghai/android/materialratingbar/internal/DrawableCompat;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 99
    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasIndeterminateTintMode:Z

    .line 101
    :cond_7
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_fillBackgroundStars:I

    .line 102
    invoke-virtual {p0}, Landroid/widget/RatingBar;->isIndicator()Z

    move-result v0

    .line 101
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 103
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 105
    new-instance p1, Lme/zhanghai/android/materialratingbar/MaterialRatingDrawable;

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lme/zhanghai/android/materialratingbar/MaterialRatingDrawable;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mDrawable:Lme/zhanghai/android/materialratingbar/MaterialRatingDrawable;

    .line 106
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result p2

    invoke-virtual {p1, p2}, Lme/zhanghai/android/materialratingbar/MaterialRatingDrawable;->setStarCount(I)V

    .line 107
    iget-object p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mDrawable:Lme/zhanghai/android/materialratingbar/MaterialRatingDrawable;

    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private logDrawableTintWarning()V
    .locals 2

    .line 580
    sget-object v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->TAG:Ljava/lang/String;

    const-string v1, "Drawable did not implement TintableDrawable, it won\'t be tinted below Lollipop"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logRatingBarTintWarning()V
    .locals 2

    .line 302
    sget-object v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->TAG:Ljava/lang/String;

    const-string v1, "Non-support version of tint method called, this is error-prone and will crash below Lollipop if you are calling it as a method of RatingBar instead of MaterialRatingBar"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 269
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 270
    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportIndeterminateTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 288
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 289
    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getOnRatingChangeListener()Lme/zhanghai/android/materialratingbar/MaterialRatingBar$OnRatingChangeListener;
    .locals 1

    .line 590
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mOnRatingChangeListener:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$OnRatingChangeListener;

    return-object v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 231
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 232
    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportProgressBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 250
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 251
    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 155
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 156
    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 174
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 175
    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportProgressTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 193
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 194
    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportSecondaryProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 212
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 213
    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getSupportIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 420
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-object v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSupportIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 438
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-object v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getSupportProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 384
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-object v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSupportProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 402
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-object v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getSupportProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 312
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-object v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSupportProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 330
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-object v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getSupportSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 348
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-object v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSupportSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 366
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iget-object v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2

    monitor-enter p0

    .line 122
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V

    .line 124
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result p2

    int-to-float v0, p2

    .line 125
    iget-object v1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mDrawable:Lme/zhanghai/android/materialratingbar/MaterialRatingDrawable;

    invoke-virtual {v1}, Lme/zhanghai/android/materialratingbar/MaterialRatingDrawable;->getTileRatio()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    .line 126
    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/RatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Landroid/widget/RatingBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    if-eqz p1, :cond_0

    .line 145
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applyIndeterminateTint()V

    :cond_0
    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 279
    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 297
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 298
    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setNumStars(I)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 115
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mDrawable:Lme/zhanghai/android/materialratingbar/MaterialRatingDrawable;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingDrawable;->setStarCount(I)V

    :cond_0
    return-void
.end method

.method public setOnRatingChangeListener(Lme/zhanghai/android/materialratingbar/MaterialRatingBar$OnRatingChangeListener;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mOnRatingChangeListener:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$OnRatingChangeListener;

    return-void
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 241
    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 260
    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Landroid/widget/RatingBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    if-eqz p1, :cond_0

    .line 135
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applyProgressTints()V

    :cond_0
    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 165
    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 184
    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 2

    monitor-enter p0

    .line 604
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/RatingBar;->setSecondaryProgress(I)V

    .line 608
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result p1

    .line 609
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mOnRatingChangeListener:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$OnRatingChangeListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mLastKnownRating:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    .line 610
    invoke-interface {v0, p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$OnRatingChangeListener;->onRatingChanged(Lme/zhanghai/android/materialratingbar/MaterialRatingBar;F)V

    .line 612
    :cond_0
    iput p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mLastKnownRating:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 203
    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->logRatingBarTintWarning()V

    .line 222
    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setSupportIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 427
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 428
    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasIndeterminateTintList:Z

    .line 430
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applyIndeterminateTint()V

    return-void
.end method

.method public setSupportIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 446
    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasIndeterminateTintMode:Z

    .line 448
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applyIndeterminateTint()V

    return-void
.end method

.method public setSupportProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 392
    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressBackgroundTintList:Z

    .line 394
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applyProgressBackgroundTint()V

    return-void
.end method

.method public setSupportProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 409
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 410
    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressBackgroundTintMode:Z

    .line 412
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applyProgressBackgroundTint()V

    return-void
.end method

.method public setSupportProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 320
    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressTintList:Z

    .line 322
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applyPrimaryProgressTint()V

    return-void
.end method

.method public setSupportProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 338
    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasProgressTintMode:Z

    .line 340
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applyPrimaryProgressTint()V

    return-void
.end method

.method public setSupportSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 355
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 356
    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasSecondaryProgressTintList:Z

    .line 358
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applySecondaryProgressTint()V

    return-void
.end method

.method public setSupportSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->mProgressTintInfo:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 374
    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$TintInfo;->mHasSecondaryProgressTintMode:Z

    .line 376
    invoke-direct {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->applySecondaryProgressTint()V

    return-void
.end method
