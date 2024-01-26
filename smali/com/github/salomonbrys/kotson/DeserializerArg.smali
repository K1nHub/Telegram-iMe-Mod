.class public final Lcom/github/salomonbrys/kotson/DeserializerArg;
.super Ljava/lang/Object;
.source "GsonBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/salomonbrys/kotson/DeserializerArg$Context;
    }
.end annotation


# instance fields
.field private final context:Lcom/github/salomonbrys/kotson/DeserializerArg$Context;

.field private final json:Lcom/google/gson/JsonElement;

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/github/salomonbrys/kotson/DeserializerArg$Context;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kotson/DeserializerArg;->json:Lcom/google/gson/JsonElement;

    iput-object p2, p0, Lcom/github/salomonbrys/kotson/DeserializerArg;->type:Ljava/lang/reflect/Type;

    iput-object p3, p0, Lcom/github/salomonbrys/kotson/DeserializerArg;->context:Lcom/github/salomonbrys/kotson/DeserializerArg$Context;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/github/salomonbrys/kotson/DeserializerArg;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/github/salomonbrys/kotson/DeserializerArg;

    iget-object v0, p0, Lcom/github/salomonbrys/kotson/DeserializerArg;->json:Lcom/google/gson/JsonElement;

    iget-object v1, p1, Lcom/github/salomonbrys/kotson/DeserializerArg;->json:Lcom/google/gson/JsonElement;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/salomonbrys/kotson/DeserializerArg;->type:Ljava/lang/reflect/Type;

    iget-object v1, p1, Lcom/github/salomonbrys/kotson/DeserializerArg;->type:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/salomonbrys/kotson/DeserializerArg;->context:Lcom/github/salomonbrys/kotson/DeserializerArg$Context;

    iget-object p1, p1, Lcom/github/salomonbrys/kotson/DeserializerArg;->context:Lcom/github/salomonbrys/kotson/DeserializerArg$Context;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getContext()Lcom/github/salomonbrys/kotson/DeserializerArg$Context;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/DeserializerArg;->context:Lcom/github/salomonbrys/kotson/DeserializerArg$Context;

    return-object v0
.end method

.method public final getJson()Lcom/google/gson/JsonElement;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/DeserializerArg;->json:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/github/salomonbrys/kotson/DeserializerArg;->json:Lcom/google/gson/JsonElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/github/salomonbrys/kotson/DeserializerArg;->type:Ljava/lang/reflect/Type;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/github/salomonbrys/kotson/DeserializerArg;->context:Lcom/github/salomonbrys/kotson/DeserializerArg$Context;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeserializerArg(json="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/salomonbrys/kotson/DeserializerArg;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/salomonbrys/kotson/DeserializerArg;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/salomonbrys/kotson/DeserializerArg;->context:Lcom/github/salomonbrys/kotson/DeserializerArg$Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
