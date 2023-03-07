.class public final Lcom/smedialink/common/AppRxEvents$BinanceAuthHandled;
.super Lcom/smedialink/common/AppRxEvents;
.source "AppRxEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/common/AppRxEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BinanceAuthHandled"
.end annotation


# instance fields
.field private final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lcom/smedialink/common/AppRxEvents;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/smedialink/common/AppRxEvents$BinanceAuthHandled;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/smedialink/common/AppRxEvents$BinanceAuthHandled;->intent:Landroid/content/Intent;

    return-object v0
.end method
