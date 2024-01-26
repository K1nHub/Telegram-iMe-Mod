.class final Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CIOWriter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/LookAheadSuspendSession;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCIOWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CIOWriter.kt\nio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1\n+ 2 Utils.kt\nio/ktor/network/util/UtilsKt\n*L\n1#1,135:1\n82#2,10:136\n*S KotlinDebug\n*F\n+ 1 CIOWriter.kt\nio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1\n*L\n106#1:136,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.sockets.CIOWriterKt$attachForWritingDirectImpl$1$1"
    f = "CIOWriter.kt"
    l = {
        0x63,
        0x6f,
        0x6f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$reader:Lio/ktor/utils/io/ReaderScope;

.field final synthetic $channel:Lio/ktor/utils/io/ByteChannel;

.field final synthetic $nioChannel:Ljava/nio/channels/WritableByteChannel;

.field final synthetic $selectable:Lio/ktor/network/selector/Selectable;

.field final synthetic $selector:Lio/ktor/network/selector/SelectorManager;

.field final synthetic $socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;Lio/ktor/utils/io/ReaderScope;Lio/ktor/utils/io/ByteChannel;Ljava/nio/channels/WritableByteChannel;Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectorManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
            "Lio/ktor/utils/io/ReaderScope;",
            "Lio/ktor/utils/io/ByteChannel;",
            "Ljava/nio/channels/WritableByteChannel;",
            "Lio/ktor/network/selector/Selectable;",
            "Lio/ktor/network/selector/SelectorManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    iput-object p2, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$$this$reader:Lio/ktor/utils/io/ReaderScope;

    iput-object p3, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    iput-object p4, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    iput-object p5, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$selectable:Lio/ktor/network/selector/Selectable;

    iput-object p6, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;

    iget-object v1, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    iget-object v2, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$$this$reader:Lio/ktor/utils/io/ReaderScope;

    iget-object v3, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    iget-object v4, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    iget-object v5, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$selectable:Lio/ktor/network/selector/Selectable;

    iget-object v6, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;-><init>(Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;Lio/ktor/utils/io/ReaderScope;Lio/ktor/utils/io/ByteChannel;Ljava/nio/channels/WritableByteChannel;Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectorManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public final invoke(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/LookAheadSuspendSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/utils/io/LookAheadSuspendSession;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->invoke(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 86
    iget v2, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$7:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/selector/SelectorManager;

    iget-object v7, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lio/ktor/network/selector/Selectable;

    iget-object v8, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$5:Ljava/lang/Object;

    check-cast v8, Ljava/nio/channels/WritableByteChannel;

    iget-object v9, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/util/Timeout;

    iget-object v10, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/nio/ByteBuffer;

    iget-object v12, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lio/ktor/network/util/Timeout;

    iget-object v13, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/LookAheadSuspendSession;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v1

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$6:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/selector/SelectorManager;

    iget-object v7, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lio/ktor/network/selector/Selectable;

    iget-object v8, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$4:Ljava/lang/Object;

    check-cast v8, Ljava/nio/channels/WritableByteChannel;

    iget-object v9, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    iget-object v11, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lio/ktor/network/util/Timeout;

    iget-object v12, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/LookAheadSuspendSession;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v1

    goto/16 :goto_5

    :cond_2
    iget-object v2, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/util/Timeout;

    iget-object v7, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/LookAheadSuspendSession;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    move-object v8, v1

    goto :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/LookAheadSuspendSession;

    .line 87
    iget-object v7, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->getSocketTimeout()J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_0

    :cond_4
    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_5

    .line 88
    iget-object v8, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$$this$reader:Lio/ktor/utils/io/ReaderScope;

    iget-object v7, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    invoke-virtual {v7}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->getSocketTimeout()J

    move-result-wide v10

    const/4 v12, 0x0

    new-instance v13, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1$timeout$1;

    iget-object v7, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    invoke-direct {v13, v7, v6}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1$timeout$1;-><init>(Lio/ktor/utils/io/ByteChannel;Lkotlin/coroutines/Continuation;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string/jumbo v9, "writing-direct"

    invoke-static/range {v8 .. v15}, Lio/ktor/network/util/UtilsKt;->createTimeout$default(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/network/util/Timeout;

    move-result-object v7

    goto :goto_1

    :cond_5
    move-object v7, v6

    :goto_1
    move-object v8, v1

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    :cond_6
    :goto_2
    const/4 v9, 0x0

    .line 96
    invoke-interface {v7, v9, v5}, Lio/ktor/utils/io/LookAheadSession;->request(II)Ljava/nio/ByteBuffer;

    move-result-object v9

    if-nez v9, :cond_a

    .line 99
    iput-object v7, v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    iput-object v2, v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$1:Ljava/lang/Object;

    iput-object v6, v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$2:Ljava/lang/Object;

    iput-object v6, v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$3:Ljava/lang/Object;

    iput-object v6, v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$4:Ljava/lang/Object;

    iput-object v6, v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$5:Ljava/lang/Object;

    iput-object v6, v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$6:Ljava/lang/Object;

    iput-object v6, v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$7:Ljava/lang/Object;

    iput v5, v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->label:I

    invoke-interface {v7, v5, v8}, Lio/ktor/utils/io/LookAheadSuspendSession;->awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_7

    return-object v0

    :cond_7
    :goto_3
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    .line 119
    invoke-virtual {v2}, Lio/ktor/network/util/Timeout;->finish()V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_9
    return-object v6

    .line 103
    :cond_a
    :goto_4
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 104
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 106
    iget-object v11, v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    iget-object v12, v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$selectable:Lio/ktor/network/selector/Selectable;

    iget-object v13, v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    if-nez v2, :cond_f

    move-object/from16 v16, v12

    move-object v12, v2

    move-object v2, v13

    move-object v13, v7

    move-object/from16 v7, v16

    move-object/from16 v17, v9

    move-object v9, v8

    move-object v8, v11

    move-object/from16 v11, v17

    .line 108
    :cond_b
    invoke-interface {v8, v11}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v14

    iput v14, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v14, :cond_d

    .line 110
    sget-object v14, Lio/ktor/network/selector/SelectInterest;->WRITE:Lio/ktor/network/selector/SelectInterest;

    invoke-interface {v7, v14, v5}, Lio/ktor/network/selector/Selectable;->interestOp(Lio/ktor/network/selector/SelectInterest;Z)V

    .line 111
    iput-object v13, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    iput-object v12, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$1:Ljava/lang/Object;

    iput-object v11, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$2:Ljava/lang/Object;

    iput-object v10, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$3:Ljava/lang/Object;

    iput-object v8, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$4:Ljava/lang/Object;

    iput-object v7, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$5:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$6:Ljava/lang/Object;

    iput-object v6, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$7:Ljava/lang/Object;

    iput v4, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->label:I

    invoke-interface {v2, v7, v14, v9}, Lio/ktor/network/selector/SelectorManager;->select(Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectInterest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v0, :cond_c

    return-object v0

    :cond_c
    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    :goto_5
    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    .line 113
    :cond_d
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v14

    if-eqz v14, :cond_e

    iget v14, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz v14, :cond_b

    :cond_e
    move-object v8, v9

    move-object v9, v11

    move-object v2, v12

    move-object v7, v13

    goto :goto_7

    .line 86
    :cond_f
    invoke-virtual {v2}, Lio/ktor/network/util/Timeout;->start()V

    move-object v14, v7

    move-object v7, v12

    move-object v12, v9

    move-object v9, v8

    move-object v8, v11

    move-object v11, v10

    move-object v10, v2

    move-object v2, v13

    move-object v13, v10

    .line 108
    :cond_10
    :try_start_1
    invoke-interface {v8, v12}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v15

    iput v15, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v15, :cond_11

    .line 110
    sget-object v15, Lio/ktor/network/selector/SelectInterest;->WRITE:Lio/ktor/network/selector/SelectInterest;

    invoke-interface {v7, v15, v5}, Lio/ktor/network/selector/Selectable;->interestOp(Lio/ktor/network/selector/SelectInterest;Z)V

    .line 111
    iput-object v14, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    iput-object v13, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$1:Ljava/lang/Object;

    iput-object v12, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$2:Ljava/lang/Object;

    iput-object v11, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$3:Ljava/lang/Object;

    iput-object v10, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$4:Ljava/lang/Object;

    iput-object v8, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$5:Ljava/lang/Object;

    iput-object v7, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$6:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$7:Ljava/lang/Object;

    iput v3, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->label:I

    invoke-interface {v2, v7, v15, v9}, Lio/ktor/network/selector/SelectorManager;->select(Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectInterest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v0, :cond_11

    return-object v0

    .line 113
    :cond_11
    :goto_6
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v15

    if-eqz v15, :cond_12

    iget v15, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz v15, :cond_10

    .line 114
    :cond_12
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    invoke-virtual {v10}, Lio/ktor/network/util/Timeout;->stop()V

    move-object v8, v9

    move-object v10, v11

    move-object v9, v12

    move-object v2, v13

    move-object v7, v14

    .line 116
    :goto_7
    iget v10, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v7, v10}, Lio/ktor/utils/io/LookAheadSession;->consumed(I)V

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v9, v10

    .line 90
    :goto_8
    invoke-virtual {v9}, Lio/ktor/network/util/Timeout;->stop()V

    throw v0
.end method
