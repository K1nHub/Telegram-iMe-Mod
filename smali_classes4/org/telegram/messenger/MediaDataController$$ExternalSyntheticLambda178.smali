.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda178;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:[Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([Z[Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda178;->f$0:[Z

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda178;->f$1:[Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda178;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda178;->f$0:[Z

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda178;->f$1:[Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda178;->f$2:Ljava/lang/Runnable;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$3x0uLxK5L3HocZjqvyMN36yciNk([Z[Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;)V

    return-void
.end method
