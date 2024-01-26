.class public final synthetic Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;->f$1:Ljava/util/Map;

    iget-object v2, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-wide v3, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/PushListenerController;->$r8$lambda$RnNzy96er50m7BOW506q8-bj4sE(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V

    return-void
.end method
