.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:[J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;III[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda41;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda41;->f$1:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda41;->f$2:I

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda41;->f$3:I

    iput-object p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda41;->f$4:[J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda41;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda41;->f$1:I

    iget v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda41;->f$2:I

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda41;->f$3:I

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda41;->f$4:[J

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$glkKf_TMEr46JZo4MVtwi69CVpM(Lorg/telegram/messenger/MessagesStorage;III[J)V

    return-void
.end method
