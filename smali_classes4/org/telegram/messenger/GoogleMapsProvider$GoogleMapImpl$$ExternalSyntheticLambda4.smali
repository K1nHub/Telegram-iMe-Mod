.class public final synthetic Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;

.field public final synthetic f$1:Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;

    iput-object p2, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;

    return-void
.end method


# virtual methods
.method public final onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;

    iget-object v1, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;->$r8$lambda$CidjP4t8NDYwkMV8my5V2XFyPXA(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;Lcom/google/android/gms/maps/model/Marker;)Z

    move-result p1

    return p1
.end method
