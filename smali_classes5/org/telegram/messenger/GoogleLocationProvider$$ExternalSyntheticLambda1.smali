.class public final synthetic Lorg/telegram/messenger/GoogleLocationProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/GoogleLocationProvider$$ExternalSyntheticLambda1;->f$0:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/GoogleLocationProvider$$ExternalSyntheticLambda1;->f$0:Landroidx/core/util/Consumer;

    invoke-static {v0, p1}, Lorg/telegram/messenger/GoogleLocationProvider;->$r8$lambda$LYC1h6L3w_V5GKB19b_RckiWLnY(Landroidx/core/util/Consumer;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
