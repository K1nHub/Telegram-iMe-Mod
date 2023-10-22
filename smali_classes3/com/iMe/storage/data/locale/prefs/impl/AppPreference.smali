.class public final Lcom/iMe/storage/data/locale/prefs/impl/AppPreference;
.super Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;
.source "AppPreference.kt"

# interfaces
.implements Lcom/iMe/storage/domain/storage/PreferenceHelper;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppPreference.kt\ncom/iMe/storage/data/locale/prefs/impl/AppPreference\n+ 2 GsonExt.kt\ncom/iMe/storage/data/utils/extentions/GsonExtKt\n*L\n1#1,139:1\n25#2,2:140\n25#2,2:142\n*S KotlinDebug\n*F\n+ 1 AppPreference.kt\ncom/iMe/storage/data/locale/prefs/impl/AppPreference\n*L\n89#1:140,2\n101#1:142,2\n*E\n"
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/gateway/TelegramGateway;Landroid/content/Context;Lcom/google/gson/Gson;)V
    .locals 1

    const-string v0, "telegramGateway"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ime_app_prefs"

    .line 19
    invoke-direct {p0, v0, p1, p2}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/gateway/TelegramGateway;Landroid/content/Context;)V

    .line 18
    iput-object p3, p0, Lcom/iMe/storage/data/locale/prefs/impl/AppPreference;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public getCatalogLanguagesLastUpdateTime()J
    .locals 4

    .line 65
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "catalog_languages_last_update_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCatalogSelectedLanguageId()Ljava/lang/Long;
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "catalog_selected_language_id"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEnvironment()Lcom/iMe/storage/domain/model/common/Environment;
    .locals 4

    .line 24
    sget-object v0, Lcom/iMe/storage/domain/model/common/Environment;->Companion:Lcom/iMe/storage/domain/model/common/Environment$Companion;

    .line 25
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "app_environment"

    const-string v3, "PRODUCTION"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 24
    :cond_0
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/common/Environment$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/common/Environment;

    move-result-object v0

    return-object v0
.end method

.method public getKiklikoUUID()Ljava/lang/String;
    .locals 5

    .line 131
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "kikliko_uuid"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->generateUuid()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method

.method public getLastMarkActivityTime()J
    .locals 4

    .line 113
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_mark_activity_time"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPushAllowanceToken()Ljava/lang/String;
    .locals 4

    .line 44
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "push_allowance_token"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 45
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 44
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 3

    .line 35
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "push_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public getRequestAppReviewMetadata()Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/AppPreference;->gson:Lcom/google/gson/Gson;

    .line 90
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "app_review_metadata"

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/iMe/storage/data/locale/prefs/impl/AppPreference$special$$inlined$fromJsonTokenType$1;

    invoke-direct {v2}, Lcom/iMe/storage/data/locale/prefs/impl/AppPreference$special$$inlined$fromJsonTokenType$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;

    return-object v0
.end method

.method public getRequestAppUpdateMetadata()Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/AppPreference;->gson:Lcom/google/gson/Gson;

    .line 102
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "app_update_metadata"

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/iMe/storage/data/locale/prefs/impl/AppPreference$special$$inlined$fromJsonTokenType$2;

    invoke-direct {v2}, Lcom/iMe/storage/data/locale/prefs/impl/AppPreference$special$$inlined$fromJsonTokenType$2;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;

    return-object v0
.end method

.method public isNewsBotActivated()Z
    .locals 4

    .line 122
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "news_bot_activated"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPushTokenRegistered()Z
    .locals 4

    .line 54
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_push_token_registered"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 55
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 54
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setCatalogLanguagesLastUpdateTime(J)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "catalog_languages_last_update_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCatalogSelectedLanguageId(Ljava/lang/Long;)V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    const-string p1, "catalog_selected_language_id"

    .line 82
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 85
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEnvironment(Lcom/iMe/storage/domain/model/common/Environment;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_environment"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setLastMarkActivityTime(J)V
    .locals 4

    .line 115
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_mark_activity_time"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 116
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 118
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNewsBotActivated(Z)V
    .locals 4

    .line 124
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "news_bot_activated"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 125
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 127
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPushAllowanceToken(Ljava/lang/String;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_allowance_token"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 50
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPushToken(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPushTokenRegistered(Z)V
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_push_token_registered"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 60
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 61
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRequestAppReviewMetadata(Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/impl/AppPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_review_metadata"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 97
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRequestAppUpdateMetadata(Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/impl/AppPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_update_metadata"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 109
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
