.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda155;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$updates_Difference;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$updates_Difference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda155;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda155;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda155;->f$2:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda155;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda155;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda155;->f$2:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$dq4UzQ5gmOoSV4N0t20QAJKJEU0(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$updates_Difference;)V

    return-void
.end method
