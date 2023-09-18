.class public final synthetic Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/iMe/storage/domain/manager/auth/AuthManager;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/storage/domain/manager/auth/AuthManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/storage/domain/manager/auth/AuthManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/storage/domain/manager/auth/AuthManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->logout()V

    return-void
.end method
