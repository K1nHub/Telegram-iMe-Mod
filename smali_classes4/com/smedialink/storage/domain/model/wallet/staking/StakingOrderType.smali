.class public final enum Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;
.super Ljava/lang/Enum;
.source "StakingOrderType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

.field public static final enum ALPHABET:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

.field public static final Companion:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType$Companion;

.field public static final enum DEFAULT:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

.field public static final enum INTEREST:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;


# instance fields
.field private final title:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->ALPHABET:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->INTEREST:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->DEFAULT:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    sget v1, Lcom/smedialink/storage/R$string;->choose_tokens_order_alphabet:I

    const-string v2, "ALPHABET"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->ALPHABET:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    .line 11
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    sget v1, Lcom/smedialink/storage/R$string;->choose_staking_order_interest_rate:I

    const-string v2, "INTEREST"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->INTEREST:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    .line 12
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    sget v1, Lcom/smedialink/storage/R$string;->choose_tokens_order_default:I

    const-string v2, "DEFAULT"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->DEFAULT:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->$values()[Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->Companion:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->title:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    return-object v0
.end method


# virtual methods
.method public final getTitle()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->title:I

    return v0
.end method
