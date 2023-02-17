.class public final Lcom/facebook/flipper/plugins/inspector/InspectorFlipperPlugin;
.super Ljava/lang/Object;
.source "InspectorFlipperPlugin.kt"

# interfaces
.implements Lcom/facebook/flipper/core/FlipperPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/flipper/plugins/inspector/DescriptorMapping;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "descriptorMapping"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
