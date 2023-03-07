.class public final synthetic Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$5:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaController;IIJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/messenger/MediaController;

    iput p2, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;->f$1:I

    iput p3, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;->f$2:I

    iput-wide p4, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;->f$3:J

    iput-object p6, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;->f$4:Lorg/telegram/messenger/MessageObject;

    iput-object p7, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;->f$5:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/messenger/MediaController;

    iget v1, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;->f$1:I

    iget v2, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;->f$2:I

    iget-wide v3, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;->f$3:J

    iget-object v5, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;->f$4:Lorg/telegram/messenger/MessageObject;

    iget-object v6, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;->f$5:Lorg/telegram/messenger/MessageObject;

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->$r8$lambda$jZJAIUl30hK1yoVRmwqTQNLFATs(Lorg/telegram/messenger/MediaController;IIJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method
