.class public final enum Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;
.super Ljava/lang/Enum;
.source "AirdropStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

.field public static final Companion:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus$Companion;

.field public static final enum FINISHED:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

.field public static final enum NOT_READY:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

.field public static final enum READY:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

.field public static final enum UNKNOWN:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->UNKNOWN:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->READY:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->NOT_READY:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->FINISHED:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->UNKNOWN:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    .line 5
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    const-string v1, "READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->READY:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    .line 6
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    const-string v1, "NOT_READY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->NOT_READY:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    const-string v1, "FINISHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->FINISHED:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->$values()[Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->Companion:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    return-object v0
.end method
