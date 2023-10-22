.class final Lcom/iMe/storage/data/manager/FlipperManager$networkFlipperPlugin$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FlipperManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/manager/FlipperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/manager/FlipperManager$networkFlipperPlugin$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/manager/FlipperManager$networkFlipperPlugin$2;

    invoke-direct {v0}, Lcom/iMe/storage/data/manager/FlipperManager$networkFlipperPlugin$2;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/manager/FlipperManager$networkFlipperPlugin$2;->INSTANCE:Lcom/iMe/storage/data/manager/FlipperManager$networkFlipperPlugin$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin;
    .locals 1

    .line 18
    new-instance v0, Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin;

    invoke-direct {v0}, Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/FlipperManager$networkFlipperPlugin$2;->invoke()Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin;

    move-result-object v0

    return-object v0
.end method
