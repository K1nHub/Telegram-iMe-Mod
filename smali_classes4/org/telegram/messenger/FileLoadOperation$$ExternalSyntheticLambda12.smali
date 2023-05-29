.class public final synthetic Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/FileLoadOperation;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/FileLoadOperation;ZJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/messenger/FileLoadOperation;

    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;->f$1:Z

    iput-wide p3, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;->f$2:J

    iput-boolean p5, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;->f$1:Z

    iget-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;->f$2:J

    iget-boolean v4, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;->f$3:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoadOperation;->$r8$lambda$kQ9yUP5jEPjF_l9YzuKZQsgMVjk(Lorg/telegram/messenger/FileLoadOperation;ZJZ)V

    return-void
.end method
