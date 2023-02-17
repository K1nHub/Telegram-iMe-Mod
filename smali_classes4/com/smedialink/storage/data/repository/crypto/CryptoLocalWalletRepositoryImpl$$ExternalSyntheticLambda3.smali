.class public final synthetic Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda3;->INSTANCE:Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda3;

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

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->$r8$lambda$wEI6mIfi8M37_xZCOq9Ndmzh_3Q(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
