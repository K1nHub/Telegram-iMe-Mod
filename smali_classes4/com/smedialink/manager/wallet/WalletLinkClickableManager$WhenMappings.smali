.class public final synthetic Lcom/smedialink/manager/wallet/WalletLinkClickableManager$WhenMappings;
.super Ljava/lang/Object;
.source "WalletLinkClickableManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/manager/wallet/WalletLinkClickableManager;
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

    invoke-static {}, Lcom/smedialink/model/wallet/transaction/LinkedTextType;->values()[Lcom/smedialink/model/wallet/transaction/LinkedTextType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/model/wallet/transaction/LinkedTextType;->USER_ID:Lcom/smedialink/model/wallet/transaction/LinkedTextType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/wallet/transaction/LinkedTextType;->ADDRESS:Lcom/smedialink/model/wallet/transaction/LinkedTextType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/wallet/transaction/LinkedTextType;->NOTING:Lcom/smedialink/model/wallet/transaction/LinkedTextType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
