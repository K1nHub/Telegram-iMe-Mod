.class public final synthetic Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback;


# instance fields
.field public final synthetic f$0:Lcom/iMe/feature/twitter/TwitterPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/feature/twitter/TwitterPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda3;->f$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda3;->f$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-virtual {v0}, Lcom/iMe/feature/twitter/TwitterPresenter;->onResetConfirmClicked()V

    return-void
.end method
