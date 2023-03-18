.class final Lcom/smedialink/manager/multireply/data/MultiReplyRepository$getLinkPatternFromApi$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MultiReplyRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/multireply/data/MultiReplyRepository;->getLinkPatternFromApi(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;",
        "Lcom/smedialink/manager/multireply/message/MessageLinkPattern;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic $message:Lorg/telegram/messenger/MessageObject;

.field final synthetic this$0:Lcom/smedialink/manager/multireply/data/MultiReplyRepository;


# direct methods
.method constructor <init>(Lcom/smedialink/manager/multireply/data/MultiReplyRepository;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/manager/multireply/data/MultiReplyRepository$getLinkPatternFromApi$1;->this$0:Lcom/smedialink/manager/multireply/data/MultiReplyRepository;

    iput-object p2, p0, Lcom/smedialink/manager/multireply/data/MultiReplyRepository$getLinkPatternFromApi$1;->$message:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lcom/smedialink/manager/multireply/data/MultiReplyRepository$getLinkPatternFromApi$1;->$currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;)Lcom/smedialink/manager/multireply/message/MessageLinkPattern;
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/smedialink/manager/multireply/data/MultiReplyRepository$getLinkPatternFromApi$1;->this$0:Lcom/smedialink/manager/multireply/data/MultiReplyRepository;

    invoke-static {v0}, Lcom/smedialink/manager/multireply/data/MultiReplyRepository;->access$getMessageLinkCache$p(Lcom/smedialink/manager/multireply/data/MultiReplyRepository;)Lcom/smedialink/manager/multireply/message/MessageLinkCache;

    move-result-object v0

    .line 31
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;->link:Ljava/lang/String;

    const-string v1, "it.link"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/smedialink/manager/multireply/data/MultiReplyRepository$getLinkPatternFromApi$1;->$message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    .line 33
    iget-object v2, p0, Lcom/smedialink/manager/multireply/data/MultiReplyRepository$getLinkPatternFromApi$1;->$currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 30
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/smedialink/manager/multireply/message/MessageLinkCache;->writeLinkToCache(Ljava/lang/String;IJ)Lcom/smedialink/manager/multireply/message/MessageLinkPattern;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    invoke-virtual {p0, p1}, Lcom/smedialink/manager/multireply/data/MultiReplyRepository$getLinkPatternFromApi$1;->invoke(Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;)Lcom/smedialink/manager/multireply/message/MessageLinkPattern;

    move-result-object p1

    return-object p1
.end method
