.class Lme/zhanghai/android/materialratingbar/ClipDrawableCompat;
.super Landroid/graphics/drawable/ClipDrawable;
.source "ClipDrawableCompat.java"

# interfaces
.implements Lme/zhanghai/android/materialratingbar/TintableDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/zhanghai/android/materialratingbar/ClipDrawableCompat$DummyConstantState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConstantState:Lme/zhanghai/android/materialratingbar/ClipDrawableCompat$DummyConstantState;

.field private mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lme/zhanghai/android/materialratingbar/ClipDrawableCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/zhanghai/android/materialratingbar/ClipDrawableCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 22
    new-instance p2, Lme/zhanghai/android/materialratingbar/ClipDrawableCompat$DummyConstantState;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lme/zhanghai/android/materialratingbar/ClipDrawableCompat$DummyConstantState;-><init>(Lme/zhanghai/android/materialratingbar/ClipDrawableCompat;Lme/zhanghai/android/materialratingbar/ClipDrawableCompat$1;)V

    iput-object p2, p0, Lme/zhanghai/android/materialratingbar/ClipDrawableCompat;->mConstantState:Lme/zhanghai/android/materialratingbar/ClipDrawableCompat$DummyConstantState;

    .line 27
    iput-object p1, p0, Lme/zhanghai/android/materialratingbar/ClipDrawableCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 79
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/ClipDrawableCompat;->mConstantState:Lme/zhanghai/android/materialratingbar/ClipDrawableCompat$DummyConstantState;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 33
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/ClipDrawableCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setTint(I)V
    .locals 2

    .line 38
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/ClipDrawableCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lme/zhanghai/android/materialratingbar/TintableDrawable;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Lme/zhanghai/android/materialratingbar/TintableDrawable;

    invoke-interface {v0, p1}, Lme/zhanghai/android/materialratingbar/TintableDrawable;->setTint(I)V

    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lme/zhanghai/android/materialratingbar/ClipDrawableCompat;->TAG:Ljava/lang/String;

    const-string v1, "Drawable did not implement TintableDrawable, it won\'t be tinted below Lollipop"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-super {p0, p1}, Landroid/graphics/drawable/ClipDrawable;->setTint(I)V

    :goto_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/ClipDrawableCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lme/zhanghai/android/materialratingbar/TintableDrawable;

    if-eqz v1, :cond_0

    .line 52
    check-cast v0, Lme/zhanghai/android/materialratingbar/TintableDrawable;

    invoke-interface {v0, p1}, Lme/zhanghai/android/materialratingbar/TintableDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lme/zhanghai/android/materialratingbar/ClipDrawableCompat;->TAG:Ljava/lang/String;

    const-string v1, "Drawable did not implement TintableDrawable, it won\'t be tinted below Lollipop"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-super {p0, p1}, Landroid/graphics/drawable/ClipDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/ClipDrawableCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lme/zhanghai/android/materialratingbar/TintableDrawable;

    if-eqz v1, :cond_0

    .line 64
    check-cast v0, Lme/zhanghai/android/materialratingbar/TintableDrawable;

    invoke-interface {v0, p1}, Lme/zhanghai/android/materialratingbar/TintableDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 66
    :cond_0
    sget-object v0, Lme/zhanghai/android/materialratingbar/ClipDrawableCompat;->TAG:Ljava/lang/String;

    const-string v1, "Drawable did not implement TintableDrawable, it won\'t be tinted below Lollipop"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-super {p0, p1}, Landroid/graphics/drawable/ClipDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method
