.class public final Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType$Companion;
.super Ljava/lang/Object;
.source "CryptoBoxOrderType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoBoxOrderType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoBoxOrderType.kt\ncom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,19:1\n1#2:20\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    sget-object v3, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->NEWEST:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    :cond_2
    return-object v3
.end method

.method public final mapByOrdinal(I)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;
    .locals 6

    .line 17
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

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

    sget-object v4, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->NEWEST:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    :cond_3
    return-object v4
.end method
