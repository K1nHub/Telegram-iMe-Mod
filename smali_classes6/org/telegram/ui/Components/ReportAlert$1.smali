.class Lorg/telegram/ui/Components/ReportAlert$1;
.super Lcom/iMe/ui/common/SimpleTextWatcher;
.source "ReportAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ReportAlert;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private playAnimationRunnable:Ljava/lang/Runnable;

.field final synthetic val$imageView:Lorg/telegram/ui/Components/RLottieImageView;


# direct methods
.method public static synthetic $r8$lambda$HiP0RQ08EypowFjwbyNrYclAOMI(Lorg/telegram/ui/Components/RLottieImageView;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ReportAlert$1;->lambda$$0(Lorg/telegram/ui/Components/RLottieImageView;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ReportAlert;Lorg/telegram/ui/Components/RLottieImageView;)V
    .locals 0

    .line 188
    iput-object p2, p0, Lorg/telegram/ui/Components/ReportAlert$1;->val$imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {p0}, Lcom/iMe/ui/common/SimpleTextWatcher;-><init>()V

    .line 190
    new-instance p1, Lorg/telegram/ui/Components/ReportAlert$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/ReportAlert$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/RLottieImageView;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReportAlert$1;->playAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static synthetic lambda$$0(Lorg/telegram/ui/Components/RLottieImageView;)V
    .locals 0

    .line 190
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-le p4, p3, :cond_0

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert$1;->val$imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert$1;->playAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 197
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert$1;->playAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x3e8

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
