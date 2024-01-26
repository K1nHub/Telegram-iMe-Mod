.class public final synthetic Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$$ExternalSyntheticLambda0;->f$0:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$$ExternalSyntheticLambda0;->f$0:Landroidx/core/util/Consumer;

    invoke-static {v0, p1}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;->$r8$lambda$AeJDazd2_Epl7A_4Bw44w5O3E3w(Landroidx/core/util/Consumer;Lcom/google/android/gms/maps/GoogleMap;)V

    return-void
.end method
