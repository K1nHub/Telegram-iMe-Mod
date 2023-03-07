.class public final synthetic Lcom/smedialink/manager/wallet/create/WalletCreateManager$WhenMappings;
.super Ljava/lang/Object;
.source "WalletCreateManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/manager/wallet/create/WalletCreateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->values()[Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->CREATE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->IMPORT:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->RESTORE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
