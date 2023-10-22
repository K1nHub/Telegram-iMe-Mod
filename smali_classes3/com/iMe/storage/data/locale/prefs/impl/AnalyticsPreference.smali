.class public final Lcom/iMe/storage/data/locale/prefs/impl/AnalyticsPreference;
.super Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;
.source "AnalyticsPreference.kt"

# interfaces
.implements Lcom/iMe/storage/domain/storage/AnalyticsPreferenceHelper;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/gateway/TelegramGateway;Landroid/content/Context;)V
    .locals 1

    const-string v0, "telegramGateway"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ime_analytics"

    .line 11
    invoke-direct {p0, v0, p1, p2}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/gateway/TelegramGateway;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getActiveDesktopUserLastUpdateTime()J
    .locals 4

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "active_desktop_user_last_update_time"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 16
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 15
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOpenAsPremiumUserLastUpdateTime()J
    .locals 4

    .line 29
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "open_as_premium_user_last_update_time"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 30
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 29
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setActiveDesktopUserLastUpdateTime(J)V
    .locals 4

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "active_desktop_user_last_update_time"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 22
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 25
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setOpenAsPremiumUserLastUpdateTime(J)V
    .locals 4

    .line 34
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "open_as_premium_user_last_update_time"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 36
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 39
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
