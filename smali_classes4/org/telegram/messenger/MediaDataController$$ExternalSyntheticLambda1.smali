.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$1:Lorg/telegram/messenger/MediaDataController$KeywordResultCallback;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;Lorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/MediaDataController$KeywordResultCallback;

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/MediaDataController$KeywordResultCallback;

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$zD0akybA_Hp_OMyPUizD-OnnRLg(Ljava/util/concurrent/CountDownLatch;Lorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
