.class public final synthetic Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/DispatchQueuePoolBackground;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/DispatchQueuePoolBackground;Ljava/lang/Runnable;Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/DispatchQueuePoolBackground;

    iput-object p2, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/messenger/DispatchQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/DispatchQueuePoolBackground;

    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/messenger/DispatchQueue;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->$r8$lambda$LFzUelSi2hptyuv2F3N_8h160rE(Lorg/telegram/messenger/DispatchQueuePoolBackground;Ljava/lang/Runnable;Lorg/telegram/messenger/DispatchQueue;)V

    return-void
.end method
