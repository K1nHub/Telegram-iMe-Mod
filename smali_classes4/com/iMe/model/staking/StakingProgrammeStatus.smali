.class public final enum Lcom/iMe/model/staking/StakingProgrammeStatus;
.super Ljava/lang/Enum;
.source "StakingProgrammeStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/model/staking/StakingProgrammeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/model/staking/StakingProgrammeStatus;

.field public static final enum ACTIVE:Lcom/iMe/model/staking/StakingProgrammeStatus;

.field public static final enum CLOSED:Lcom/iMe/model/staking/StakingProgrammeStatus;

.field public static final enum SHORT_OF_FUNDS:Lcom/iMe/model/staking/StakingProgrammeStatus;

.field public static final enum WITHDRAWAL_AVAILABLE:Lcom/iMe/model/staking/StakingProgrammeStatus;


# instance fields
.field private final colorKey:I

.field private final textResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/staking/StakingProgrammeStatus;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/model/staking/StakingProgrammeStatus;

    sget-object v1, Lcom/iMe/model/staking/StakingProgrammeStatus;->ACTIVE:Lcom/iMe/model/staking/StakingProgrammeStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/staking/StakingProgrammeStatus;->WITHDRAWAL_AVAILABLE:Lcom/iMe/model/staking/StakingProgrammeStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/staking/StakingProgrammeStatus;->SHORT_OF_FUNDS:Lcom/iMe/model/staking/StakingProgrammeStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/staking/StakingProgrammeStatus;->CLOSED:Lcom/iMe/model/staking/StakingProgrammeStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/iMe/model/staking/StakingProgrammeStatus;

    sget v1, Lorg/telegram/messenger/R$string;->staking_details_status_active:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inGreenCall:I

    const-string v3, "ACTIVE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/iMe/model/staking/StakingProgrammeStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iMe/model/staking/StakingProgrammeStatus;->ACTIVE:Lcom/iMe/model/staking/StakingProgrammeStatus;

    .line 12
    new-instance v0, Lcom/iMe/model/staking/StakingProgrammeStatus;

    .line 13
    sget v1, Lorg/telegram/messenger/R$string;->staking_details_status_withdrawal_available:I

    .line 14
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    const-string v3, "WITHDRAWAL_AVAILABLE"

    const/4 v4, 0x1

    .line 12
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/iMe/model/staking/StakingProgrammeStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iMe/model/staking/StakingProgrammeStatus;->WITHDRAWAL_AVAILABLE:Lcom/iMe/model/staking/StakingProgrammeStatus;

    .line 16
    new-instance v0, Lcom/iMe/model/staking/StakingProgrammeStatus;

    sget v1, Lorg/telegram/messenger/R$string;->staking_details_status_short_of_funds:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const-string v3, "SHORT_OF_FUNDS"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/iMe/model/staking/StakingProgrammeStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iMe/model/staking/StakingProgrammeStatus;->SHORT_OF_FUNDS:Lcom/iMe/model/staking/StakingProgrammeStatus;

    .line 17
    new-instance v0, Lcom/iMe/model/staking/StakingProgrammeStatus;

    sget v1, Lorg/telegram/messenger/R$string;->staking_details_status_finished:I

    const-string v3, "CLOSED"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/iMe/model/staking/StakingProgrammeStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iMe/model/staking/StakingProgrammeStatus;->CLOSED:Lcom/iMe/model/staking/StakingProgrammeStatus;

    invoke-static {}, Lcom/iMe/model/staking/StakingProgrammeStatus;->$values()[Lcom/iMe/model/staking/StakingProgrammeStatus;

    move-result-object v0

    sput-object v0, Lcom/iMe/model/staking/StakingProgrammeStatus;->$VALUES:[Lcom/iMe/model/staking/StakingProgrammeStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/iMe/model/staking/StakingProgrammeStatus;->textResId:I

    .line 9
    iput p4, p0, Lcom/iMe/model/staking/StakingProgrammeStatus;->colorKey:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/model/staking/StakingProgrammeStatus;
    .locals 1

    const-class v0, Lcom/iMe/model/staking/StakingProgrammeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/staking/StakingProgrammeStatus;

    return-object p0
.end method

.method public static values()[Lcom/iMe/model/staking/StakingProgrammeStatus;
    .locals 1

    sget-object v0, Lcom/iMe/model/staking/StakingProgrammeStatus;->$VALUES:[Lcom/iMe/model/staking/StakingProgrammeStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/staking/StakingProgrammeStatus;

    return-object v0
.end method


# virtual methods
.method public final getColorKey()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/model/staking/StakingProgrammeStatus;->colorKey:I

    return v0
.end method

.method public final getTextResId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/model/staking/StakingProgrammeStatus;->textResId:I

    return v0
.end method
