.class Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$1;
.super Ljava/lang/Object;
.source "GoogleMapsProvider.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;

.field final synthetic val$callback:Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$1;->this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;

    iput-object p2, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$1;->val$callback:Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$1;->val$callback:Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;->onCancel()V

    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$1;->val$callback:Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;->onFinish()V

    return-void
.end method
