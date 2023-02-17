.class public final Lcom/github/salomonbrys/kotson/GsonBuilderKt;
.super Ljava/lang/Object;
.source "GsonBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGsonBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GsonBuilder.kt\ncom/github/salomonbrys/kotson/GsonBuilderKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,248:1\n13#1:264\n61#1:265\n13#1:266\n63#1,4:267\n135#1:271\n61#1:272\n13#1:273\n63#1,4:274\n135#1:278\n61#1:279\n13#1:280\n63#1,4:281\n61#1:285\n13#1:286\n63#1,4:287\n61#1:291\n13#1:292\n63#1,4:293\n9461#2,2:249\n1037#2,2:251\n9463#2:253\n7460#2:254\n7777#2,3:255\n1204#3:258\n1274#3,3:259\n40#4,2:262\n*E\n*S KotlinDebug\n*F\n+ 1 GsonBuilder.kt\ncom/github/salomonbrys/kotson/GsonBuilderKt\n*L\n61#1:264\n135#1:265\n135#1:266\n135#1,4:267\n137#1:271\n137#1:272\n137#1:273\n137#1,4:274\n139#1:278\n139#1:279\n139#1:280\n139#1,4:281\n220#1:285\n220#1:286\n220#1,4:287\n229#1:291\n229#1:292\n229#1,4:293\n21#1,2:249\n21#1,2:251\n21#1:253\n50#1:254\n50#1,3:255\n51#1:258\n51#1,3:259\n52#1,2:262\n*E\n"
.end annotation


# direct methods
.method public static final isWildcard(Ljava/lang/reflect/ParameterizedType;)Z
    .locals 13

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 17
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v1, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 18
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 20
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-eqz v4, :cond_a

    check-cast v4, Ljava/lang/Class;

    .line 21
    invoke-virtual {v4}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 250
    :goto_0
    array-length v7, v4

    const/4 v8, 0x1

    if-ge v5, v7, :cond_5

    aget-object v7, v4, v5

    add-int/lit8 v9, v6, 0x1

    .line 22
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v10

    aget-object v6, v10, v6

    .line 24
    instance-of v10, v6, Ljava/lang/reflect/WildcardType;

    if-eqz v10, :cond_4

    .line 25
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v10, 0x0

    .line 251
    :goto_1
    array-length v11, v7

    if-ge v10, v11, :cond_1

    aget-object v11, v7, v10

    .line 25
    move-object v12, v6

    check-cast v12, Ljava/lang/reflect/WildcardType;

    invoke-interface {v12}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_3

    .line 27
    const-class v6, Ljava/lang/Object;

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 28
    iput-boolean v8, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_3

    .line 30
    :cond_2
    iput-boolean v8, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_3

    .line 33
    :cond_3
    iput-boolean v8, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_3

    .line 36
    :cond_4
    iput-boolean v8, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_0

    .line 40
    :cond_5
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_7

    iget-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v4, :cond_6

    goto :goto_4

    .line 41
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either none or all type parameters can be wildcard in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    if-nez v0, :cond_8

    .line 43
    iget-boolean p0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_9

    iget-boolean p0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p0, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    return v1

    .line 20
    :cond_a
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final jsonDeserializer(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/DeserializerArg;",
            "+TT;>;)",
            "Lcom/google/gson/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$jsonDeserializer$1;

    invoke-direct {v0, p0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$jsonDeserializer$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static final jsonSerializer(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/SerializerArg<",
            "TT;>;+",
            "Lcom/google/gson/JsonElement;",
            ">;)",
            "Lcom/google/gson/JsonSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$jsonSerializer$1;

    invoke-direct {v0, p0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$jsonSerializer$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static final removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 6

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_4

    .line 49
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 255
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    .line 50
    instance-of v5, v4, Ljava/lang/reflect/WildcardType;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/reflect/WildcardType;

    invoke-interface {v4}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v2

    :cond_0
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 260
    check-cast v2, Ljava/lang/reflect/Type;

    const-string v3, "it"

    .line 51
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->removeTypeWildcards(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 49
    check-cast v0, [Ljava/lang/reflect/Type;

    .line 53
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    invoke-static {p0, v0}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "TypeToken.getParameteriz\u2026rawType, *arguments).type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 263
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object p0
.end method
