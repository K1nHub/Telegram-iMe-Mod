.class public final Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;
.super Ljava/lang/Object;
.source "WalletCryptoTokensSettingsTokenState.kt"


# instance fields
.field private isEnabled:Z

.field private position:I

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->token:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->position:I

    .line 6
    iput-boolean p3, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->position:I

    iget v3, p1, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->position:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->isEnabled:Z

    iget-boolean p1, p1, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->isEnabled:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPosition()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->position:I

    return v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->position:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->isEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->isEnabled:Z

    return v0
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->isEnabled:Z

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->position:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WalletCryptoTokensSettingsTokenState(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
