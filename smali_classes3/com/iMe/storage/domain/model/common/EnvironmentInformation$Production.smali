.class public final Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Production;
.super Lcom/iMe/storage/domain/model/common/EnvironmentInformation;
.source "EnvironmentInformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/common/EnvironmentInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Production"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Production;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Production;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Production;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Production;->INSTANCE:Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Production;

    return-void
.end method

.method private constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    .line 25
    sget-object v1, Lcom/iMe/storage/domain/model/common/Environment;->PRODUCTION:Lcom/iMe/storage/domain/model/common/Environment;

    .line 26
    sget-object v2, Lcom/iMe/storage/common/AppConfiguration$Common;->INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Common;

    invoke-virtual {v2}, Lcom/iMe/storage/common/AppConfiguration$Common;->getProdGoogleServices()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    const-string v3, "https://api.imem.app/api/"

    const-string v4, "ime_official_bot"

    const-wide v5, 0x15c1fcebbL

    const-string v7, "iMe_news_bot"

    const-wide v8, 0x1845560acL

    const-string v10, "https://bscscan.com/"

    const-string v11, "imelikebot"

    const-wide/32 v12, 0x536be7dd

    const-string v14, "https://binance.pay.imem.app/"

    const-string v15, "global-config-wallet.json"

    const/16 v16, 0x3

    const-string v17, "cryptoboxes.imem.app"

    const/16 v18, 0x0

    .line 24
    invoke-direct/range {v0 .. v18}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;-><init>(Lcom/iMe/storage/domain/model/common/Environment;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
