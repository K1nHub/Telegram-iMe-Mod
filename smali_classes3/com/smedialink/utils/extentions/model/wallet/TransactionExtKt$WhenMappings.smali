.class public final synthetic Lcom/smedialink/utils/extentions/model/wallet/TransactionExtKt$WhenMappings;
.super Ljava/lang/Object;
.source "TransactionExt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/utils/extentions/model/wallet/TransactionExtKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->values()[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->IN:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->OUT:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->SELF:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sput-object v0, Lcom/smedialink/utils/extentions/model/wallet/TransactionExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;->values()[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;->UNISWAP_V2:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;->UNISWAP_V3:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;->PANCAKESWAP_V2:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;->ONEINCH:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;->SYMBIOSIS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/utils/extentions/model/wallet/TransactionExtKt$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
