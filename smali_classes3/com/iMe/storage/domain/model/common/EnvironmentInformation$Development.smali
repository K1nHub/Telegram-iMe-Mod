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
    .locals 19

    move-object/from16 v0, p0

    .line 59
    sget-object v1, Lcom/iMe/storage/domain/model/common/Environment;->DEVELOPMENT:Lcom/iMe/storage/domain/model/common/Environment;

    .line 60
    sget-object v2, Lcom/iMe/storage/common/AppConfiguration$Common;->INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Common;

    invoke-virtual {v2}, Lcom/iMe/storage/common/AppConfiguration$Common;->getStageGoogleServices()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    const-string v3, "https://api.stage.imem.app/api/"

    const-string v4, "ime_official_stage_bot"

    const-wide v5, 0x15b3279d6L

    const-string v7, "iMe_news_stage_bot"

    const-wide v8, 0x17b8dfaffL

    const-string v10, "https://testnet.bscscan.com/"

    const-string v11, "iMeLikeStageBot"

    const-wide/32 v12, 0x4fc3ad03

    const-string v14, "https://binance.pay.stage.imem.app/"

    const-string v15, "testnet-global.config.json"

    const v16, 0x7fffffff

    const-string v17, "imestage.page.link"

    const/16 v18, 0x0

    .line 58
    invoke-direct/range {v0 .. v18}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;-><init>(Lcom/iMe/storage/domain/model/common/Environment;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
