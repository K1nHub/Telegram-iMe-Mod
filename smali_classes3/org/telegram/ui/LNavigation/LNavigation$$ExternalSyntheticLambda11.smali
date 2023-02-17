.class public final synthetic Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LNavigation/LNavigation;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/LNavigation/LNavigation;

    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/LNavigation/LNavigation;

    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/LNavigation/LNavigation;->$r8$lambda$rx8G9HDhPzfZFMscPTmnVybTsos(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method
