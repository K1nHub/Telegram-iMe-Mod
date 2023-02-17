.class final Lcom/github/salomonbrys/kotson/GsonBuilderKt$jsonDeserializer$1;
.super Ljava/lang/Object;
.source "GsonBuilder.kt"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kotson/GsonBuilderKt;->jsonDeserializer(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/JsonDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $deserializer:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$jsonDeserializer$1;->$deserializer:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$jsonDeserializer$1;->$deserializer:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/github/salomonbrys/kotson/DeserializerArg;

    const-string v2, "json"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "type"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/github/salomonbrys/kotson/DeserializerArg$Context;

    const-string v3, "context"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p3}, Lcom/github/salomonbrys/kotson/DeserializerArg$Context;-><init>(Lcom/google/gson/JsonDeserializationContext;)V

    invoke-direct {v1, p1, p2, v2}, Lcom/github/salomonbrys/kotson/DeserializerArg;-><init>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/github/salomonbrys/kotson/DeserializerArg$Context;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
