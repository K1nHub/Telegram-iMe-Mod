.class public final synthetic Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LNavigation/LNavigation;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LNavigation/LNavigation;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/LNavigation/LNavigation;

    iput p2, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/LNavigation/LNavigation;

    iget v1, p0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda3;->f$1:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/LNavigation/LNavigation;->$r8$lambda$QIw2S01BPoaUUAwaoLPKTqn2Vd8(Lorg/telegram/ui/LNavigation/LNavigation;ILandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
