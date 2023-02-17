.class public final synthetic Lcom/smedialink/ui/chat/ChatPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/chat/ChatPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/chat/ChatPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/ui/chat/ChatPresenter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/ui/chat/ChatPresenter;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/smedialink/ui/chat/ChatPresenter;->$r8$lambda$o9d2N9EZtcJPAPvdQVY81Ug0VVI(Lcom/smedialink/ui/chat/ChatPresenter;Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
