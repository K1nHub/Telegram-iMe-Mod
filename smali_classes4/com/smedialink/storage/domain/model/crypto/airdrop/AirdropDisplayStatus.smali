.class public final enum Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;
.super Ljava/lang/Enum;
.source "AirdropDisplayStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

.field public static final enum ACCEPTED:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

.field public static final Companion:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus$Companion;

.field public static final enum REJECTED:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

.field public static final enum UNKNOWN:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->ACCEPTED:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->REJECTED:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->UNKNOWN:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    const-string v1, "ACCEPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->ACCEPTED:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    .line 5
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    const-string v1, "REJECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->REJECTED:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    .line 6
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->UNKNOWN:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    invoke-static {}, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->$values()[Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->$VALUES:[Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->Companion:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->$VALUES:[Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    return-object v0
.end method


# virtual methods
.method public final isAccepted()Z
    .locals 1

    .line 9
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->ACCEPTED:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRejected()Z
    .locals 1

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->REJECTED:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUnknown()Z
    .locals 1

    .line 10
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->UNKNOWN:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
