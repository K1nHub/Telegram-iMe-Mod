.class public final synthetic Lcom/smedialink/storage/common/AppConfiguration$Crypto$WhenMappings;
.super Ljava/lang/Object;
.source "AppConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/common/AppConfiguration$Crypto;
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

    invoke-static {}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->values()[Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->ETHEREUM:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->POLYGON:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->FANTOM:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->THE_OPEN_NETWORK:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/storage/common/AppConfiguration$Crypto$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
