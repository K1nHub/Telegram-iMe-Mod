.class final Lcom/smedialink/manager/common/MediaEditManager$imageUpdater$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaEditManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/common/MediaEditManager;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/Components/ImageUpdater;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/manager/common/MediaEditManager$imageUpdater$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/manager/common/MediaEditManager$imageUpdater$2;

    invoke-direct {v0}, Lcom/smedialink/manager/common/MediaEditManager$imageUpdater$2;-><init>()V

    sput-object v0, Lcom/smedialink/manager/common/MediaEditManager$imageUpdater$2;->INSTANCE:Lcom/smedialink/manager/common/MediaEditManager$imageUpdater$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/smedialink/manager/common/MediaEditManager$imageUpdater$2;->invoke()Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/Components/ImageUpdater;
    .locals 3

    .line 35
    new-instance v0, Lorg/telegram/ui/Components/ImageUpdater;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/ui/Components/ImageUpdater;-><init>(ZIZ)V

    return-object v0
.end method
