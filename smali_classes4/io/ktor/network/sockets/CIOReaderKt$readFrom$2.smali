.class final Lio/ktor/network/sockets/CIOReaderKt$readFrom$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CIOReader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/sockets/CIOReaderKt;->readFrom(Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/channels/ReadableByteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/nio/ByteBuffer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $count:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $nioChannel:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/nio/channels/ReadableByteChannel;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/network/sockets/CIOReaderKt$readFrom$2;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lio/ktor/network/sockets/CIOReaderKt$readFrom$2;->$nioChannel:Ljava/nio/channels/ReadableByteChannel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 133
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/network/sockets/CIOReaderKt$readFrom$2;->invoke(Ljava/nio/ByteBuffer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/nio/ByteBuffer;)V
    .locals 2

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lio/ktor/network/sockets/CIOReaderKt$readFrom$2;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lio/ktor/network/sockets/CIOReaderKt$readFrom$2;->$nioChannel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return-void
.end method
