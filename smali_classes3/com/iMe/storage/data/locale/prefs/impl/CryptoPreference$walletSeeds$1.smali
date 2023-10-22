.class final Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$walletSeeds$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoPreference.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;-><init>(Landroid/content/Context;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/google/gson/Gson;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$walletSeeds$1;->this$0:Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$walletSeeds$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$walletSeeds$1;->this$0:Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;

    const-string v1, "wallet_seed"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
