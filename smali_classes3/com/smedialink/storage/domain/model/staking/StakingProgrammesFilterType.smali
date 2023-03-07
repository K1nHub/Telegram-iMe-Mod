.class public final enum Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;
.super Ljava/lang/Enum;
.source "StakingProgrammesFilterType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

.field public static final enum ARCHIVE:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

.field public static final Companion:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType$Companion;

.field public static final enum FINISHED:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

.field public static final enum RUNNING:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;


# instance fields
.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->RUNNING:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->FINISHED:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->ARCHIVE:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    sget v1, Lcom/smedialink/storage/R$string;->staking_programmes_filter_active:I

    const-string v2, "RUNNING"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->RUNNING:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    .line 10
    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    sget v1, Lcom/smedialink/storage/R$string;->staking_programmes_filter_completed:I

    const-string v2, "FINISHED"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->FINISHED:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    .line 11
    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    sget v1, Lcom/smedialink/storage/R$string;->staking_programmes_filter_archive:I

    const-string v2, "ARCHIVE"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->ARCHIVE:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    invoke-static {}, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->$values()[Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->$VALUES:[Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->Companion:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    iput p3, p0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->titleResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->$VALUES:[Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    return-object v0
.end method


# virtual methods
.method public final getTitleResId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->titleResId:I

    return v0
.end method
