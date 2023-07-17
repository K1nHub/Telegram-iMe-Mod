.class public final synthetic Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/MessagesStorage$BooleanCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ApplicationLoaderImpl$1;

.field public final synthetic f$1:Lcom/iMe/fork/models/Changelog;

.field public final synthetic f$2:Lcom/iMe/fork/utils/Callbacks$Callback1;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ApplicationLoaderImpl$1;Lcom/iMe/fork/models/Changelog;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/ApplicationLoaderImpl$1;

    iput-object p2, p0, Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda1;->f$1:Lcom/iMe/fork/models/Changelog;

    iput-object p3, p0, Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda1;->f$2:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-void
.end method


# virtual methods
.method public final run(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/ApplicationLoaderImpl$1;

    iget-object v1, p0, Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda1;->f$1:Lcom/iMe/fork/models/Changelog;

    iget-object v2, p0, Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda1;->f$2:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/messenger/ApplicationLoaderImpl$1;->$r8$lambda$7mmox5FILGqn3h6Mw4Ab8S8T4w8(Lorg/telegram/messenger/ApplicationLoaderImpl$1;Lcom/iMe/fork/models/Changelog;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V

    return-void
.end method
