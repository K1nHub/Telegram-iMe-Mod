.class final Lorg/ton/lite/client/LiteClient$setServerTime$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LiteClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/lite/client/LiteClient;->setServerTime-5sfh64U(I)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $latency:J

.field final synthetic this$0:Lorg/ton/lite/client/LiteClient;


# direct methods
.method constructor <init>(Lorg/ton/lite/client/LiteClient;J)V
    .locals 0

    iput-object p1, p0, Lorg/ton/lite/client/LiteClient$setServerTime$1;->this$0:Lorg/ton/lite/client/LiteClient;

    iput-wide p2, p0, Lorg/ton/lite/client/LiteClient$setServerTime$1;->$latency:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lorg/ton/lite/client/LiteClient$setServerTime$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server time is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/client/LiteClient$setServerTime$1;->this$0:Lorg/ton/lite/client/LiteClient;

    invoke-static {v1}, Lorg/ton/lite/client/LiteClient;->access$getServerTime(Lorg/ton/lite/client/LiteClient;)Lkotlinx/datetime/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (latency "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/ton/lite/client/LiteClient$setServerTime$1;->$latency:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
