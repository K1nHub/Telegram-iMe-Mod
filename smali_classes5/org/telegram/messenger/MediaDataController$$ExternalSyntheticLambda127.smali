.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;ZILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$1:Z

    iput p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$2:I

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$1:Z

    iget v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$2:I

    iget-object v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$3:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$Jz91KEI5OkSKUm9GVZp_DQ1_nWA(Lorg/telegram/messenger/MediaDataController;ZILjava/util/ArrayList;)V

    return-void
.end method
