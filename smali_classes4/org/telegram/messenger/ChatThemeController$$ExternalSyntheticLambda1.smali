.class public final synthetic Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Lorg/telegram/tgnet/ResultCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    iput-object p2, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/ResultCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/ResultCallback;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatThemeController;->$r8$lambda$EiX9Wxf3nylU7BC86bmrCJrw-QE(Ljava/io/File;Lorg/telegram/tgnet/ResultCallback;)V

    return-void
.end method
