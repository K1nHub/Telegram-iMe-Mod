.class public final Lcom/iMe/utils/base/ErrorHandler;
.super Ljava/lang/Object;
.source "ErrorHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nErrorHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ErrorHandler.kt\ncom/iMe/utils/base/ErrorHandler\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,13:1\n48#2,4:14\n*S KotlinDebug\n*F\n+ 1 ErrorHandler.kt\ncom/iMe/utils/base/ErrorHandler\n*L\n9#1:14,4\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/base/ErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/utils/base/ErrorHandler;

    invoke-direct {v0}, Lcom/iMe/utils/base/ErrorHandler;-><init>()V

    sput-object v0, Lcom/iMe/utils/base/ErrorHandler;->INSTANCE:Lcom/iMe/utils/base/ErrorHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final settings()Lorg/orbitmvi/orbit/Container$Settings;
    .locals 10

    .line 8
    new-instance v9, Lorg/orbitmvi/orbit/Container$Settings;

    .line 48
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v4, Lcom/iMe/utils/base/ErrorHandler$settings$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v4, v0}, Lcom/iMe/utils/base/ErrorHandler$settings$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    move-object v0, v9

    .line 8
    invoke-direct/range {v0 .. v8}, Lorg/orbitmvi/orbit/Container$Settings;-><init>(ILorg/orbitmvi/orbit/idling/IdlingResource;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineExceptionHandler;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method
