.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda153;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda153;->f$0:[Z

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda153;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda153;->f$0:[Z

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda153;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$-4ZX1w2oZKAM8JZM8e34VyWRC9U([ZLjava/lang/Runnable;)V

    return-void
.end method
