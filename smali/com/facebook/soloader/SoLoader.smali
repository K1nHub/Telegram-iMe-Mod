.class public final Lcom/facebook/soloader/SoLoader;
.super Ljava/lang/Object;
.source "SoLoader.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/soloader/SoLoader;

    invoke-direct {v0}, Lcom/facebook/soloader/SoLoader;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final init(Landroid/content/Context;Z)V
    .locals 0

    const-string p1, "context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
