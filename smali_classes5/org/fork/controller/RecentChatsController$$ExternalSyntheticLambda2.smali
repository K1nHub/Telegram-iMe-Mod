.class public final synthetic Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/controller/RecentChatsController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/fork/controller/RecentChatsController;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda2;->f$0:Lorg/fork/controller/RecentChatsController;

    iput-wide p2, p0, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda2;->f$1:J

    iput-boolean p4, p0, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda2;->f$0:Lorg/fork/controller/RecentChatsController;

    iget-wide v1, p0, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda2;->f$1:J

    iget-boolean v3, p0, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda2;->f$2:Z

    invoke-static {v0, v1, v2, v3}, Lorg/fork/controller/RecentChatsController;->$r8$lambda$wauuv79najJ8i218CAHP2L55DAg(Lorg/fork/controller/RecentChatsController;JZ)V

    return-void
.end method
