.class public final synthetic Lcom/smedialink/manager/multireply/MultiReplyInteractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/smedialink/manager/multireply/MultiReplyInteractor;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/smedialink/manager/multireply/MultiReplyInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/manager/multireply/MultiReplyInteractor$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/smedialink/manager/multireply/MultiReplyInteractor$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/manager/multireply/MultiReplyInteractor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/smedialink/manager/multireply/MultiReplyInteractor$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/smedialink/manager/multireply/MultiReplyInteractor$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/manager/multireply/MultiReplyInteractor;

    check-cast p1, Lcom/smedialink/manager/multireply/message/MessageLinkPattern;

    invoke-static {v0, v1, p1}, Lcom/smedialink/manager/multireply/MultiReplyInteractor;->$r8$lambda$pp077w3E4L7aBa1a9-KMNw9sDkg(Ljava/util/List;Lcom/smedialink/manager/multireply/MultiReplyInteractor;Lcom/smedialink/manager/multireply/message/MessageLinkPattern;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
