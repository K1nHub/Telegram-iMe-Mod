.class public final synthetic Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LNavigation/LNavigation;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/view/View;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/LNavigation/LNavigation;

    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda8;->f$1:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda8;->f$2:Landroid/view/View;

    iput p4, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda8;->f$3:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/LNavigation/LNavigation;

    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda8;->f$1:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda8;->f$2:Landroid/view/View;

    iget v3, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda8;->f$3:F

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/LNavigation/LNavigation;->$r8$lambda$ocdYKKEaXHjBQQvOzLkiGtDaWaA(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/view/View;Landroid/view/View;FLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method
