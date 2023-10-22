.class public final Lorg/koin/core/extension/ExtensionManager;
.super Ljava/lang/Object;
.source "ExtensionManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtensionManager.kt\norg/koin/core/extension/ExtensionManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n36#1:47\n1855#2,2:48\n*S KotlinDebug\n*F\n+ 1 ExtensionManager.kt\norg/koin/core/extension/ExtensionManager\n*L\n34#1:47\n44#1:48,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lorg/koin/core/Koin;)V
    .locals 1

    const-string v0, "_koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-void
.end method
