.class public final enum Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;
.super Ljava/lang/Enum;
.source "AccountLevel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/level/AccountLevel$Companion;,
        Lcom/iMe/storage/domain/model/crypto/level/AccountLevel$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

.field public static final enum ADVISER:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

.field public static final enum BASE:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

.field public static final enum BOSS:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

.field public static final Companion:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel$Companion;

.field public static final enum FAN:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

.field public static final enum ORACLE:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

.field public static final enum ZERO:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;


# instance fields
.field private final colorResId:I

.field private final descriptionResId:I

.field private final minThreshold:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->ZERO:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->BASE:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->FAN:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->BOSS:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->ADVISER:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->ORACLE:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 14
    new-instance v6, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    sget v3, Lcom/iMe/storage/R$color;->account_level_zero:I

    sget v4, Lcom/iMe/storage/R$string;->wallet_account_level_zero_description:I

    const-string v1, "ZERO"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->ZERO:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    .line 15
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    sget v10, Lcom/iMe/storage/R$color;->account_level_base:I

    sget v11, Lcom/iMe/storage/R$string;->wallet_account_level_base_description:I

    const-string v8, "BASE"

    const/4 v9, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->BASE:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    .line 16
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    sget v4, Lcom/iMe/storage/R$color;->account_level_fan:I

    sget v5, Lcom/iMe/storage/R$string;->wallet_account_level_fan_description:I

    const-string v2, "FAN"

    const/4 v3, 0x2

    const/16 v6, 0x2710

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->FAN:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    .line 17
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    sget v10, Lcom/iMe/storage/R$color;->account_level_boss:I

    sget v11, Lcom/iMe/storage/R$string;->wallet_account_level_boss_description:I

    const-string v8, "BOSS"

    const/4 v9, 0x3

    const v12, 0x186a0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->BOSS:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    .line 18
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    sget v4, Lcom/iMe/storage/R$color;->account_level_adviser:I

    sget v5, Lcom/iMe/storage/R$string;->wallet_account_level_adviser_description:I

    const-string v2, "ADVISER"

    const/4 v3, 0x4

    const v6, 0xf4240

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->ADVISER:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    .line 19
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    sget v10, Lcom/iMe/storage/R$color;->account_level_oracle:I

    sget v11, Lcom/iMe/storage/R$string;->wallet_account_level_oracle_description:I

    const-string v8, "ORACLE"

    const/4 v9, 0x5

    const v12, 0x989680

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->ORACLE:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->$values()[Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->Companion:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->colorResId:I

    .line 11
    iput p4, p0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->descriptionResId:I

    .line 12
    iput p5, p0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->minThreshold:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    return-object v0
.end method


# virtual methods
.method public final getColorResId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->colorResId:I

    return v0
.end method

.method public final getDescriptionResId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->descriptionResId:I

    return v0
.end method

.method public final getFullDescription(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 2

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 25
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->descriptionResId:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->descriptionResId:I

    invoke-interface {p1, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final isReached(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)Z
    .locals 1

    const-string v0, "userAccountLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget p1, p1, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->minThreshold:I

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->minThreshold:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
