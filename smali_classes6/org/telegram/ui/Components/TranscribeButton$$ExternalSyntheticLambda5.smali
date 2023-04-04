.class public final synthetic Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/MessageObject;

    iput-wide p2, p0, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda5;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda5;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/MessageObject;

    iget-wide v1, p0, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda5;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda5;->f$3:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/TranscribeButton;->$r8$lambda$sgtzD9SbvShVPIhZUYeLudZY5lE(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;Z)V

    return-void
.end method
