.class public final synthetic Lorg/telegram/messenger/DispatchQueueMainThreadSync$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/DispatchQueueMainThreadSync;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/DispatchQueueMainThreadSync;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/DispatchQueueMainThreadSync$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/DispatchQueueMainThreadSync;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueueMainThreadSync$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/DispatchQueueMainThreadSync;

    invoke-static {v0, p1}, Lorg/telegram/messenger/DispatchQueueMainThreadSync;->$r8$lambda$QgFOHW9zIwlIbKHi6--jfbmqNwc(Lorg/telegram/messenger/DispatchQueueMainThreadSync;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
