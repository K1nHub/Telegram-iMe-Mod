.class public final synthetic Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/FileLoader;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/messenger/FileLoaderPriorityQueue;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;Lorg/telegram/messenger/FileLoaderPriorityQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/messenger/FileLoaderPriorityQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/FileLoader;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/messenger/FileLoaderPriorityQueue;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/FileLoader;->$r8$lambda$tUcZOoqoIB5wseVdF5i-4O1MOm8(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;Lorg/telegram/messenger/FileLoaderPriorityQueue;)V

    return-void
.end method
