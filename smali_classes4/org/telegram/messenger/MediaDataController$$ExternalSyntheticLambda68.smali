.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda68;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Ljava/lang/String;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda68;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda68;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda68;->f$2:Z

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda68;->f$3:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda68;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda68;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda68;->f$2:Z

    iget-object v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda68;->f$3:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$lmnfMUHrJS4ouWUZalNRjLclriU(Lorg/telegram/messenger/MediaDataController;Ljava/lang/String;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;)V

    return-void
.end method
