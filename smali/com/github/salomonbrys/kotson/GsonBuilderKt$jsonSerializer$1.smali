.class final Lcom/github/salomonbrys/kotson/GsonBuilderKt$jsonSerializer$1;
.super Ljava/lang/Object;
.source "GsonBuilder.kt"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kotson/GsonBuilderKt;->jsonSerializer(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/JsonSerializer;
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
        "Lcom/google/gson/JsonSerializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $serializer:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$jsonSerializer$1;->$serializer:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonSerializationContext;",
            ")",
            "Lcom/google/gson/JsonElement;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$jsonSerializer$1;->$serializer:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/github/salomonbrys/kotson/SerializerArg;

    const-string v2, "src"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "type"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/github/salomonbrys/kotson/SerializerArg$Context;

    const-string v3, "context"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p3}, Lcom/github/salomonbrys/kotson/SerializerArg$Context;-><init>(Lcom/google/gson/JsonSerializationContext;)V

    invoke-direct {v1, p1, p2, v2}, Lcom/github/salomonbrys/kotson/SerializerArg;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/github/salomonbrys/kotson/SerializerArg$Context;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    return-object p1
.end method
