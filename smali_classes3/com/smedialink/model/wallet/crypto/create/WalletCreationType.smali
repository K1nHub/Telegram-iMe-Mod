.class public final enum Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;
.super Ljava/lang/Enum;
.source "WalletCreationType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

.field public static final enum CREATE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

.field public static final Companion:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Companion;

.field public static final enum IMPORT:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

.field public static final enum RESTORE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    sget-object v1, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->CREATE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->IMPORT:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->RESTORE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    const-string v1, "CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->CREATE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    new-instance v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    const-string v1, "IMPORT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->IMPORT:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    new-instance v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    const-string v1, "RESTORE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->RESTORE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    invoke-static {}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->$values()[Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    move-result-object v0

    sput-object v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->$VALUES:[Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    new-instance v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->Companion:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;
    .locals 1

    const-class v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;
    .locals 1

    sget-object v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->$VALUES:[Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    return-object v0
.end method
