.class public final Lcom/facebook/flipper/plugins/sharedpreferences/SharedPreferencesFlipperPlugin;
.super Ljava/lang/Object;
.source "SharedPreferencesFlipperPlugin.kt"

# interfaces
.implements Lcom/facebook/flipper/core/FlipperPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/flipper/plugins/sharedpreferences/SharedPreferencesFlipperPlugin$Companion;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/flipper/plugins/sharedpreferences/SharedPreferencesFlipperPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/flipper/plugins/sharedpreferences/SharedPreferencesFlipperPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
