.class public final synthetic Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LNavigation/LNavigation;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/LNavigation/LNavigation;

    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda7;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p4, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda7;->f$3:Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    iput-object p5, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda7;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/LNavigation/LNavigation;

    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda7;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v3, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda7;->f$3:Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    iget-object v4, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda7;->f$4:Ljava/lang/Runnable;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/LNavigation/LNavigation;->$r8$lambda$i2fNZf-pgaYaEYRpLValMV6q2Qw(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
