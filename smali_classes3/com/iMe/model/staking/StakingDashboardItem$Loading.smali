.class public final Lcom/iMe/model/staking/StakingDashboardItem$Loading;
.super Lcom/iMe/model/staking/StakingDashboardItem;
.source "StakingDashboardItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/staking/StakingDashboardItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Loading"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/staking/StakingDashboardItem$Loading;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/staking/StakingDashboardItem$Loading;

    invoke-direct {v0}, Lcom/iMe/model/staking/StakingDashboardItem$Loading;-><init>()V

    sput-object v0, Lcom/iMe/model/staking/StakingDashboardItem$Loading;->INSTANCE:Lcom/iMe/model/staking/StakingDashboardItem$Loading;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/iMe/model/staking/StakingDashboardItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
