.class public final synthetic Lcom/smedialink/storage/data/repository/crypto/nft/avatar/NftAvatarRepositoryImpl$WhenMappings;
.super Ljava/lang/Object;
.source "NftAvatarRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/repository/crypto/nft/avatar/NftAvatarRepositoryImpl;
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

    :try_start_0
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->POLYGON:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-object v0, Lcom/smedialink/storage/data/repository/crypto/nft/avatar/NftAvatarRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
