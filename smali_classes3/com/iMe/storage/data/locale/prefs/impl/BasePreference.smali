.class public abstract Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;
.super Ljava/lang/Object;
.source "BasePreference.kt"

# interfaces
.implements Lcom/iMe/storage/domain/storage/BasePreferenceHelper;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasePreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasePreference.kt\ncom/iMe/storage/data/locale/prefs/impl/BasePreference\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final mPref$delegate:Lkotlin/Lazy;

.field private final prefName:Ljava/lang/String;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

.field private tempOneActionUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iMe/storage/domain/gateway/TelegramGateway;Landroid/content/Context;)V
    .locals 1

    const-string v0, "prefName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->prefName:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 12
    iput-object p3, p0, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->context:Landroid/content/Context;

    const-string p1, ""

    .line 16
    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->tempOneActionUserId:Ljava/lang/String;

    .line 19
    new-instance p1, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference$mPref$2;

    invoke-direct {p1, p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference$mPref$2;-><init>(Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->mPref$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;)Landroid/content/Context;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getPrefName$p(Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->prefName:Ljava/lang/String;

    return-object p0
.end method

.method private final getActualTgAccount()Ljava/lang/String;
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getTempOneActionUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected final getMPref()Landroid/content/SharedPreferences;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->mPref$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-mPref>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getTempOneActionUserId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->tempOneActionUserId:Ljava/lang/String;

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTempOneActionUserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->tempOneActionUserId:Ljava/lang/String;

    return-void
.end method

.method public withPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withTgAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getActualTgAccount()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->withPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
