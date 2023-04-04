.class public final Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;
.super Ljava/lang/Object;
.source "WalletAirdropMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata$Companion;

.field private static final default:Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;


# instance fields
.field private final airdropRequestId:Ljava/lang/String;

.field private final airdropStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

.field private final alertStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

.field private final isRegistered:Z

.field private final tokenValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->Companion:Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata$Companion;

    .line 18
    sget-object v6, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->UNKNOWN:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    .line 20
    sget-object v7, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->UNKNOWN:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    .line 15
    new-instance v0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;-><init>(ZILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;)V

    sput-object v0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->default:Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;)V
    .locals 1

    const-string v0, "airdropRequestId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "airdropStatus"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alertStatus"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->isRegistered:Z

    .line 9
    iput p2, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->tokenValue:I

    .line 10
    iput-object p3, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->airdropRequestId:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->airdropStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    .line 12
    iput-object p5, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->alertStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;
    .locals 1

    .line 7
    sget-object v0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->default:Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;ZILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;ILjava/lang/Object;)Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-boolean p1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->isRegistered:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->tokenValue:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->airdropRequestId:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->airdropStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->alertStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->copy(ZILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;)Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(ZILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;)Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;
    .locals 7

    const-string v0, "airdropRequestId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "airdropStatus"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alertStatus"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;-><init>(ZILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->isRegistered:Z

    iget-boolean v3, p1, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->isRegistered:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->tokenValue:I

    iget v3, p1, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->tokenValue:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->airdropRequestId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->airdropRequestId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->airdropStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->airdropStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->alertStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    iget-object p1, p1, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->alertStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAirdropRequestId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->airdropRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAirdropStatus()Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->airdropStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    return-object v0
.end method

.method public final getAlertStatus()Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->alertStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    return-object v0
.end method

.method public final getTokenValue()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->tokenValue:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->isRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->tokenValue:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->airdropRequestId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->airdropStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->alertStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isRegistered()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->isRegistered:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WalletAirdropMetadata(isRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->isRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tokenValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->tokenValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", airdropRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->airdropRequestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", airdropStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->airdropStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alertStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->alertStatus:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
