.class final Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$1$3;
.super Ljava/lang/Object;
.source "WalletSessionInteractor.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;->login(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function;"
    }
.end annotation


# instance fields
.field final synthetic $result:Lcom/smedialink/storage/domain/model/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/wallet/SessionTokens;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/smedialink/storage/domain/model/Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/wallet/SessionTokens;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$1$3;->$result:Lcom/smedialink/storage/domain/model/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/smedialink/storage/domain/model/Result;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/wallet/SessionTokens;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$1$3;->$result:Lcom/smedialink/storage/domain/model/Result;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$1$3;->apply(Lcom/smedialink/storage/domain/model/Result;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
