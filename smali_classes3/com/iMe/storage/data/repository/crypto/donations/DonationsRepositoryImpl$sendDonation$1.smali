.class final Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DonationsRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->sendDonation(JLcom/iMe/storage/domain/model/crypto/send/TransferArgs;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDonationsRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DonationsRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$1\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n*L\n1#1,147:1\n70#2:148\n*S KotlinDebug\n*F\n+ 1 DonationsRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$1\n*L\n125#1:148\n*E\n"
.end annotation


# instance fields
.field final synthetic $chatId:J

.field final synthetic this$0:Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;J)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$1;->this$0:Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;

    iput-wide p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$1;->$chatId:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$1;->this$0:Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->access$getDonationsApi$p(Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;)Lcom/iMe/storage/data/network/api/own/DonationsApi;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/donations/SendDonationTransactionRequest;

    .line 121
    iget-wide v2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$1;->$chatId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 120
    :cond_0
    invoke-direct {v1, v2, p1}, Lcom/iMe/storage/data/network/model/request/crypto/donations/SendDonationTransactionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/DonationsApi;->sendDonationTransaction(Lcom/iMe/storage/data/network/model/request/crypto/donations/SendDonationTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$1;->this$0:Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$1$invoke$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$1$invoke$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 117
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
