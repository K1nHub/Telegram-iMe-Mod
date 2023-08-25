.class public final Lcom/iMe/storage/common/AppConfiguration$Reaction;
.super Ljava/lang/Object;
.source "AppConfiguration.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/common/AppConfiguration$Reaction;

    invoke-direct {v0}, Lcom/iMe/storage/common/AppConfiguration$Reaction;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBotId()J
    .locals 2

    .line 107
    sget-object v0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/iMe/storage/domain/model/common/EnvironmentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->getReactionBotId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getBotName()Ljava/lang/String;
    .locals 1

    .line 104
    sget-object v0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/iMe/storage/domain/model/common/EnvironmentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->getReactionBotUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
