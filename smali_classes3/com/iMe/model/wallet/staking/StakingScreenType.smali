.class public final enum Lcom/iMe/model/wallet/staking/StakingScreenType;
.super Ljava/lang/Enum;
.source "StakingScreenType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/model/wallet/staking/StakingScreenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/model/wallet/staking/StakingScreenType;

.field public static final enum STAKING_PROFIT_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

.field public static final enum STAKING_REPLENISH_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

.field public static final enum STAKING_WITHDRAW_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;


# instance fields
.field private final actionBarTitleTextId:I

.field private final animationId:I

.field private final buttonTextId:I

.field private final confirmMessageTextId:I

.field private final confirmTitleTextId:I

.field private final headerTextId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/wallet/staking/StakingScreenType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/model/wallet/staking/StakingScreenType;

    sget-object v1, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_REPLENISH_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_PROFIT_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_WITHDRAW_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 15
    new-instance v9, Lcom/iMe/model/wallet/staking/StakingScreenType;

    .line 16
    sget v3, Lorg/telegram/messenger/R$string;->wallet_operation_deposit:I

    .line 17
    sget v4, Lorg/telegram/messenger/R$string;->staking_replenishment_confirm_title:I

    .line 18
    sget v5, Lorg/telegram/messenger/R$string;->staking_replenishment_confirm_description:I

    .line 19
    sget v6, Lorg/telegram/messenger/R$raw;->fork_staking_replenish:I

    .line 20
    sget v7, Lorg/telegram/messenger/R$string;->staking_replenishment_description:I

    .line 21
    sget v8, Lorg/telegram/messenger/R$string;->staking_replenishment_title:I

    const-string v1, "STAKING_REPLENISH_SCREEN_TYPE"

    const/4 v2, 0x0

    move-object v0, v9

    .line 15
    invoke-direct/range {v0 .. v8}, Lcom/iMe/model/wallet/staking/StakingScreenType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v9, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_REPLENISH_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    .line 23
    new-instance v0, Lcom/iMe/model/wallet/staking/StakingScreenType;

    .line 24
    sget v13, Lorg/telegram/messenger/R$string;->staking_profit_get:I

    .line 25
    sget v14, Lorg/telegram/messenger/R$string;->staking_profit_confirm_title:I

    .line 26
    sget v15, Lorg/telegram/messenger/R$string;->staking_profit_confirm_description:I

    .line 27
    sget v16, Lorg/telegram/messenger/R$raw;->fork_staking_profit:I

    .line 28
    sget v17, Lorg/telegram/messenger/R$string;->staking_profit_description:I

    .line 29
    sget v18, Lorg/telegram/messenger/R$string;->staking_profit_title:I

    const-string v11, "STAKING_PROFIT_SCREEN_TYPE"

    const/4 v12, 0x1

    move-object v10, v0

    .line 23
    invoke-direct/range {v10 .. v18}, Lcom/iMe/model/wallet/staking/StakingScreenType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_PROFIT_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    .line 31
    new-instance v0, Lcom/iMe/model/wallet/staking/StakingScreenType;

    .line 32
    sget v4, Lorg/telegram/messenger/R$string;->staking_details_withdraw:I

    .line 33
    sget v5, Lorg/telegram/messenger/R$string;->staking_withdraw_confirm_title:I

    .line 34
    sget v6, Lorg/telegram/messenger/R$string;->staking_withdraw_confirm_description:I

    .line 35
    sget v7, Lorg/telegram/messenger/R$raw;->fork_staking_withdraw:I

    .line 36
    sget v8, Lorg/telegram/messenger/R$string;->staking_withdraw_description:I

    .line 37
    sget v9, Lorg/telegram/messenger/R$string;->staking_withdraw_title:I

    const-string v2, "STAKING_WITHDRAW_SCREEN_TYPE"

    const/4 v3, 0x2

    move-object v1, v0

    .line 31
    invoke-direct/range {v1 .. v9}, Lcom/iMe/model/wallet/staking/StakingScreenType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_WITHDRAW_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    invoke-static {}, Lcom/iMe/model/wallet/staking/StakingScreenType;->$values()[Lcom/iMe/model/wallet/staking/StakingScreenType;

    move-result-object v0

    sput-object v0, Lcom/iMe/model/wallet/staking/StakingScreenType;->$VALUES:[Lcom/iMe/model/wallet/staking/StakingScreenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/iMe/model/wallet/staking/StakingScreenType;->buttonTextId:I

    .line 9
    iput p4, p0, Lcom/iMe/model/wallet/staking/StakingScreenType;->confirmTitleTextId:I

    .line 10
    iput p5, p0, Lcom/iMe/model/wallet/staking/StakingScreenType;->confirmMessageTextId:I

    .line 11
    iput p6, p0, Lcom/iMe/model/wallet/staking/StakingScreenType;->animationId:I

    .line 12
    iput p7, p0, Lcom/iMe/model/wallet/staking/StakingScreenType;->headerTextId:I

    .line 13
    iput p8, p0, Lcom/iMe/model/wallet/staking/StakingScreenType;->actionBarTitleTextId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/model/wallet/staking/StakingScreenType;
    .locals 1

    const-class v0, Lcom/iMe/model/wallet/staking/StakingScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/wallet/staking/StakingScreenType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/model/wallet/staking/StakingScreenType;
    .locals 1

    sget-object v0, Lcom/iMe/model/wallet/staking/StakingScreenType;->$VALUES:[Lcom/iMe/model/wallet/staking/StakingScreenType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/wallet/staking/StakingScreenType;

    return-object v0
.end method


# virtual methods
.method public final getActionBarTitleTextId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/iMe/model/wallet/staking/StakingScreenType;->actionBarTitleTextId:I

    return v0
.end method

.method public final getAnimationId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/iMe/model/wallet/staking/StakingScreenType;->animationId:I

    return v0
.end method

.method public final getButtonTextId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/model/wallet/staking/StakingScreenType;->buttonTextId:I

    return v0
.end method

.method public final getConfirmMessageTextId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/model/wallet/staking/StakingScreenType;->confirmMessageTextId:I

    return v0
.end method

.method public final getConfirmTitleTextId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/model/wallet/staking/StakingScreenType;->confirmTitleTextId:I

    return v0
.end method

.method public final getHeaderTextId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/iMe/model/wallet/staking/StakingScreenType;->headerTextId:I

    return v0
.end method
