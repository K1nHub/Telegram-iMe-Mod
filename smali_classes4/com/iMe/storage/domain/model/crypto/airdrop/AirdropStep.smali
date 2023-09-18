.class public final enum Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;
.super Ljava/lang/Enum;
.source "AirdropStep.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

.field public static final enum CLAIM:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

.field public static final enum CREATE_WALLET:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

.field public static final Companion:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep$Companion;

.field public static final enum INTRO:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->INTRO:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->CREATE_WALLET:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->CLAIM:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    const-string v1, "INTRO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->INTRO:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    .line 5
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    const-string v1, "CREATE_WALLET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->CREATE_WALLET:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    .line 6
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    const-string v1, "CLAIM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->CLAIM:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->$values()[Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->Companion:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    return-object v0
.end method
