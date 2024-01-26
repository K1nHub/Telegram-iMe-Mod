.class final Lorg/ton/lite/client/LiteClient$setServerVersion$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LiteClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/lite/client/LiteClient;->setServerVersion(IJ)V
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
.field final synthetic $version:I

.field final synthetic this$0:Lorg/ton/lite/client/LiteClient;


# direct methods
.method constructor <init>(ILorg/ton/lite/client/LiteClient;)V
    .locals 0

    iput p1, p0, Lorg/ton/lite/client/LiteClient$setServerVersion$1;->$version:I

    iput-object p2, p0, Lorg/ton/lite/client/LiteClient$setServerVersion$1;->this$0:Lorg/ton/lite/client/LiteClient;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/ton/lite/client/LiteClient$setServerVersion$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server version is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/lite/client/LiteClient$setServerVersion$1;->$version:I

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/client/LiteClient$setServerVersion$1;->this$0:Lorg/ton/lite/client/LiteClient;

    invoke-static {v1}, Lorg/ton/lite/client/LiteClient;->access$getServerVersion(Lorg/ton/lite/client/LiteClient;)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", capabilities "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/client/LiteClient$setServerVersion$1;->this$0:Lorg/ton/lite/client/LiteClient;

    invoke-static {v1}, Lorg/ton/lite/client/LiteClient;->access$getServerCapabilities(Lorg/ton/lite/client/LiteClient;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
