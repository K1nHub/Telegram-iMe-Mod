.class public final synthetic Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SavedMessagesController;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/messenger/SavedMessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda19;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/messenger/SavedMessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda19;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->$r8$lambda$HMgQDu2fF-BCqWQC4upWY651xzU(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
