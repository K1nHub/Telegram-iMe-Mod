.class public final Lcom/iMe/storage/common/AppConfiguration$Api;
.super Ljava/lang/Object;
.source "AppConfiguration.kt"


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Api;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/common/AppConfiguration$Api;

    invoke-direct {v0}, Lcom/iMe/storage/common/AppConfiguration$Api;-><init>()V

    sput-object v0, Lcom/iMe/storage/common/AppConfiguration$Api;->INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Api;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getServerUrl()Ljava/lang/String;
    .locals 1

    .line 117
    sget-object v0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/iMe/storage/domain/model/common/EnvironmentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->getMainApiUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
