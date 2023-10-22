.class public final Lcom/iMe/storage/common/AppConfiguration$Binance;
.super Ljava/lang/Object;
.source "AppConfiguration.kt"


# static fields
.field private static final AUTH_REDIRECT_URL:Ljava/lang/String;

.field public static final INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Binance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/common/AppConfiguration$Binance;

    invoke-direct {v0}, Lcom/iMe/storage/common/AppConfiguration$Binance;-><init>()V

    sput-object v0, Lcom/iMe/storage/common/AppConfiguration$Binance;->INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Binance;

    const-string v0, "ime://binance/payAuth"

    .line 162
    sput-object v0, Lcom/iMe/storage/common/AppConfiguration$Binance;->AUTH_REDIRECT_URL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAUTH_REDIRECT_URL()Ljava/lang/String;
    .locals 1

    .line 162
    sget-object v0, Lcom/iMe/storage/common/AppConfiguration$Binance;->AUTH_REDIRECT_URL:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessPayUrl()Ljava/lang/String;
    .locals 1

    .line 173
    sget-object v0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/iMe/storage/domain/model/common/EnvironmentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->getBinanceProcessUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
