.class public final Lorg/telegram/messenger/GoogleMapsProvider$GoogleLatLngBounds;
.super Ljava/lang/Object;
.source "GoogleMapsProvider.java"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/GoogleMapsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoogleLatLngBounds"
.end annotation


# instance fields
.field private bounds:Lcom/google/android/gms/maps/model/LatLngBounds;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 0

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleLatLngBounds;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/maps/model/LatLngBounds;Lorg/telegram/messenger/GoogleMapsProvider$1;)V
    .locals 0

    .line 515
    invoke-direct {p0, p1}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleLatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/GoogleMapsProvider$GoogleLatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 0

    .line 515
    iget-object p0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleLatLngBounds;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method


# virtual methods
.method public getCenter()Lorg/telegram/messenger/IMapsProvider$LatLng;
    .locals 6

    .line 524
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleLatLngBounds;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 525
    new-instance v1, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    return-object v1
.end method
