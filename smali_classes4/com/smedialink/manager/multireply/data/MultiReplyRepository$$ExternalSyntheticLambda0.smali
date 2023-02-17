.class public final synthetic Lcom/smedialink/manager/multireply/data/MultiReplyRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/manager/multireply/data/MultiReplyRepository;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/manager/multireply/data/MultiReplyRepository;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/manager/multireply/data/MultiReplyRepository$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/manager/multireply/data/MultiReplyRepository;

    iput-object p2, p0, Lcom/smedialink/manager/multireply/data/MultiReplyRepository$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lcom/smedialink/manager/multireply/data/MultiReplyRepository$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/smedialink/manager/multireply/data/MultiReplyRepository$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/manager/multireply/data/MultiReplyRepository;

    iget-object v1, p0, Lcom/smedialink/manager/multireply/data/MultiReplyRepository$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lcom/smedialink/manager/multireply/data/MultiReplyRepository$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    invoke-static {v0, v1, v2, p1}, Lcom/smedialink/manager/multireply/data/MultiReplyRepository;->$r8$lambda$nI3dCOkVIcT0mhwdL1_50P_7sGw(Lcom/smedialink/manager/multireply/data/MultiReplyRepository;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;)Lcom/smedialink/manager/multireply/message/MessageLinkPattern;

    move-result-object p1

    return-object p1
.end method
