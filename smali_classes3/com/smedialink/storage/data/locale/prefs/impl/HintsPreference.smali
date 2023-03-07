.class public final Lcom/smedialink/storage/data/locale/prefs/impl/HintsPreference;
.super Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;
.source "HintsPreference.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smedialink/storage/domain/gateway/TelegramGateway;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ime_hints_prefs"

    .line 11
    invoke-direct {p0, v0, p2, p1}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;-><init>(Ljava/lang/String;Lcom/smedialink/storage/domain/gateway/TelegramGateway;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onHintShowed(Lcom/smedialink/storage/domain/model/wallet/Hint;)V
    .locals 5

    const-string v0, "hint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/Hint;->getPrefsKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 20
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/Hint;->getPrefsKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public shouldShowHint(Lcom/smedialink/storage/domain/model/wallet/Hint;)Z
    .locals 4

    const-string v0, "hint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/Hint;->getPrefsKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/Hint;->getTimesToShow()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
