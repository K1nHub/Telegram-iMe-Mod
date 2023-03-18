.class public abstract Lcom/smedialink/storage/domain/model/wallet/Hint;
.super Ljava/lang/Object;
.source "Hint.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork;,
        Lcom/smedialink/storage/domain/model/wallet/Hint$Companion;,
        Lcom/smedialink/storage/domain/model/wallet/Hint$StakingInfo;
    }
.end annotation


# static fields
.field private static final CHANGE_NETWORK_PREFIX:Ljava/lang/String; = "change_network_"

.field public static final Companion:Lcom/smedialink/storage/domain/model/wallet/Hint$Companion;

.field public static final KEY_CHANGE_NETWORK_CRYPTO_HOME:Ljava/lang/String; = "change_network_crypto_home"

.field public static final KEY_CHANGE_NETWORK_SWAP:Ljava/lang/String; = "change_network_swap"

.field public static final KEY_CHANGE_NETWORK_TRANSACTIONS:Ljava/lang/String; = "change_network_transactions"

.field public static final KEY_CHANGE_NETWORK_WALLET_CONNECT:Ljava/lang/String; = "change_network_wallet_connect"

.field public static final KEY_STAKING_INFO:Ljava/lang/String; = "staking_info"


# instance fields
.field private final prefsKey:Ljava/lang/String;

.field private final timesToShow:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/Hint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/Hint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/Hint;->Companion:Lcom/smedialink/storage/domain/model/wallet/Hint$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/wallet/Hint;->prefsKey:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/smedialink/storage/domain/model/wallet/Hint;->timesToShow:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/smedialink/storage/domain/model/wallet/Hint;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getPrefsKey()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/Hint;->prefsKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimesToShow()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/Hint;->timesToShow:I

    return v0
.end method
