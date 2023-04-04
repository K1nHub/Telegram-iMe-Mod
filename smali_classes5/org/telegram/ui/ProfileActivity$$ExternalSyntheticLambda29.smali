.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lcom/iMe/ui/profile/ProfilePresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/ui/profile/ProfilePresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda29;->f$0:Lcom/iMe/ui/profile/ProfilePresenter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda29;->f$0:Lcom/iMe/ui/profile/ProfilePresenter;

    check-cast p1, Lcom/iMe/model/twitter/TwitterAuthResult;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/profile/ProfilePresenter;->onTwitterAuthResult(Lcom/iMe/model/twitter/TwitterAuthResult;)V

    return-void
.end method
