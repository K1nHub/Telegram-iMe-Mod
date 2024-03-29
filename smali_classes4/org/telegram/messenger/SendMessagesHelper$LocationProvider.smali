.class public Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SendMessagesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;,
        Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

.field private gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

.field private lastKnownLocation:Landroid/location/Location;

.field private locationManager:Landroid/location/LocationManager;

.field private locationQueryCancelRunnable:Ljava/lang/Runnable;

.field private networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;


# direct methods
.method public static synthetic $r8$lambda$UF_XFXfCoxrzj_3NU6Lp5Nkfmro(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lambda$start$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Lorg/telegram/messenger/SendMessagesHelper$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    .line 694
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Lorg/telegram/messenger/SendMessagesHelper$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V
    .locals 2

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Lorg/telegram/messenger/SendMessagesHelper$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    .line 694
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Lorg/telegram/messenger/SendMessagesHelper$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    .line 741
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V
    .locals 0

    .line 684
    invoke-direct {p0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->cleanup()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Ljava/lang/Runnable;
    .locals 0

    .line 684
    iget-object p0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 684
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;
    .locals 0

    .line 684
    iget-object p0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    return-object p0
.end method

.method private cleanup()V
    .locals 2

    .line 749
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 750
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    .line 751
    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;

    .line 752
    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$start$0()V
    .locals 2

    .line 781
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    if-eqz v0, :cond_1

    .line 782
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 783
    invoke-interface {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;->onLocationAcquired(Landroid/location/Location;)V

    goto :goto_0

    .line 785
    :cond_0
    invoke-interface {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;->onUnableLocationAcquire()V

    .line 788
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->cleanup()V

    return-void
.end method


# virtual methods
.method public setDelegate(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    return-void
.end method

.method public start()V
    .locals 7

    .line 756
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 757
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 760
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 762
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 765
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "network"

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 767
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 770
    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 772
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 775
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 777
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 778
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 780
    :cond_2
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    .line 790
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 794
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 798
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 801
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->cleanup()V

    return-void
.end method
