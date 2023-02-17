.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;JJLjava/util/ArrayList;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-wide p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda50;->f$1:J

    iput-wide p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda50;->f$2:J

    iput-object p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda50;->f$3:Ljava/util/ArrayList;

    iput-boolean p7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda50;->f$4:Z

    iput-boolean p8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda50;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda50;->f$1:J

    iget-wide v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda50;->f$2:J

    iget-object v5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda50;->f$3:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda50;->f$4:Z

    iget-boolean v7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda50;->f$5:Z

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$S7NdOyzudsEuuBHXb1_RHj50Pkc(Lorg/telegram/messenger/MediaDataController;JJLjava/util/ArrayList;ZZ)V

    return-void
.end method
