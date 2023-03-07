.class public final synthetic Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/controller/RecentChatsController;

.field public final synthetic f$1:Lcom/smedialink/storage/domain/model/HistoryDialogModel;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/controller/RecentChatsController;Lcom/smedialink/storage/domain/model/HistoryDialogModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda3;->f$0:Lorg/fork/controller/RecentChatsController;

    iput-object p2, p0, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda3;->f$1:Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda3;->f$0:Lorg/fork/controller/RecentChatsController;

    iget-object v1, p0, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda3;->f$1:Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    invoke-static {v0, v1}, Lorg/fork/controller/RecentChatsController;->$r8$lambda$gQS4eIoCgdvVxKm_QoCzLDbbkns(Lorg/fork/controller/RecentChatsController;Lcom/smedialink/storage/domain/model/HistoryDialogModel;)V

    return-void
.end method
