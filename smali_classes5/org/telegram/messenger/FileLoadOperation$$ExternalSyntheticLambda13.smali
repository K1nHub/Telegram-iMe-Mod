.class public final synthetic Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/FileLoadOperation;

.field public final synthetic f$1:[Ljava/io/File;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/FileLoadOperation;[Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/messenger/FileLoadOperation;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda13;->f$1:[Ljava/io/File;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda13;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda13;->f$1:[Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda13;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->$r8$lambda$WKbzVHmWH4wYVdGN-IjO7kDQ39U(Lorg/telegram/messenger/FileLoadOperation;[Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
