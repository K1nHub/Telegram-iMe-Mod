.class public final synthetic Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->$r8$lambda$1W5Trm8I3Z431L_uj0LqSW0O8Og(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
