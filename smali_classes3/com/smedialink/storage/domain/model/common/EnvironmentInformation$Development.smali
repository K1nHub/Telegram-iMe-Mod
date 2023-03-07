.class public final Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Development;
.super Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;
.source "EnvironmentInformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Development"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Development;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Development;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Development;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Development;->INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Development;

    return-void
.end method

.method private constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    .line 62
    sget-object v1, Lcom/smedialink/storage/domain/model/common/Environment;->DEVELOPMENT:Lcom/smedialink/storage/domain/model/common/Environment;

    .line 63
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

    const-string v11, "https://tonscan.org/"

    const-string v12, "iMeLikeStageBot"

    const-wide/32 v13, 0x4fc3ad03

    const-string v15, "https://binance.pay.stage.imem.app/"

    const-string v16, "testnet-global.config.json"

    const v17, 0x7fffffff

    const/16 v18, 0x0

    .line 61
    invoke-direct/range {v0 .. v18}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;-><init>(Lcom/smedialink/storage/domain/model/common/Environment;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
