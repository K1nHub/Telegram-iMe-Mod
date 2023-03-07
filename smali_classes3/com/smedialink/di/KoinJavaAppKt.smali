.class public final Lcom/smedialink/di/KoinJavaAppKt;
.super Ljava/lang/Object;
.source "KoinJavaApp.kt"


# direct methods
.method public static final start(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/smedialink/di/KoinJavaAppKt$start$1;

    invoke-direct {v0, p0}, Lcom/smedialink/di/KoinJavaAppKt$start$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/koin/core/context/DefaultContextExtKt;->startKoin(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;

    return-void
.end method
