.class public final synthetic Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->$r8$lambda$nQJjHnmvLEsr5q4UefasRjWtNZQ(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
