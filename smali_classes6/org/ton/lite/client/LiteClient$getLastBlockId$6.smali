.class final Lorg/ton/lite/client/LiteClient$getLastBlockId$6;
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
.field final synthetic $init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;


# direct methods
.method constructor <init>(Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;)V
    .locals 0

    iput-object p1, p0, Lorg/ton/lite/client/LiteClient$getLastBlockId$6;->$init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 193
    invoke-virtual {p0}, Lorg/ton/lite/client/LiteClient$getLastBlockId$6;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zero state id set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/client/LiteClient$getLastBlockId$6;->$init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
