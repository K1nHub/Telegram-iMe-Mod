.class public final synthetic Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/PushListenerController;->$r8$lambda$MeJUgzA4g2rYdiQ3EwhBF1J33H4(IILjava/lang/String;)V

    return-void
.end method
