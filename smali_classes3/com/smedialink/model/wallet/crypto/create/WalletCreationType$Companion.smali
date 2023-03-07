.class public final Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Companion;
.super Ljava/lang/Object;
.source "WalletCreationType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletCreationType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletCreationType.kt\ncom/smedialink/model/wallet/crypto/create/WalletCreationType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,10:1\n1#2:11\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getByIndex(I)Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;
    .locals 6

    .line 8
    invoke-static {}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->values()[Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    sget-object v4, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->CREATE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    :cond_3
    return-object v4
.end method
