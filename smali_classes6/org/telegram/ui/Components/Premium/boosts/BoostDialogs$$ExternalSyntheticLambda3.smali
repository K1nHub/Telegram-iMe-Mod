.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->$r8$lambda$HtyfHz_9WIPxNVSlb7AOP_QCMJA(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
