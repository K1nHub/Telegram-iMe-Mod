.class public final synthetic Lcom/smedialink/storage/data/mapper/crypto/AirdropMappingKt$WhenMappings;
.super Ljava/lang/Object;
.source "AirdropMapping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/mapper/crypto/AirdropMappingKt;
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

    invoke-static {}, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStatus;->values()[Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStatus;->READY:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStatus;->UNKNOWN:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStatus;->FINISHED:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStatus;->NOT_READY:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/storage/data/mapper/crypto/AirdropMappingKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
