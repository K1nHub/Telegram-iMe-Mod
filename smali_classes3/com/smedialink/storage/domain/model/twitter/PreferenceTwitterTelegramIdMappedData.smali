.class public final Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;
.super Ljava/lang/Object;
.source "PreferenceTwitterTelegramIdMappedData.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreferenceTwitterTelegramIdMappedData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferenceTwitterTelegramIdMappedData.kt\ncom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData\n+ 2 GsonExt.kt\ncom/smedialink/storage/data/utils/extentions/GsonExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,34:1\n25#2,2:35\n1#3:37\n*S KotlinDebug\n*F\n+ 1 PreferenceTwitterTelegramIdMappedData.kt\ncom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData\n*L\n16#1:35,2\n*E\n"
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private final preferenceKeyGetter:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;Landroid/content/SharedPreferences;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Landroid/content/SharedPreferences;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceKeyGetter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->gson:Lcom/google/gson/Gson;

    .line 10
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->prefs:Landroid/content/SharedPreferences;

    .line 11
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->preferenceKeyGetter:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private final component1()Lcom/google/gson/Gson;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method private final component2()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private final component3()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->preferenceKeyGetter:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;Lcom/google/gson/Gson;Landroid/content/SharedPreferences;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->gson:Lcom/google/gson/Gson;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->prefs:Landroid/content/SharedPreferences;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->preferenceKeyGetter:Lkotlin/jvm/functions/Function0;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->copy(Lcom/google/gson/Gson;Landroid/content/SharedPreferences;Lkotlin/jvm/functions/Function0;)Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    move-result-object p0

    return-object p0
.end method

.method private final getData()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/twitter/TwitterAccountData;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->preferenceKeyGetter:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "[]"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData$special$$inlined$fromJsonTokenType$1;

    invoke-direct {v2}, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData$special$$inlined$fromJsonTokenType$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final copy(Lcom/google/gson/Gson;Landroid/content/SharedPreferences;Lkotlin/jvm/functions/Function0;)Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Landroid/content/SharedPreferences;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;"
        }
    .end annotation

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceKeyGetter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    invoke-direct {v0, p1, p2, p3}, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;-><init>(Lcom/google/gson/Gson;Landroid/content/SharedPreferences;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->gson:Lcom/google/gson/Gson;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->gson:Lcom/google/gson/Gson;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->prefs:Landroid/content/SharedPreferences;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->preferenceKeyGetter:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->preferenceKeyGetter:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDataByTelegramId(J)Lcom/smedialink/storage/domain/model/twitter/TwitterAccountData;
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/twitter/TwitterAccountData;

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->preferenceKeyGetter:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final put(JLcom/smedialink/storage/domain/model/twitter/TwitterAccountData;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p1, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->preferenceKeyGetter:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final remove(J)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p1, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->preferenceKeyGetter:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferenceTwitterTelegramIdMappedData(gson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prefs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preferenceKeyGetter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->preferenceKeyGetter:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
