.class public final synthetic Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/TopicsController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/TopicsController;JLjava/util/ArrayList;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/TopicsController;

    iput-wide p2, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda5;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda5;->f$2:Ljava/util/ArrayList;

    iput p5, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda5;->f$3:I

    iput-object p6, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda5;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda5;->f$1:J

    iget-object v3, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda5;->f$2:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda5;->f$3:I

    iget-object v5, p0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda5;->f$4:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/TopicsController;->$r8$lambda$fOiuraqXUcCHwJdDNHr6bEEX_v4(Lorg/telegram/messenger/TopicsController;JLjava/util/ArrayList;ILjava/lang/Runnable;)V

    return-void
.end method
