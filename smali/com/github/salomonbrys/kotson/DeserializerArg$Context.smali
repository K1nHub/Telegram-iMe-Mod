.class public final Lcom/github/salomonbrys/kotson/DeserializerArg$Context;
.super Ljava/lang/Object;
.source "GsonBuilder.kt"

# interfaces
.implements Lcom/google/gson/JsonDeserializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kotson/DeserializerArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Context"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGsonBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GsonBuilder.kt\ncom/github/salomonbrys/kotson/DeserializerArg$Context\n+ 2 GsonBuilder.kt\ncom/github/salomonbrys/kotson/GsonBuilderKt\n*L\n1#1,248:1\n61#2:249\n13#2:250\n63#2,4:251\n*E\n*S KotlinDebug\n*F\n+ 1 GsonBuilder.kt\ncom/github/salomonbrys/kotson/DeserializerArg$Context\n*L\n86#1:249\n86#1:250\n86#1,4:251\n*E\n"
.end annotation


# instance fields
.field private final gsonContext:Lcom/google/gson/JsonDeserializationContext;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonDeserializationContext;)V
    .locals 1

    const-string v0, "gsonContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kotson/DeserializerArg$Context;->gsonContext:Lcom/google/gson/JsonDeserializationContext;

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/salomonbrys/kotson/DeserializerArg$Context;->gsonContext:Lcom/google/gson/JsonDeserializationContext;

    invoke-interface {v0, p1, p2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getGsonContext()Lcom/google/gson/JsonDeserializationContext;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/DeserializerArg$Context;->gsonContext:Lcom/google/gson/JsonDeserializationContext;

    return-object v0
.end method
