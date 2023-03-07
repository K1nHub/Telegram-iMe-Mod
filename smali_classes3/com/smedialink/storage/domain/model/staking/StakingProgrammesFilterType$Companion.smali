.class public final Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType$Companion;
.super Ljava/lang/Object;
.source "StakingProgrammesFilterType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final mapByOrdinal(I)Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;
    .locals 1

    .line 15
    invoke-static {}, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->values()[Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    if-nez p1, :cond_0

    sget-object p1, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->RUNNING:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    :cond_0
    return-object p1
.end method
