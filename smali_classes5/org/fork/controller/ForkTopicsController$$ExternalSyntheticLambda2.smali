.class public final synthetic Lorg/fork/controller/ForkTopicsController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/controller/ForkTopicsController;

.field public final synthetic f$1:Lcom/smedialink/storage/domain/model/topics/TopicModel;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/controller/ForkTopicsController;Lcom/smedialink/storage/domain/model/topics/TopicModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/ForkTopicsController$$ExternalSyntheticLambda2;->f$0:Lorg/fork/controller/ForkTopicsController;

    iput-object p2, p0, Lorg/fork/controller/ForkTopicsController$$ExternalSyntheticLambda2;->f$1:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/fork/controller/ForkTopicsController$$ExternalSyntheticLambda2;->f$0:Lorg/fork/controller/ForkTopicsController;

    iget-object v1, p0, Lorg/fork/controller/ForkTopicsController$$ExternalSyntheticLambda2;->f$1:Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-static {v0, v1}, Lorg/fork/controller/ForkTopicsController;->$r8$lambda$2z2MKIr12FVM9ow9fpHQdLZJ-aA(Lorg/fork/controller/ForkTopicsController;Lcom/smedialink/storage/domain/model/topics/TopicModel;)V

    return-void
.end method
