.class final Lkotlinx/serialization/internal/KTypeWrapper;
.super Ljava/lang/Object;
.source "Caching.kt"

# interfaces
.implements Lkotlin/reflect/KType;


# instance fields
.field private final origin:Lkotlin/reflect/KType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KType;)V
    .locals 1

    const-string/jumbo v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lkotlin/reflect/KType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 170
    :cond_0
    iget-object v1, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lkotlin/reflect/KType;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 172
    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/KTypeWrapper;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v1

    .line 173
    instance-of v2, v1, Lkotlin/reflect/KClass;

    if-eqz v2, :cond_5

    .line 174
    instance-of v2, p1, Lkotlin/reflect/KType;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast p1, Lkotlin/reflect/KType;

    goto :goto_0

    :cond_2
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_5

    .line 175
    instance-of p1, v3, Lkotlin/reflect/KClass;

    if-nez p1, :cond_4

    goto :goto_1

    .line 178
    :cond_4
    check-cast v1, Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    check-cast v3, Lkotlin/reflect/KClass;

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v0
.end method

.method public getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lkotlin/reflect/KType;

    invoke-interface {v0}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClassifier()Lkotlin/reflect/KClassifier;
    .locals 1

    .line 164
    iget-object v0, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lkotlin/reflect/KType;

    invoke-interface {v0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 185
    iget-object v0, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lkotlin/reflect/KType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isMarkedNullable()Z
    .locals 1

    .line 166
    iget-object v0, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lkotlin/reflect/KType;

    invoke-interface {v0}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KTypeWrapper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lkotlin/reflect/KType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
