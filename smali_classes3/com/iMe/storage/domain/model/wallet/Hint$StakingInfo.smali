.class public final Lcom/iMe/storage/domain/model/wallet/Hint$StakingInfo;
.super Lcom/iMe/storage/domain/model/wallet/Hint;
.source "Hint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/Hint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StakingInfo"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/Hint$StakingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/Hint$StakingInfo;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/Hint$StakingInfo;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/Hint$StakingInfo;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/Hint$StakingInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 19
    sget-object v0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/iMe/storage/domain/model/common/EnvironmentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->getHintDefaultShowsCount()I

    move-result v0

    const-string v1, "staking_info"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/iMe/storage/domain/model/wallet/Hint;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
