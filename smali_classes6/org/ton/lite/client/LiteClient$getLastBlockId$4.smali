.class final Lorg/ton/lite/client/LiteClient$getLastBlockId$4;
.super Lkotlin/jvm/internal/Lambda;
.source "LiteClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/lite/client/LiteClient;->getLastBlockId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic $last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

.field final synthetic $lastUtime:Lkotlinx/datetime/Instant;

.field final synthetic $serverNow:Lkotlinx/datetime/Instant;


# direct methods
.method constructor <init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;)V
    .locals 0

    iput-object p1, p0, Lorg/ton/lite/client/LiteClient$getLastBlockId$4;->$last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iput-object p2, p0, Lorg/ton/lite/client/LiteClient$getLastBlockId$4;->$lastUtime:Lkotlinx/datetime/Instant;

    iput-object p3, p0, Lorg/ton/lite/client/LiteClient$getLastBlockId$4;->$serverNow:Lkotlinx/datetime/Instant;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lorg/ton/lite/client/LiteClient$getLastBlockId$4;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server appears to be out of sync: its newest masterchain block is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/client/LiteClient$getLastBlockId$4;->$last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " created at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/client/LiteClient$getLastBlockId$4;->$lastUtime:Lkotlinx/datetime/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/client/LiteClient$getLastBlockId$4;->$serverNow:Lkotlinx/datetime/Instant;

    iget-object v2, p0, Lorg/ton/lite/client/LiteClient$getLastBlockId$4;->$lastUtime:Lkotlinx/datetime/Instant;

    invoke-virtual {v1, v2}, Lkotlinx/datetime/Instant;->minus-5sfh64U(Lkotlinx/datetime/Instant;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ago according to the server\'s clock)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
