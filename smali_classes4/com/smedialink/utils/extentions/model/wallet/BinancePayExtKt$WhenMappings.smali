.class public final synthetic Lcom/smedialink/utils/extentions/model/wallet/BinancePayExtKt$WhenMappings;
.super Ljava/lang/Object;
.source "BinancePayExt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/utils/extentions/model/wallet/BinancePayExtKt;
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
    .locals 4

    invoke-static {}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->values()[Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->IN:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->OUT:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sput-object v0, Lcom/smedialink/utils/extentions/model/wallet/BinancePayExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->values()[Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->INITIAL:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->PENDING:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->PAID:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/utils/extentions/model/wallet/BinancePayExtKt$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
