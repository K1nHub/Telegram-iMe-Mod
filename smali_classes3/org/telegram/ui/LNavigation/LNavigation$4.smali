.class Lorg/telegram/ui/LNavigation/LNavigation$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LNavigation/LNavigation;->rebuildFragments(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LNavigation/LNavigation;

.field final synthetic val$flags:I


# direct methods
.method public static synthetic $r8$lambda$Xle419ajLcgfBs2c4rkbo7886Y0(Lorg/telegram/ui/LNavigation/LNavigation$4;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation$4;->lambda$onAnimationEnd$0(I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LNavigation/LNavigation;I)V
    .locals 0

    .line 1233
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$4;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    iput p2, p0, Lorg/telegram/ui/LNavigation/LNavigation$4;->val$flags:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(I)V
    .locals 1

    .line 1236
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$4;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->rebuildFragments(I)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1236
    iget p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$4;->val$flags:I

    new-instance v0, Lorg/telegram/ui/LNavigation/LNavigation$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LNavigation/LNavigation$4;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
