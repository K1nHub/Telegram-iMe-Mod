.class public final Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Production;
.super Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;
.source "EnvironmentInformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Production"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Production;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Production;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Production;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Production;->INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Production;

    return-void
.end method

.method private constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 27
    sget-object v1, Lcom/smedialink/storage/domain/model/common/Environment;->PRODUCTION:Lcom/smedialink/storage/domain/model/common/Environment;

    .line 28
    sget-object v2, Lcom/smedialink/storage/common/AppConfiguration$Common;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Common;

    invoke-virtual {v2}, Lcom/smedialink/storage/common/AppConfiguration$Common;->getProdGoogleServices()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    const-string v3, "https://api.imem.app/api/"

    const-string v4, "iMeWalletBot"

    const-wide/32 v5, 0x40254d83

    const-string v7, "https://etherscan.io/"

    const-string v8, "https://bscscan.com/"

    const-string v9, "https://polygonscan.com/"

    const-string v10, "https://ftmscan.com/"

    const-string v11, "https://tronscan.io/"

    const-string v12, "https://tonscan.org/"

    const-string v13, "imelikebot"

    const-wide/32 v14, 0x536be7dd

    const-string v16, "https://binance.pay.imem.app/"

    const-string v17, "global-config-wallet.json"

    const/16 v18, 0x3

    const/16 v19, 0x0

    .line 26
    invoke-direct/range {v0 .. v19}, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;-><init>(Lcom/smedialink/storage/domain/model/common/Environment;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
