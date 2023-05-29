.class public final Lcom/iMe/feature/socialMedias/auth/SocialAuthResultMapperKt;
.super Ljava/lang/Object;
.source "SocialAuthResultMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSocialAuthResultMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SocialAuthResultMapper.kt\ncom/iMe/feature/socialMedias/auth/SocialAuthResultMapperKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 GsonExt.kt\ncom/iMe/storage/data/utils/extentions/GsonExtKt\n*L\n1#1,42:1\n1271#2,2:43\n1285#2,4:45\n14#3,8:49\n14#3,8:57\n*S KotlinDebug\n*F\n+ 1 SocialAuthResultMapper.kt\ncom/iMe/feature/socialMedias/auth/SocialAuthResultMapperKt\n*L\n10#1:43,2\n10#1:45,4\n12#1:49,8\n13#1:57,8\n*E\n"
.end annotation


# direct methods
.method public static final toAuthResult(Landroid/net/Uri;)Lcom/iMe/model/twitter/SocialAuthResult;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string v1, "currentUri.queryParameterNames"

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

    .line 10
    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    .line 1286
    :cond_0
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 12
    sget-object v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->FAIL:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    invoke-virtual {v0}, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object p0

    .line 20
    invoke-virtual {p0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/iMe/feature/socialMedias/auth/SocialAuthResultMapperKt$toAuthResult$$inlined$toDataClass$default$1;

    invoke-direct {v1}, Lcom/iMe/feature/socialMedias/auth/SocialAuthResultMapperKt$toAuthResult$$inlined$toDataClass$default$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 15
    check-cast p0, Lcom/iMe/model/twitter/SocialAuthResult;

    goto :goto_1

    .line 13
    :cond_2
    sget-object v0, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->SUCCESS:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    invoke-virtual {v0}, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 14
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object p0

    .line 20
    invoke-virtual {p0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/iMe/feature/socialMedias/auth/SocialAuthResultMapperKt$toAuthResult$$inlined$toDataClass$default$2;

    invoke-direct {v1}, Lcom/iMe/feature/socialMedias/auth/SocialAuthResultMapperKt$toAuthResult$$inlined$toDataClass$default$2;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 15
    check-cast p0, Lcom/iMe/model/twitter/SocialAuthResult;

    goto :goto_1

    .line 14
    :cond_3
    new-instance p0, Lcom/iMe/model/twitter/SocialAuthResult$Failure;

    const-string v0, "ProcessAuthResult failed"

    invoke-direct {p0, v0}, Lcom/iMe/model/twitter/SocialAuthResult$Failure;-><init>(Ljava/lang/String;)V

    .line 18
    :goto_1
    instance-of v0, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;

    invoke-virtual {p0}, Lcom/iMe/model/twitter/SocialAuthResult$Success;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->ACTIVE:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    invoke-virtual {v1}, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/iMe/model/twitter/SocialAuthResult$Success;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    .line 20
    :cond_4
    sget-object v1, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->VERIFICATION:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    invoke-virtual {v1}, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/iMe/model/twitter/SocialAuthResult$Verification;

    invoke-virtual {p0}, Lcom/iMe/model/twitter/SocialAuthResult$Success;->getSocialId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/twitter/SocialAuthResult$Verification;-><init>(J)V

    goto :goto_2

    .line 21
    :cond_5
    sget-object v1, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->VALIDATION:Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;

    invoke-virtual {v1}, Lcom/iMe/feature/socialMedias/auth/SocialAuthStatus;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/iMe/model/twitter/SocialAuthResult$Verification;

    invoke-virtual {p0}, Lcom/iMe/model/twitter/SocialAuthResult$Success;->getSocialId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/twitter/SocialAuthResult$Verification;-><init>(J)V

    goto :goto_2

    .line 22
    :cond_6
    new-instance p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/iMe/model/twitter/SocialAuthResult$Success;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    .line 24
    :cond_7
    instance-of v0, p0, Lcom/iMe/model/twitter/SocialAuthResult$Failure;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/iMe/model/twitter/SocialAuthResult$Failure;

    check-cast p0, Lcom/iMe/model/twitter/SocialAuthResult$Failure;

    invoke-virtual {p0}, Lcom/iMe/model/twitter/SocialAuthResult$Failure;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/iMe/model/twitter/SocialAuthResult$Failure;-><init>(Ljava/lang/String;)V

    :goto_2
    move-object p0, v0

    goto :goto_3

    .line 25
    :cond_8
    sget-object p0, Lcom/iMe/model/twitter/SocialAuthResult$Cancelled;->INSTANCE:Lcom/iMe/model/twitter/SocialAuthResult$Cancelled;

    .line 28
    :goto_3
    instance-of v0, p0, Lcom/iMe/model/twitter/SocialAuthResult$Failure;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lcom/iMe/model/twitter/SocialAuthResult$Failure;

    invoke-virtual {v0}, Lcom/iMe/model/twitter/SocialAuthResult$Failure;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/data/network/handlers/model/GlobalApiErrorCode;->NO_OAUTH_ACCESS_GRANTED_ERROR:Lcom/iMe/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 29
    sget-object p0, Lcom/iMe/model/twitter/SocialAuthResult$Cancelled;->INSTANCE:Lcom/iMe/model/twitter/SocialAuthResult$Cancelled;

    :cond_9
    return-object p0
.end method
