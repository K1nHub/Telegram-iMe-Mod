.class public final synthetic Lorg/telegram/ui/TextMessageEnterTransition$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/TextMessageEnterTransition;

.field public final synthetic f$1:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field public final synthetic f$2:Lorg/telegram/ui/MessageEnterTransitionContainer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/TextMessageEnterTransition;Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/MessageEnterTransitionContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TextMessageEnterTransition$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/TextMessageEnterTransition;

    iput-object p2, p0, Lorg/telegram/ui/TextMessageEnterTransition$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p3, p0, Lorg/telegram/ui/TextMessageEnterTransition$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/ui/MessageEnterTransitionContainer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/TextMessageEnterTransition$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/TextMessageEnterTransition;

    iget-object v1, p0, Lorg/telegram/ui/TextMessageEnterTransition$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v2, p0, Lorg/telegram/ui/TextMessageEnterTransition$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/TextMessageEnterTransition;->$r8$lambda$Qm9m1Yf91HgQ76GR3EP8xCcw7WI(Lorg/telegram/ui/TextMessageEnterTransition;Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/MessageEnterTransitionContainer;Landroid/animation/ValueAnimator;)V

    return-void
.end method
