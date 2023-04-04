.class public final Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "TwitterAuthPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/twitter/auth/TwitterAuthView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterAuthPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterAuthPresenter.kt\ncom/iMe/ui/twitter/auth/TwitterAuthPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 GsonExt.kt\ncom/iMe/storage/data/utils/extentions/GsonExtKt\n*L\n1#1,42:1\n1271#2,2:43\n1285#2,4:45\n14#3,8:49\n14#3,8:57\n*S KotlinDebug\n*F\n+ 1 TwitterAuthPresenter.kt\ncom/iMe/ui/twitter/auth/TwitterAuthPresenter\n*L\n22#1:43,2\n22#1:45,4\n24#1:49,8\n25#1:57,8\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-void
.end method


# virtual methods
.method public final isAuthResultUrl(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "https://stub/"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 19
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final processAuthResult(Landroid/net/Uri;)V
    .locals 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string v1, "url.queryParameterNames"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1271
    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1285
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1286
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 22
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    .line 1286
    :cond_0
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x6f4abffd

    if-eq v0, v2, :cond_4

    const v2, 0x2fd71e

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "fail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter$processAuthResult$$inlined$toDataClass$default$2;

    invoke-direct {v1}, Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter$processAuthResult$$inlined$toDataClass$default$2;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Lcom/iMe/model/twitter/TwitterAuthResult;

    goto :goto_2

    :cond_4
    const-string v0, "success"

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter$processAuthResult$$inlined$toDataClass$default$1;

    invoke-direct {v1}, Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter$processAuthResult$$inlined$toDataClass$default$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Lcom/iMe/model/twitter/TwitterAuthResult;

    goto :goto_2

    .line 26
    :cond_5
    :goto_1
    new-instance p1, Lcom/iMe/model/twitter/TwitterAuthResult$Failure;

    iget-object v0, p0, Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->common_error_unexpected:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/iMe/model/twitter/TwitterAuthResult$Failure;-><init>(Ljava/lang/String;)V

    .line 28
    :goto_2
    instance-of v0, p1, Lcom/iMe/model/twitter/TwitterAuthResult$Failure;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/iMe/model/twitter/TwitterAuthResult$Failure;

    invoke-virtual {v0}, Lcom/iMe/model/twitter/TwitterAuthResult$Failure;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;->NO_OAUTH_ACCESS_GRANTED_ERROR:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    sget-object p1, Lcom/iMe/model/twitter/TwitterAuthResult$Cancelled;->INSTANCE:Lcom/iMe/model/twitter/TwitterAuthResult$Cancelled;

    .line 31
    :cond_6
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/twitter/auth/TwitterAuthView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/twitter/auth/TwitterAuthView;->onAuthResult(Lcom/iMe/model/twitter/TwitterAuthResult;)V

    return-void
.end method
