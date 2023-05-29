.class public final Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Development;
.super Lcom/iMe/storage/domain/model/common/EnvironmentInformation;
.source "EnvironmentInformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/common/EnvironmentInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Development"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Development;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Development;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Development;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Development;->INSTANCE:Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Development;

    return-void
.end method

.method private constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    .line 68
    sget-object v1, Lcom/iMe/storage/domain/model/common/Environment;->DEVELOPMENT:Lcom/iMe/storage/domain/model/common/Environment;

    .line 69
    sget-object v2, Lcom/iMe/storage/common/AppConfiguration$Common;->INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Common;

    invoke-virtual {v2}, Lcom/iMe/storage/common/AppConfiguration$Common;->getStageGoogleServices()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    const-string v3, "https://api.stage.imem.app/api/"

    const-string v4, "ime_official_stage_bot"

    const-wide v5, 0x15b3279d6L

    const-string v7, "https://ropsten.etherscan.io/"

    const-string v8, "https://testnet.bscscan.com/"

    const-string v9, "https://mumbai.polygonscan.com/"

    const-string v10, "https://testnet.ftmscan.com/"

    const-string v11, "https://nile.tronscan.org/"

    const-string v12, "https://tonscan.org/"

    const-string v13, "https://blockchair.com/bitcoin/testnet/"

    const-string v14, "iMeLikeStageBot"

    const-wide/32 v15, 0x4fc3ad03

    const-string v17, "https://binance.pay.stage.imem.app/"

    const-string v18, "testnet-global.config.json"

    const v19, 0x7fffffff

    const/16 v20, 0x0

    .line 67
    invoke-direct/range {v0 .. v20}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;-><init>(Lcom/iMe/storage/domain/model/common/Environment;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
