.class public final Lcom/facebook/soloader/SoLoader;
.super Ljava/lang/Object;
.source "SoLoader.kt"


# static fields
.field public static final INSTANCE:Lcom/facebook/soloader/SoLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/soloader/SoLoader;

    invoke-direct {v0}, Lcom/facebook/soloader/SoLoader;-><init>()V

    sput-object v0, Lcom/facebook/soloader/SoLoader;->INSTANCE:Lcom/facebook/soloader/SoLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Landroid/content/Context;Z)V
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
