.class public final synthetic Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda38;->f$0:Lorg/telegram/messenger/MessageObject;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda38;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda38;->f$0:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda38;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->$r8$lambda$RVuoBKzPQ3I7pN_rS3J9MG7KpVc(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V

    return-void
.end method
