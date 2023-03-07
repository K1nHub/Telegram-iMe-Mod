.class public final synthetic Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt$WhenMappings;
.super Ljava/lang/Object;
.source "NotificationMapping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;
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

    invoke-static {}, Lcom/smedialink/storage/domain/model/notification/NotificationType;->values()[Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->INCOMING_CRYPTO_TRANSFER:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->OUTGOING_CRYPTO_TRANSFER:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->INCOMING_DONATION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->OUTGOING_DONATION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->SIMPLEX_PAYMENT_REQUEST_EVENT:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->REQUEST_BINANCE_PAY_TRANSACTION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->INCOMING_BINANCE_PAY_TRANSACTION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->CANCEL_TRANSACTION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->APPROVE_CRYPTO:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->STAKING_SAFE_WITHDRAWAL_STARTED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->STAKING_SAFE_WITHDRAWAL_FINISHED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->STAKING_STARTED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->STAKING_FINISHED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->UNSUPPORTED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
