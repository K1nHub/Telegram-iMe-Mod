.class public final Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Stage;
.super Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;
.source "EnvironmentInformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stage"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Stage;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Stage;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Stage;->INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Stage;

    return-void
.end method

.method private constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 46
    sget-object v1, Lcom/smedialink/storage/domain/model/common/Environment;->STAGE:Lcom/smedialink/storage/domain/model/common/Environment;

    .line 47
    sget-object v2, Lcom/smedialink/storage/common/AppConfiguration$Common;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Common;

    invoke-virtual {v2}, Lcom/smedialink/storage/common/AppConfiguration$Common;->getStageGoogleServices()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    const-string v3, "https://api.stage.imem.app/api/"

    const-string v4, "iMeWalletStageBot"

    const-wide/32 v5, 0x3b591fa2

    const-string v7, "https://ropsten.etherscan.io/"

    const-string v8, "https://testnet.bscscan.com/"

    const-string v9, "https://mumbai.polygonscan.com/"

    const-string v10, "https://testnet.ftmscan.com/"

    const-string v11, "https://nile.tronscan.org/"

    const-string v12, "https://tonscan.org/"

    const-string v13, "iMeLikeStageBot"

    const-wide/32 v14, 0x4fc3ad03

    const-string v16, "https://binance.pay.stage.imem.app/"

    const-string v17, "testnet-global.config.json"

    const v18, 0x7fffffff

    const/16 v19, 0x0

    .line 45
    invoke-direct/range {v0 .. v19}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;-><init>(Lcom/smedialink/storage/domain/model/common/Environment;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
