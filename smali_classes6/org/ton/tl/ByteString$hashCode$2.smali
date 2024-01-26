.class final Lorg/ton/tl/ByteString$hashCode$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ByteString.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/tl/ByteString;-><init>([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ton/tl/ByteString;


# direct methods
.method constructor <init>(Lorg/ton/tl/ByteString;)V
    .locals 0

    iput-object p1, p0, Lorg/ton/tl/ByteString$hashCode$2;->this$0:Lorg/ton/tl/ByteString;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/ton/tl/ByteString$hashCode$2;->this$0:Lorg/ton/tl/ByteString;

    invoke-virtual {v0}, Lorg/ton/tl/ByteString;->getData$ton_kotlin_tl()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/ton/tl/ByteString$hashCode$2;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
