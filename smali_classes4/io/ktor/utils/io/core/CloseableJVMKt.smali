.class public final Lio/ktor/utils/io/core/CloseableJVMKt;
.super Ljava/lang/Object;
.source "CloseableJVM.kt"


# static fields
.field private static final AddSuppressedMethod$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    sget-object v0, Lio/ktor/utils/io/core/CloseableJVMKt$AddSuppressedMethod$2;->INSTANCE:Lio/ktor/utils/io/core/CloseableJVMKt$AddSuppressedMethod$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/core/CloseableJVMKt;->AddSuppressedMethod$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final addSuppressedInternal(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lio/ktor/utils/io/core/CloseableJVMKt;->getAddSuppressedMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final getAddSuppressedMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 12
    sget-object v0, Lio/ktor/utils/io/core/CloseableJVMKt;->AddSuppressedMethod$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method
