.class public final synthetic Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Consumer;

.field public final synthetic f$1:Lorg/telegram/ui/Components/Bulletin$Layout;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;Lorg/telegram/ui/Components/Bulletin$Layout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$$ExternalSyntheticLambda1;->f$0:Landroidx/core/util/Consumer;

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Components/Bulletin$Layout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$$ExternalSyntheticLambda1;->f$0:Landroidx/core/util/Consumer;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;->$r8$lambda$x0-bEmqh8bD08OOIq4iDLiXteYI(Landroidx/core/util/Consumer;Lorg/telegram/ui/Components/Bulletin$Layout;Landroid/animation/ValueAnimator;)V

    return-void
.end method
