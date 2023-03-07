.class public final synthetic Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/FileLoadOperation;

.field public final synthetic f$1:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/messenger/FileLoadOperation;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda17;->f$1:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda17;->f$1:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->$r8$lambda$Tl6KV3lPYOfDpQnCBUb6f8ZOudQ(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
