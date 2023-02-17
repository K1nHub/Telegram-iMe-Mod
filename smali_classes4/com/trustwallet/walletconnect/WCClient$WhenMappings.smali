.class public final synthetic Lcom/trustwallet/walletconnect/WCClient$WhenMappings;
.super Ljava/lang/Object;
.source "WCClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustwallet/walletconnect/WCClient;
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

    invoke-static {}, Lcom/trustwallet/walletconnect/models/WCMethod;->values()[Lcom/trustwallet/walletconnect/models/WCMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->SESSION_REQUEST:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->SESSION_UPDATE:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SIGN:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_PERSONAL_SIGN:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SIGN_TYPE_DATA:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SIGN_TYPE_DATA_V4:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SIGN_TRANSACTION:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SEND_TRANSACTION:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->BNB_SIGN:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->BNB_TRANSACTION_CONFIRM:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->GET_ACCOUNTS:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->SIGN_TRANSACTION:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->WALLET_SWITCH_NETWORK:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->WALLET_ADD_NETWORK:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sput-object v0, Lcom/trustwallet/walletconnect/WCClient$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
