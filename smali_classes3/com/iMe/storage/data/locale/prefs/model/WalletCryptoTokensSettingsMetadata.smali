.class public final Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;
.super Ljava/lang/Object;
.source "WalletCryptoTokensSettingsMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion;


# instance fields
.field private states:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->Companion:Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "states"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->states:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 12
    instance-of v0, p1, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->states:Ljava/util/List;

    check-cast p1, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    iget-object p1, p1, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->states:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->states:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->states:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setStates(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->states:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WalletCryptoTokensSettingsMetadata(states="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->states:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method