.class public final Lcom/github/salomonbrys/kotson/SerializerArg$Context;
.super Ljava/lang/Object;
.source "GsonBuilder.kt"

# interfaces
.implements Lcom/google/gson/JsonSerializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kotson/SerializerArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Context"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGsonBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GsonBuilder.kt\ncom/github/salomonbrys/kotson/SerializerArg$Context\n+ 2 GsonBuilder.kt\ncom/github/salomonbrys/kotson/GsonBuilderKt\n*L\n1#1,248:1\n61#2:249\n13#2:250\n63#2,4:251\n*E\n*S KotlinDebug\n*F\n+ 1 GsonBuilder.kt\ncom/github/salomonbrys/kotson/SerializerArg$Context\n*L\n76#1:249\n76#1:250\n76#1,4:251\n*E\n"
.end annotation


# instance fields
.field private final gsonContext:Lcom/google/gson/JsonSerializationContext;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonSerializationContext;)V
    .locals 1

    const-string v0, "gsonContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kotson/SerializerArg$Context;->gsonContext:Lcom/google/gson/JsonSerializationContext;

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/github/salomonbrys/kotson/SerializerArg$Context;->gsonContext:Lcom/google/gson/JsonSerializationContext;

    invoke-interface {v0, p1}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
