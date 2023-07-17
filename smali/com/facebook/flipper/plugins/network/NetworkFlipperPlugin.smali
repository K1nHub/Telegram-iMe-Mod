.class public final Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin;
.super Ljava/lang/Object;
.source "NetworkFlipperPlugin.kt"

# interfaces
.implements Lcom/facebook/flipper/core/FlipperPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin$Companion;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
