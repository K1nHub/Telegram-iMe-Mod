.class public final Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;
.super Ljava/lang/Object;
.source "BinanceUserInfoMetadata.kt"


# instance fields
.field private final info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    iget-object p1, p1, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinanceUserInfoMetadata(info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
