.class public final synthetic Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/NotificationsController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lj$/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/NotificationsController;JLj$/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/messenger/NotificationsController;

    iput-wide p2, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda30;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda30;->f$2:Lj$/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/messenger/NotificationsController;

    iget-wide v1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda30;->f$1:J

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda30;->f$2:Lj$/util/function/Consumer;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/NotificationsController;->$r8$lambda$ddqXYry8Lep3fj23LEr3M8e9cBE(Lorg/telegram/messenger/NotificationsController;JLj$/util/function/Consumer;)V

    return-void
.end method
