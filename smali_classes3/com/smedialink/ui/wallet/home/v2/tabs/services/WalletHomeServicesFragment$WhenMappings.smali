.class public final synthetic Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$WhenMappings;
.super Ljava/lang/Object;
.source "WalletHomeServicesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;
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

    invoke-static {}, Lcom/smedialink/model/wallet/home/ServicesCategory;->values()[Lcom/smedialink/model/wallet/home/ServicesCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/model/wallet/home/ServicesCategory;->CHANNELS:Lcom/smedialink/model/wallet/home/ServicesCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/wallet/home/ServicesCategory;->STAKING:Lcom/smedialink/model/wallet/home/ServicesCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/wallet/home/ServicesCategory;->ADS:Lcom/smedialink/model/wallet/home/ServicesCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/wallet/home/ServicesCategory;->NEUROBOTS:Lcom/smedialink/model/wallet/home/ServicesCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/wallet/home/ServicesCategory;->PREMIUM:Lcom/smedialink/model/wallet/home/ServicesCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
