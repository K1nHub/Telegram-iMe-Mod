.class public final synthetic Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSourceFactory$WhenMappings;
.super Ljava/lang/Object;
.source "WalletApproveDataSourceFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSourceFactory;
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

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->values()[Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-object v0, Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSourceFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
