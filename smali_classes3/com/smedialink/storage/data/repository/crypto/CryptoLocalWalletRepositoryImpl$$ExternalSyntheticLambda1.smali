.class public final synthetic Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda1;

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

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-static {p1}, Lcom/smedialink/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->$r8$lambda$hQKcKnXhv7E1luCjVG5MpopI1q4(Lcom/smedialink/storage/domain/model/Result;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
