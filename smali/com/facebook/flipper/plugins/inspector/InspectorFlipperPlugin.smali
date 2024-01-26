.class public final Lcom/facebook/flipper/plugins/inspector/InspectorFlipperPlugin;
.super Ljava/lang/Object;
.source "InspectorFlipperPlugin.kt"

# interfaces
.implements Lcom/facebook/flipper/core/FlipperPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/flipper/plugins/inspector/InspectorFlipperPlugin$Companion;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/flipper/plugins/inspector/InspectorFlipperPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/flipper/plugins/inspector/InspectorFlipperPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

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
