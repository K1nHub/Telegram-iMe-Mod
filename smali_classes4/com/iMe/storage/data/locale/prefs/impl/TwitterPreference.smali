.class public final Lcom/iMe/storage/data/locale/prefs/impl/TwitterPreference;
.super Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;
.source "TwitterPreference.kt"

# interfaces
.implements Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;


# instance fields
.field private accountsData:Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/gson/Gson;Lcom/iMe/storage/domain/gateway/TelegramGateway;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ime_twitter_prefs"

    .line 13
    invoke-direct {p0, v0, p3, p1}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/gateway/TelegramGateway;Landroid/content/Context;)V

    .line 18
    new-instance p1, Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object p3

    .line 21
    new-instance v0, Lcom/iMe/storage/data/locale/prefs/impl/TwitterPreference$accountsData$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/prefs/impl/TwitterPreference$accountsData$1;-><init>(Lcom/iMe/storage/data/locale/prefs/impl/TwitterPreference;)V

    .line 18
    invoke-direct {p1, p2, p3, v0}, Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;-><init>(Lcom/google/gson/Gson;Landroid/content/SharedPreferences;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/impl/TwitterPreference;->accountsData:Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    return-void
.end method


# virtual methods
.method public getAccountsData()Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/TwitterPreference;->accountsData:Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    return-object v0
.end method
