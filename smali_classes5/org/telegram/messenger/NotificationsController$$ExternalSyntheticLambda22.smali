.class public final synthetic Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/NotificationsController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/NotificationsController;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/messenger/NotificationsController;

    iput p2, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda22;->f$1:I

    iput p3, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda22;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/messenger/NotificationsController;

    iget v1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda22;->f$1:I

    iget v2, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda22;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->$r8$lambda$-Z2YekOMquu__MR6Be9Vde3FIuw(Lorg/telegram/messenger/NotificationsController;II)V

    return-void
.end method
